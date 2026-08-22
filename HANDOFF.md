# HANDOFF.md — Person A → Person B (Block 3)

Your job: **plots 1-4 + `sanity`** from the Test A/B data, then your **Test C/D** + **R4**. Data + tooling are committed; read this before touching anything.

## What exists (all pushed to `main`)

| Artifact | Where | Status |
|---|---|---|
| Test A (continuous ramp, mix, U_MAX=12) | `data/raw/testA/run_1..5/` | **N=5 complete**, every run scale-out 1→2 + scale-in 2→1, `interrupted=0` |
| Test B (fixed intensity, mix, STEADY_MIN=6) | `data/raw/testB/run_1..24/` | Levels 10/20/30/40 = **5 runs each**; **level 50 = N=3** (runs 21-23; 24-25 lost to lab teardown) |
| Collector | each run: `toppods.csv`, `replicas.csv`, `hpa.csv`, `events.csv`, `locust_stats.csv`, `locust_failures.csv`, `notes.md` | complete (`notes.md` has level, ts, params, `interrupted`) |

Per-run metadata (level, params) is in each `notes.md`. **Trust `notes.md`, not the run number**, for level mapping.

## ⚠️ Watch out for (learned the hard way)

1. **`SIZE` env is import-time, default `mix`.** Your `exp-c` MUST set `SIZE=small|medium|large` per run or you silently get mix → wrong Test C data. `SIZE=` (empty) also falls back to mix now.
2. **Uneven N.** Test B level 50 has 3 runs, not 5. Average per level over whatever exists; flag the deviation in the report (commit `0422100` has details).
3. **Stray `run_24` in testB** is a **level-10** run (resume-retry bug), not level 50. Don't let it pollute level-50 averaging.
4. **Mix is random per request** (0.5/0.3/0.2). Plots from Test A/B are aggregate-mix; can't split by size. Don't assume fixed ratios per run.
5. **Error rates are real saturation data** (503/502/504). They rise with intensity: Test B level 40-50 runs show ~20-86% errors. Report them; don't "fix" them.
6. **Git ignore**: `data/raw/` is gitignored except `.gitkeep`. Commit data with `git add -f data/raw/...`. Your `plots/` + `tables/` are also gitignored → same `-f` for the report.
7. **Collector junk** `.collect.log/.collect.pid` must NOT be committed (gitignored).
8. **`--parallel 2` on llama-server** is a deploy change (avoided the 503 storm at single-slot). Keep it for Test C.
9. **`just plots`/`sanity` are yours to build** (offline, test against synthetic fixtures). Data layout + formulas in `Plans/Block3.md`; per-run CSVs are `locust_stats.csv`/`locust_failures.csv` (not `_requests.csv` — locust 2.46).

## Commands that work

```
just exp-c / exp-d / loadgen-up / plots / sanity   # yours (B-owned; some not built yet)
just exp-a / exp-b / collect / collect-stop        # mine, for reference
```

**Your session flow:** `cluster-up` (or continue mine) → deploy → `LOADGEN=<user>@<host> TARGET=http://<master>:30080 just exp-c` → commit with `git add -f` → `cluster-down`.

`exp-*` scripts support multi-session resume via `RUN_START` (position in the run grid). For `exp-b`, `RUNS` is **per-level runs** (default 5), NOT the total grid — set `RUNS=5`, not 25, on resume.

## Read first

- `Plans/Block3-WORKSPLIT.md` (role split + data layout)
- `Plans/Block3-a.md` (rehearsal lessons + AWS runbook + results)
- `Plans/Block3.md` (metrics, formulas, sanity checks)
- `Plans/PLAN.md` + `Plans/RESOCONTO.md` (status, decisions)

## Session reality

- Learner Lab ~2h/session, creds region-scoped (recent sessions were us-west-2, default in `00-env.sh` is us-east-1 — launch with `REGION=us-west-2 AZ1=us-west-2a AZ2=us-west-2b`). Keypair `vockey` may need importing per region (docs in `BLOCK1-SETUP.md`). Always `just cluster-down`; `REGION` is persisted in `.cluster-ips` so teardown targets the right region.
- Load-gen node must run locust inside AWS (`LOADGEN`); exp scripts refuse a remote `TARGET` without it.
