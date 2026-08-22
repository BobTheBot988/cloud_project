# HANDOFF.md — Person A → Person B (Block 3)

Your job: **plots 1-4 + `sanity`** from the Test A/B data, then your **Test C/D** + **R4**. Data + tooling are committed; read this before touching anything.

## What exists (all pushed to `main`)

| Artifact | Where | Status |
|---|---|---|
| Test A (continuous ramp, mix, U_MAX=12) | `data/raw/testA/run_1..5/` | **N=5 complete**, every run scale-out 1→2 + scale-in 2→1, `interrupted=0` |
| Test B (fixed intensity, mix, STEADY_MIN=6) | `data/raw/testB/run_1..25/` | **All levels 10/20/30/40/50 = 5 runs each (N=5, 25 runs total)**; stray level-10 `run_24` removed |
| Collector | each run: `toppods.csv`, `replicas.csv`, `hpa.csv`, `events.csv`, `locust_stats.csv`, `locust_failures.csv`, `notes.md` | complete (`notes.md` has level, ts, params, `interrupted`) |

Per-run metadata (level, params) is in each `notes.md`. **Trust `notes.md`, not the run number**, for level mapping.

## What the tests measure + results

**Test A — elasticity (continuous ramp).** Purpose: prove the HPA actually autoscales — scale **out 1→2** when CPU crosses the 60% target under growing load, hold 2 pods under sustained load, and scale **back 2→1** after load drops (≥10 min idle drain). Workload: mix (small/medium/large), U_MAX=12 users.

**Test B — load-capacity curve.** Purpose: for each fixed intensity level (10/20/30/40/50 users, mix workload, 6-min steady) measure how throughput, latency (p50/p95), pod count and error rate behave — locate the saturation point of the 2-pod deployment.

**Results (verified from `data/raw/`):**

| | Test A (N=5) | Test B (25 runs) |
|---|---|---|
| Requests | 1142 | 1776 |
| Failures | 89 (**7.8%**, 0-13% per run) | 617 (**34.7%** overall) |
| Scale evidence | **1→2→1 in every run** (`replicas.csv`); `SuccessfulRescale` events in runs 2-5 (run 1 lost its `events.csv` to an ssh hang) | 2 pods steady at all levels ≥10 users — HPA scales, then caps at `maxReplicas 2` |
| Latency | avg 35-49s, p95 72-90s | avg 30-271s; **p95 pinned at 300s** (the proxy request timeout) under heavy load |
| Errors by level | — | 10u: 0-35% (run_1 outlier 91%) · 20u: 0-55% · 30u: 0-34% · 40u: 29-68% · **50u: 5-75%** |
| Failure types | — | 503 busy=254 · 504 timeout=231 · 502=132 |

**Takeaway:** error rate generally rises with intensity but is noisy per run; at 40-50 users it is high (level 50 avg ~39%, p95 at the 300s timeout) — **compute saturation at max 2 pods**. The 503s = llama-server busy (slots exhausted), 504s = requests exceeding the 300s gen timeout under queueing. Report these as real results, don't hide them.

Also note the **mix workload is random per request** (0.5/0.3/0.2) — Test A/B data is aggregate-mix, can't be split by size; per-size delay comes from the variant runs' `requests_detail.csv`.

## ⚠️ Watch out for (learned the hard way)

1. **`SIZE` env is import-time, default `mix`.** Your `exp-c` MUST set `SIZE=small|medium|large` per run or you silently get mix → wrong Test C data. `SIZE=` (empty) also falls back to mix now.
2. **Error rates are real saturation data** (503/502/504). They rise with intensity: Test B level 40-50 runs show high error rates. Report them; don't "fix" them.
3. **Git ignore**: `data/raw/` is gitignored except `.gitkeep`. Commit data with `git add -f data/raw/...`. Your `plots/` + `tables/` are also gitignored → same `-f` for the report.
4. **Collector junk** `.collect.log/.collect.pid` must NOT be committed (gitignored).
5. **`--parallel 2` on llama-server** is a deploy change (avoided the 503 storm at single-slot). Keep it for Test C.
6. **`just plots`/`sanity` are yours to build** (offline, test against synthetic fixtures). Data layout + formulas in `Plans/Block3.md`; per-run CSVs are `locust_stats.csv`/`locust_failures.csv` (not `_requests.csv` — locust 2.46). `plots/analyze.py` already exists for the variant work — extend it, don't fork it.
7. **Delay split** (`requests_detail.csv`, per-request): `total_ms` (locust) vs `upstream_ms` (proxy→llama header) → orchestrator+transport = total − upstream. Only successful (2xx) rows count; failures/timeouts are excluded so they don't misattribute to orchestrator.

## Commands that work

```
just exp-c / exp-d / loadgen-up / plots / sanity   # yours (B-owned; some not built yet)
just exp-a / exp-b / collect / collect-stop        # mine, for reference
```

**Your session flow:** `cluster-up` (or continue mine) → deploy → `LOADGEN=<user>@<host> TARGET=http://<master>:30080 just exp-c` → commit with `git add -f` → `cluster-down`.

`exp-*` scripts support multi-session resume via `RUN_START` (position in the run grid). For `exp-b`, `RUNS` is **per-level runs** (default 5), NOT the total grid — set `RUNS=5`, not 25, on resume.

## Variants exp4 / exp6 (new work — you'll run these)

Two variant clusters proving scaling beyond 2 pods + fine-grained delay attribution:
- **exp4** (`WORKERS=4`, HPA max 4) / **exp6** (`WORKERS=6`, HPA max 6, at the 8-instance cap). 5 levels × **N=20** each, `STEADY_MIN=2`.
- **Delay split** in `requests_detail.csv` per request: `total_ms` (locust) vs `upstream_ms` (proxy→llama header) → `orchestrator+transport = total − upstream`. Analyzed per level AND per size class.
- **Availability** = `1 − ErrorRate`; failure attribution: 503=llama busy, 504=llama timeout, 502=proxy↔llama, edge-refused=orchestrator.
- Commands: `WORKERS=4|6 just exp4-up/exp6-up` → deploy with `deploy/hpa-exp4|6.yaml` → `SCENARIO=exp4|exp6 RUNS=20 STEADY_MIN=2 LOADGEN=... TARGET=... just exp4/exp6`. Resume with `RUN_START`. Analysis: `just plots` → `artifacts/`.
- **Prereq:** the proxy timing image (`X-Upstream-Ms`) must be pushed to GHCR — push was flaky last session; verify before running.

## Read first

- `Plans/Block3-WORKSPLIT.md` (role split + data layout)
- `Plans/Block3-a.md` (rehearsal lessons + AWS runbook + results)
- `Plans/Block3.md` (metrics, formulas, sanity checks)
- `Plans/PLAN.md` + `Plans/RESOCONTO.md` (status, decisions)

## Session reality

- Learner Lab ~2h/session, creds region-scoped (recent sessions were us-west-2, default in `00-env.sh` is us-east-1 — launch with `REGION=us-west-2 AZ1=us-west-2a AZ2=us-west-2b`). Keypair `vockey` may need importing per region (docs in `BLOCK1-SETUP.md`). Always `just cluster-down`; `REGION` is persisted in `.cluster-ips` so teardown targets the right region.
- Load-gen node must run locust inside AWS (`LOADGEN`); exp scripts refuse a remote `TARGET` without it.
