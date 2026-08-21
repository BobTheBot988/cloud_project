# Block 3 — Two-person parallel work split

Status: planning aid. Companion to `Plans/Block3.md` (the source of truth for metrics, formulas, and procedure). This file only decides **who does what, when, and how the two people stay in parallel without stepping on each other**.

## The one hard constraint

There is **one** AWS cluster and **one** in-AWS load-gen node at a time. Two people hammering it simultaneously would corrupt each other's data and double the ban risk. So:

- **Cluster sessions are serial** — one person operates, the other does not touch the cluster.
- **Parallelism comes from the offline half of the work** — prep, data processing, plots, cost analysis, report sections. This is where the two people genuinely work in parallel.

Every phase below pairs a *cluster operator* with an *offline worker*.

## Roles and ownership

| | **Person A — "Scaling & intensity"** | **Person B — "Size & cost"** |
| --- | --- | --- |
| AWS tests owned | **Test A** (continuous ramp, PRIMARY), **Test B** (load–capacity curve) | **Test C** (request-size small/medium/large, PRIMARY), **Test D** (bursty, optional) + **Test E** (availability, optional) |
| Required plots owned | 1 (elasticity), 2 (pods vs req/s), 3 (p50/p95 vs req/s), 4 (offered vs received) | 5 (size bars/table), 7 (burst), 8 (availability) + R3 summary table |
| Report sections owned | Purpose/scope, experimental design, results Test A + Test B, bottleneck localisation | Tool justification, environment, results Test C + Test D/E, common-mistakes sanity report, **R4 cost + Lambda comparison + R1 justification** |
| Shared infra owned | `locustfile.py` (size buckets + mix), just recipes `exp-a`, `exp-b`, `collect` | just recipes `loadgen-up`, `exp-c`, `exp-d`, `plots`, `sanity`; data layout |
| AWS session operator | Sessions 1 (Test A) and 2 (Test B) | Sessions 3 (Test C) and 4 (optional Test D/E) |

Each person owns exactly **one PRIMARY test** and does **two cluster sessions**; the workloads are balanced in total hours (see *Fairness* below).

## Data layout (agreed before anything else)

Both people commit/pull raw data through this layout so processing "just works" with `just plots`:

```
data/raw/<scenario>/<run_i>/
  locust_stats.csv      locust_failures.csv      # Locust CSVs
  toppods.csv           replicas.csv             # collector output
  hpa.csv               events.csv               # kubectl get events
  notes.md                                      # run metadata: start/stop ts, U_max, size mix
data/processed/<scenario>/<run_i>_avg.csv        # per-timestamp avg across runs
plots/                                          # final figures (PNG)
tables/                                         # R3 tables (CSV)
```

Rule: the session operator commits `data/raw/` **at the end of their own session** (before teardown), the other person pulls and processes — note `data/raw/*` is gitignored except `.gitkeep`, so commit with `git add -f data/raw/` (or `git add -f data/raw/<scenario>/`). Never overwrite another person's processed data — each owns their scenario's `processed/` output.

## Timeline — the relay

Each phase has one operator (on cluster) and one offline worker (processing/authoring in parallel).

### Phase 0 — Parallel prep (offline, no AWS)
| Person A | Person B |
| --- | --- |
| Extend `locustfile.py`: small/medium/large prompt buckets + `mix` pool (P(s)=0.5, P(m)=0.3, P(l)=0.2), max_tokens per bucket (≈32/128/256) | Build `just plots` pipeline: per-timestamp average across runs (`Value_avgAcrossRuns(t)`), steady-window collapse (`Value_steady_i`), error-bar std-dev |
| Add just recipes `exp-a`, `exp-b`, `collect` (collector loop from Block3 §Per-run procedure) | Add `sanity` checks: non-constant series, `ReceivedLoad/OfferedLoad ≥ 0.95`, common time base. Develop + test against **synthetic CSV fixtures** so it works before real data exists |
| Local smoke: compose up + `just test-prompt` for each size bucket | R4 cost template: EC2 6-month line items (1× t3.small + 2× t3.medium + EBS + load-gen) + Lambda per-invocation model — prices filled now, invocation counts filled after Test B |
| | Add just recipes `loadgen-up`, `exp-c`, `exp-d` |

### Session 1 — Operator **A**: Test A (ramp, N ≥ 5 runs, ≥15 min each)
Offline worker **B**: finalises `just plots` against fixtures; drafts report §"Experimental design + environment" (shared template for both).

Handoff → A commits `data/raw/testA/`.

### Session 2 — Operator **A**: Test B (5 intensity levels × N runs)
Offline worker **B**: processes Test A → **plot 1** (replicas + CPU% vs time, 60% target line), records **scale-out latency** (CPU crosses 60% → 1→2) and **scale-in latency** (load → 0 → 2→1), runs `sanity`.

Handoff → A commits `data/raw/testB/`.

### Session 3 — Operator **B**: Test C (3 sizes × N runs)
Offline worker **A**: processes Test B → **plots 2, 3, 4** (pods / p50-p95 / throughput vs intensity, 45° offered-received line), runs `sanity`.

Handoff → B commits `data/raw/testC/`.

### Session 4 — Operator **B** (optional, budget permitting): Test D (+ E if the group wants availability)
Offline worker **A**: builds **plot 6** (OfferedLoad/ReceivedLoad/Throughput overlay — bottleneck localisation) from the session data it has; starts the **R3 summary table** (scenario × {throughput, p50, p95, error rate, max pods}).

Handoff → B commits `data/raw/testD/`.

### Phase 5 — Parallel writing + final merge
| Person A | Person B |
| --- | --- |
| Test A + Test B results sections; bottleneck localisation (P1/P2/P3 diagnosis per Block3 rules); plots 1–4 final pass | Test C (+D/E) results sections; summary table; R4 cost table + Lambda comparison + R1 justification; common-mistakes sanity report |

**Joint** (both, short): merge into one report, unify figure/table numbering, add group member names + the explicit "**Option 3 deployed on K8s/EC2 (not Lambda)**" statement, prepare the 15-min presentation.

## Fairness

Rough hour estimates (shareable, adjust after Phase 0):

| Effort | Person A | Person B |
| --- | --- | --- |
| Prep (offline) | ~2h (locust + recipes + smoke) | ~3h (plots pipeline + sanity + R4 template) |
| AWS sessions | ~5h (A: 2h + B: 3h) | ~3h (C: 2h + D/E: 1h) |
| Processing / plots | ~2.5h | ~2h |
| R4 / sanity / report | report sections ~2h | R4 + sanity + report ~3h |
| **Total** | **~11.5h** | **~11h** |

Rebalance levers if one person runs long: swap Test D (A runs it) ↔ Test B level-5 repetition; or A takes the R3 summary table while B drops optional Test E.

## Rules to avoid interference

1. **One cluster operator at a time.** The non-operator never runs `kubectl`/Locust against the live cluster while a run is in progress.
2. **No load before/after the run window** — collector on, run, collector off, pull CSVs, commit, teardown. Nobody reuses the cluster for their own test until the previous operator has committed and run `just cluster-down`.
3. `just cluster-down` at the end of every session, even mid-campaign — budget rule, not optional.
4. Shared files (`locustfile.py`, `justfile`) are edited only by their owner; the other person reviews but does not commit to them.
5. Never strengthen/weaken `infra/` quota guards; the 8-instance / 31-vCPU / ≤medium caps include the load-gen node (it counts against the cap).
6. Both use the same wall-clock base (collector ts in epoch seconds); runs aligned on *seconds-since-load-start* when averaging.

## Verify (done criteria) — split

| Who | Checks |
| --- | --- |
| **A** | Plot 1 shows scale-out **1→2 AND scale-in 2→1** on one averaged plot · plots 2–4 done (pods, p50/p95, throughput vs intensity) · bottleneck localised (offered/received/served compared across P1/P2/P3) · scale-out/in latencies reported |
| **B** | Plot 5 done: small vs medium vs large impact on latency/CPU/scaling (Option 3 requirement) · plots 7/8 if D/E ran · **R4**: 6-month cost + Lambda comparison table · common-mistakes sanity pass reported (no dead panels, `ReceivedLoad ≈ OfferedLoad`, one time base, all scenarios ≥5 runs averaged) |
| **Both** | All figures backed by tables · error rate/availability reported · account clean after every session (`just cluster-down`) |
| **Joint** | Short report drafted (design + results + member names) · Option-3-on-K8s/EC2 statement · 15-min presentation |
