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
just exp-c / exp-d / loadgen-up / plots / sanity   # yours (B-owned; exp-c is PRE-BUILT, run `just exp-c`)
just exp-a / exp-b / collect / collect-stop        # mine, for reference
```

**Your session flow:** `cluster-up` (or continue mine) → deploy → `LOADGEN=<user>@<host> TARGET=http://<master>:30080 just exp-c` → commit with `git add -f` → `cluster-down`.

**Test C (exp-c, PRE-BUILT):** runs the same-size sweep per class — `data/raw/testC_{small,medium,large}/run_<i>/`. This gives isolated per-size delay (no cross-size interference: a small request slows ~2× locally / ~4× at 50 users when mixed with large ones — that gap is exactly what Test C removes). Resume a single size: `SCENARIO=testC_<size> RUN_START=N bash infra/exp-b.sh`. Recommend `RUNS=20 STEADY_MIN=2` like the variants; ~1 AWS session per size at that N.

`exp-*` scripts support multi-session resume via `RUN_START` (position in the run grid). For `exp-b`, `RUNS` is **per-level runs** (default 5), NOT the total grid — set `RUNS=5`, not 25, on resume.

## Variants exp4 / exp6 (CAMPAIGN COMPLETE — data + artifacts committed)

Two variant clusters proving scaling beyond 2 pods + fine-grained delay attribution. **All data collected** (3 AWS sessions):
- **exp4** (HPA max 4, N=20/level): `data/raw/exp4/run_1..100` — 4-27% errors, p95 51-101s, availability 0.73-0.96.
- **exp6** (HPA max 6, N=20/level): `data/raw/exp6/run_1..100` — 0-24% errors, p95 30-98s, availability 0.76-1.0, hit 6 pods (86% CPU). Level 50 served 7× exp4's requests (1299 vs 178) — processes the queue instead of dropping.
- **Delay split** in `requests_detail.csv`: orchestrator+transport ≈ **11ms**; llama decode dominates (~40s). **Bottleneck = llama (container), not proxy/orchestrator.**
- `just plots` → `plots/analyze.py` → `artifacts/` (capacity/p95/error/availability + delay breakdown + per-size; exp2 shown as baseline but has NO per-request detail — pre-timing capture).
- Report flags: exp6 level-20 sparse (~5 reqs/run); exp4 level-50 ceiling (178 reqs, 26% err); exp2 level-40 error spike (56%); exp2 level-50 run_1 outlier (91%).

## Read first

- `Plans/Block3-WORKSPLIT.md` (role split + data layout)
- `Plans/Block3-a.md` (rehearsal lessons + AWS runbook + results)
- `Plans/Block3.md` (metrics, formulas, sanity checks)
- `Plans/PLAN.md` + `Plans/RESOCONTO.md` (status, decisions)

## Session reality

- Learner Lab ~2h/session, creds region-scoped (recent sessions were us-west-2, default in `00-env.sh` is us-east-1 — launch with `REGION=us-west-2 AZ1=us-west-2a AZ2=us-west-2b`). Keypair `vockey` may need importing per region (docs in `BLOCK1-SETUP.md`). Always `just cluster-down`; `REGION` is persisted in `.cluster-ips` so teardown targets the right region.
- Load-gen node must run locust inside AWS (`LOADGEN`); exp scripts refuse a remote `TARGET` without it.
