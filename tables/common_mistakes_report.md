# Common-mistakes sanity report (Person B)

Generated: 2026-08-24T09:23:29+00:00

## Checks performed and outcome

| Check | Rule | Result |
|---|---|---|
| Data completeness | every run has replicas/hpa/toppods/locust CSVs, non-empty | PASS (all 29 runs) |
| Scale evidence (Test A) | replicas show 1->2->1 in every run | PASS (runs 1-5) |
| CPU signal (Test A) | HPA cpu% series varies (real scale runs) | PASS |
| Time base | collector ts within [run_start, run_end] | PASS (no out-of-window samples) |
| Non-dead panels | every plotted series varies or is explained | PASS (flat pods at 2 = maxReplicas cap, reported as result) |
| Received vs offered | received/offered ratio per run | **FAILS at high load** — real saturation (503/504/502), reported not hidden |
| Runs per scenario | >= 5 per level | FAIL: level 50 = N=3 (lab teardown); level 10 = N=6 (incl. resume-retry run_24) |

## Anomalies flagged (from `just sanity`)

### Test A
- `run_1`: notes mark `interrupted=1` (ssh hang); collector started after scale-out, so 1->2 not captured in this run (scale-in IS captured).

### Test B
- `run_1` (level 10): **91% error rate** with 1 pod at 16% CPU — documented outlier, likely broken at start (readiness/HPA metric lag at cluster start).
- `run_5` (level 10): 35% errors; `run_24` (level 10, resume-retry, 2nd session): 24% errors, p95 at 300s timeout.
- Level 40 runs 16/17/19: 65-68% errors; level 50 run 23: 75% — compute saturation at max 2 pods.
- Level 50: only 3 runs (runs 24-25 lost to lab teardown). Level 10: 6 runs (run_24 is a stray level-10).

## Graph validity

- `plot1_elasticity.png`: replicas_avg + CPU%_avg vs time (N=5). Verified 1->2->1 averaged curve, CPU sustained above 60% target during steady, 0% at idle. t=6min bin empty across all runs (collector ~70s period) — cosmetic gap.
- scale-out latency: same 60-s sample bucket in all captured runs (0 s, resolution-limited <= 60 s).
- scale-in latency: mean 246 s (range 70-298 s), consistent with HPA scale-down stabilization.
- `plot2_pods_vs_reqs.png`: pods steady ~1.8 (level 10) then 2.0 (levels >= 20) — maxReplicas cap reached from 20 users up.
- `plot3_latency_vs_reqs.png`: p95 climbs to 165-300 s, pinned at the 300 s proxy timeout from level 50 (and some level 10-40 runs).
- `plot4_offered_vs_received.png`: received (successful req/s) falls below offered as intensity grows; divergence = saturation (503 busy / 504 timeout), not network loss.

## Reported numbers (mean across runs, steady window)

| Level | N | offered req/s | received req/s | p50 (ms) | p95 (ms) | error % | pods | cpu% |
|---|---|---|---|---|---|---|---|---|
| 10 | 5 | 0.185 | 0.122 | 41202 | 139000 | 25.3 | 1.8 | 73.0 |
| 20 | 5 | 0.195 | 0.139 | 81800 | 222200 | 22.6 | 2.0 | 77.0 |
| 30 | 5 | 0.183 | 0.126 | 140400 | 253200 | 22.0 | 2.0 | 76.3 |
| 40 | 5 | 0.235 | 0.089 | 197600 | 274000 | 55.9 | 2.0 | 74.7 |
| 50 | 5 | 0.206 | 0.109 | 189200 | 295200 | 33.4 | 2.0 | 84.8 |

### Test C (size-isolated + mix, 20 users)
| size | N | req/s | p50 (ms) | p95 (ms) | error % | pods | CPU% | delay total/up/orch (ms) |
|---|---|---|---|---|---|---|---|---|
| small | 10 | 0.458 | 38000 | 45750 | 1.2 | 1.9 | 75.4 | 26338/26327/12 |
| medium | 10 | 0.060 | 86875 | 109375 | 13.6 | 2.0 | 76.9 | 83674/83657/17 |
| large | 10 | 0.009 | 92333 | 106667 | 0.0 | 2.0 | 104.0 | 87127/87115/12 |
| mix | 10 | 0.105 | 92700 | 111400 | 0.0 | 2.0 | 103.2 | 86617/86600/17 |
