# Block 3 — Experimental campaign + report (performance & scalability)

Status: TODO. Blocks 0–2 done (local stack, cluster tooling, deploy + HPA scale-out proven live on AWS 2026-08-17). This block turns the working deployment into the **measured, plotted, reported** performance & scalability study the assignment grades.

> **Project = Option 3 (AI-based application).** The app under test is an AI-based inference service (Qwen3.5-0.8B via llama.cpp behind a FastAPI proxy) — satisfying Option 3's *"deploy an AI-based application at your choice and evaluate its performance and scalability under different workload conditions"*. It is **not** in the AWS "Artificial Intelligence" service category (self-hosted open model), so the restriction on line 23 is respected.
>
> ⚠️ **One thing to settle with the group/instructor before writing the report.** Option 3 as written says *"on AWS Lambda"*, but this deployment runs the AI app on a **Kubernetes cluster on EC2 (kubeadm, HPA)** — i.e. Option-4 infrastructure. If the instructor requires Lambda for Option 3, this stack won't qualify as-is. Recommended framing: present it as **"Project Option 3 (AI-based application), deployed on a self-managed Kubernetes/EC2 cluster with HPA autoscaling instead of Lambda"**, and state that choice explicitly (Recommendation R1 lets you pick analogous services / justify the design). The experiments below are written for that framing.

## Goal

Run a small, budget-safe experimental campaign and produce the **plots + tables** that prove performance and scalability under different workload conditions, then package it into the short report. No new infra features — this is measurement, not building. Budget-frugal: instances TERMINATED at every session end (`just cluster-down`).

## What the assignment actually requires (checklist)

From `Assignment: Course Project` + `Performance_evaluation.pdf`, the report is graded on:

- [ ] **Purpose & scope stated** — assess if/how the AI inference service scales under different workload conditions; perspective (client + server side).
- [ ] **Features/aspects under analysis identified** — the AI inference pod (proxy + llama sidecar); assume auth/data-store/front-end are not the bottleneck.
- [ ] **Performance metrics chosen** — system-oriented (throughput, resource utilization, scalability, availability) + user-oriented (response time, successful requests, error rate). Option 3's own guidance (assignment line 27) asks for **concurrency, number of invocations/requests, and duration** across **small / medium / large request sizes and a mix**, for **different numbers of concurrent users** — mapped to the tests below.
- [ ] **Tool selected + justified** — Locust (already in repo), with a prompt-size pool for small/medium/large requests.
- [ ] **Experiments designed** — request-size mix, concurrency levels, workload shape, duration, #repetitions.
- [ ] **Experimental environment set up** — load generator **inside the AWS perimeter** (avoid ban), CloudWatch/metrics collection configured.
- [ ] **Experiments run** — datapoints collected, **averaged over repetitions**, plotted.
- [ ] **Scale-out AND scale-in both shown** (elasticity of the deployment).
- [ ] **R3** — results as **plots and tables** from CloudWatch / monitoring tools.
- [ ] **R4** — **6-month cost estimate** + comparison vs at least one alternative solution (e.g. AWS Lambda for the same AI app, or a single larger EC2 instance — **not EKS**, which the assignment forbids).
- [ ] **Short report** with experimental design + results + group member names.

## Locked decisions (carry forward from Block 0–2)

| Item | Value |
| --- | --- |
| App under test | FastAPI proxy + llama-server sidecar (Qwen3.5-0.8B, CPU-only), NodePort 30080 |
| Cluster | 1 master `t3.small` + 2 worker `t3.medium`, k8s v1.36.3, AL2023, us-east-1 |
| Autoscaler | HPA v2, CPU avg target **60%**, `min 1 max 2` (2 pods fill the 2 workers at 1800m/pod) |
| Load tool | **Locust** (`locustfile.py`), headless, CSV output |
| Load generator location | EC2 node **inside AWS** (a small `t3.micro`/`t3.small` "VM_test"), inside quota cap of 8 instances |
| Metric collectors | `kubectl top pods/nodes` (Metrics Server) + `kubectl get hpa` + Locust CSV + CloudWatch (CPUUtilization, NetworkIn/Out) |
| Repetitions | **5 runs minimum** per scenario — PDF: *"a single outcome is not enough to draw conclusions"*; **theory ≥20**, **practice 5–10** for limited AWS budget. We do **5–10** (aim for the higher end where budget allows). |
| Datapoint interval | 1 min (CloudWatch default) → run length chosen to collect enough points |

> **Why repeat runs (PDF "Example: an image processing application").** *You cannot rely on a single outcome* — one run can be skewed by noise, a noisy neighbour on the EC2 host, or a cold cache. Rule of thumb: **theory says run each experiment ≥20 times; in practice, with limited time + AWS credits, 5–10 runs are enough** to draw reliable conclusions. Every scenario below is therefore run **at least 5 times** and the per-timestamp values are **averaged across runs** (`Value_avgAcrossRuns(t)`), with std-dev available for error bars.

## Metrics to collect (map to `Performance_evaluation.pdf`)

**System-oriented (server side)**
- **Scalability** — number of **running pods** (`kubectl get deploy` replicas) and **HPA current/target CPU** as a function of time and workload intensity. This is the headline plot.
- **Resource utilization** — per-pod CPU via `kubectl top pods`; per-node CPU via `kubectl top nodes` and CloudWatch `CPUUtilization`.
- **Throughput** — requests/sec served (from Locust) and NodePort/NetworkOut.
- **Availability** — `1 − failed_requests / total_requests`; optionally `1 − StatusCheckFailed/observations`.

**User-oriented (client side, from Locust)**
- **Response time / latency** — p50 and p95 (Locust reports both).
- **Successful requests** and **error rate** (`Failures/s`).
- **Throughput** — requests/sec from the client's point of view.

> Collect the client-side (Locust) and server-side (`kubectl top` / CloudWatch) datapoints **for the same timestamps** so the two curves line up on the time axis — the PDF flags this alignment as the challenging part.

## Bottleneck localisation — three measurement points

To find *where* a bottleneck is (if any), measure the same request flow at three points and compare. A bottleneck sits at the stage where the numbers first diverge. Capture all three in **every** test above — it's the same runs, just more collectors.

| Point | Where | What to measure | Source |
| --- | --- | --- | --- |
| **P1 — Client side** | Locust, on the in-AWS load-gen node | `OfferedLoad`, `Throughput` served, `ResponseTime_p50/p95`, `ErrorRate` | Locust CSV |
| **P2 — Entry point** | NodePort 30080 / service ingress | `ReceivedLoad` (requests actually received), 4xx/5xx at edge | app access log / proxy counter / CloudWatch NetworkIn |
| **P3 — Server side** | the pod (proxy + llama sidecar) and node | `PodCPU`, `NodeCPU`, mem, `Pods(t)`, internal processing time | `kubectl top pods/nodes`, `kubectl get hpa`, proxy timing log |

**How to read it (diagnosis rules):**

- **`OfferedLoad` ≫ `ReceivedLoad`** (client sends more than the entry point receives) → bottleneck is *before* the app: network, load-gen node, or SG/connection limits. This is the PDF's "is what I generate what the system receives?" check. Formula: **ingress loss** `= 1 − ReceivedLoad / OfferedLoad`.
- **`ReceivedLoad` fine but `ResponseTime` climbs while `PodCPU` is at/over target and `Pods` is at `maxReplicas` (2)** → bottleneck is *compute* and the autoscaler has hit its ceiling. This is the expected saturation for this deployment; call it out explicitly.
- **`ResponseTime` climbs but `PodCPU` is *not* saturated** → bottleneck is *not* CPU: suspect memory pressure, single-threaded llama decode, `--ctx-size`, or the proxy. Cross-check `kubectl top` memory and the sidecar.
- **Client `ResponseTime` ≫ server internal processing time** → the gap is transport/queueing between client and pod, not the app itself. Formula: **network+queue overhead** `= ResponseTime_client − ProcessingTime_server` (needs a proxy-side timing log for `ProcessingTime_server`).
- **`ErrorRate` rises only at the edge (P2) not inside (P3)** → rejection/throttling at ingress, not app failure.

**Extra plot for the report:** overlay `OfferedLoad`, `ReceivedLoad`, and `Throughput` on one time axis. Three lines on top of each other = no bottleneck; any line dropping below the one above it points straight to the stage that's limiting.

> **On AWS Lambda:** this deployment has no Lambda, so there is nothing to *measure* on Lambda here. Lambda stays in the **R4 cost/architecture comparison** (below) as the alternative solution — an estimate of the same AI app on Lambda vs your K8s/EC2 stack, not a live experiment. Standing up a parallel Lambda deployment just to benchmark is out of scope and out of budget for this campaign.

## Metric definitions & formulas (reference for all tests)

Every quantity used in the tests below, with its raw source and formula. Symbols: `t` = 1-minute time bucket; `N` = number of repetitions per scenario (**≥5**, target 5–10); a **datapoint** is one metric value in one 1-min bucket of one run.

| Symbol / metric | Raw source | Formula / definition | Unit |
| --- | --- | --- | --- |
| `OfferedLoad` — offered load | Locust config (`-u`, `-r`) or Locust "Total Requests per Second" | requests you *asked* Locust to send per second | req/s |
| `ReceivedLoad` — received load | app access log / proxy request counter, or CloudWatch request count at NodePort | requests that actually *reached* the service per second | req/s |
| `Throughput` — throughput (served) | Locust CSV: `Requests` column over window, or `Σ successful_requests / Δt` | `Throughput = successful_requests / duration` | req/s |
| `ResponseTime` — response time | Locust CSV per-request latency | `ResponseTime = t_response_received − t_request_sent` | ms |
| `ResponseTime_p50`, `ResponseTime_p95` | Locust CSV percentile columns | 50th / 95th percentile of `ResponseTime` over the window | ms |
| `ResponseTime_avg` | Locust CSV `Average Response Time` | arithmetic mean of `ResponseTime` | ms |
| `ErrorRate` — error rate | Locust CSV `Failures` / `Requests` | `ErrorRate = failed_requests / total_requests` | fraction (×100 = %) |
| `Availability` — availability | derived from `ErrorRate` | `Availability = 1 − failed_requests / total_requests` | fraction |
| `Availability_infra` — infra availability | CloudWatch `StatusCheckFailed` | `Availability_infra = 1 − StatusCheckFailed / num_observations` | fraction |
| `Pods(t)` — replica count | `kubectl get deploy llm-proxy -o jsonpath={.status.replicas}` | integer number of Ready pods at bucket `t` | count |
| `PodCPU(t)` — pod CPU | `kubectl top pods` (millicores) | reported millicores | m |
| `PodCPU_percent(t)` — HPA utilisation | `kubectl get hpa` (current/target) or `PodCPU / request` | `PodCPU_percent = PodCPU(t) / cpu_request × 100` (cpu_request = **1700m**, the llama-server request HPA scales on; proxy's 100m is a separate container, so 1800m total/pod) | % |
| `NodeCPU(t)` — node CPU | CloudWatch `CPUUtilization` (EC2) or `kubectl top nodes` | reported % | % |
| `NetworkOut(t)` | CloudWatch `NetworkOut` | bytes/period → `/60` for bytes/s | B/s |
| `RequestDuration` — request duration | Locust `ResponseTime` (this is the app-level "duration" the assignment asks for) | same as `ResponseTime` per request | ms |
| `Concurrency` — concurrency | Locust active users, or `Σ in-flight requests` | number of simultaneous in-flight requests / users | count |

**Averaging over repetitions (the PDF `Run × DP → AVG` table).** For any metric `Value`, the reported value at bucket `t` is the mean over the `N` runs:

```
Value_avgAcrossRuns(t) = ( Σ_{i=1..N} Value_run_i(t) ) / N          # per-timestamp mean across runs
```

Optionally report dispersion as standard deviation for error bars:

```
Value_std(t) = sqrt( Σ_{i=1..N} ( Value_run_i(t) − Value_avgAcrossRuns(t) )^2 / (N − 1) )
```

**Scalars for the vs-intensity plots (Tests B/C).** Collapse the *steady window* of each run to one number, then average over runs:

```
Value_steady_i = mean of Value_run_i(t) over the steady buckets of run i
Value_reported   = ( Σ_i Value_steady_i ) / N
```

**Derived scalability indicators (optional, PDF mentions these):**
- **Speed-up / scaling efficiency:** `Throughput(2 pods) / Throughput(1 pod)` — ideal ≈ 2.0; report the actual ratio.
- **Autoscaling Demand Index (ADI)** style: gap between provisioned pods and pods "needed" to keep CPU at target = `Σ_t max(0, needed(t) − Pods(t))`, where `needed(t) = ceil( PodCPU_percent(t)/100 × Pods(t) / 0.60 )`. Lower = tighter provisioning.

## Experiments to run

Five scenarios. Each repeated **at least 5× (5–10)**, results averaged, then plotted. Keep intensity low (10–50 req/s ballpark) to avoid an AWS ban.

**Request-size dimension (Option 3 specific).** The assignment (line 27) wants small / medium / large inputs and a mix. For an LLM inference app the natural "size" knob is the **generated-token count / prompt length**:
- **small** — short prompt, ~32 output tokens (fast, cheap decode)
- **medium** — ~128 output tokens
- **large** — long prompt, ~256+ output tokens (heaviest CPU decode)
- **mix** — Locust pool that draws small/medium/large by probability (PDF "reproduce user behavior": e.g. P(small)=0.5, P(medium)=0.3, P(large)=0.2)

Put these in the Locust prompt pool (`locustfile.py` already has a prompt-length ramp pool — extend it to three named buckets).

### Test A — Continuous ramp (scale-out → steady → scale-in) — PRIMARY
The core elasticity evidence. Use the **mix** workload. One Locust run shaped as **WU → RU → S → RD**:
- Warm-up: 1 user, ~1 min (do not measure cold start into the scale signal).
- Ramp-up: users climb (e.g. 1 → `U_max`) so CPU crosses 60% → **HPA scales 1 → 2**.
- Steady: hold max users so CPU stays > 60% for several minutes at 2 pods.
- Ramp-down: users → ~0, **no load for ≥10 min** so HPA stabilization window elapses → **scale-in 2 → 1**.
- Duration: **≥15 min per run** (Block 2 pending item: demonstrate scale-in).
- **Proves:** scale-out, steady behaviour, and scale-in.

Locust: `--headless -u <U_max> -r <rate> -t <time> --csv runA_<i>` (or a custom LoadTestShape for the ramp).

**Data to collect** (every 1-min bucket, all runs):

| Data | Source | Used for |
| --- | --- | --- |
| `Pods(t)` | `kubectl get deploy` replicas | y-axis of the elasticity plot |
| `PodCPU_percent(t)` | `kubectl get hpa` current util | overlay vs 60% target line |
| `OfferedLoad(t)`, `Throughput(t)` | Locust CSV | show the driving load underneath |
| `ResponseTime_p50(t)`, `ResponseTime_p95(t)` | Locust CSV | latency during scale transitions |
| HPA scale events | `kubectl get events` / `kubectl describe hpa` | annotate the exact scale-out / scale-in timestamps |

**How to measure / compute:**
- Average each series over the N runs with `Value_avgAcrossRuns(t)` (align runs on *seconds-since-load-start*, not wall clock, so the ramp phases overlap).
- `PodCPU_percent(t) = PodCPU(t) / 1700m × 100` if you take it from `kubectl top` instead of the HPA field.
- Record **scale-out latency** = `t(pods goes 1→2) − t(CPU first crosses 60%)` and **scale-in latency** = `t(pods 2→1) − t(load hits ~0)`; report both (they expose the HPA stabilization window).

**Plot:** `Pods_avgAcrossRuns(t)` and `PodCPU_percent_avgAcrossRuns(t)` vs time on one chart, with the 60% target line and the load curve — one figure showing 1→2 then 2→1.

### Test B — Load–capacity curve (throughput & response time vs intensity)
Run several **fixed-intensity** steady loads (e.g. 10, 20, 30, 40, 50 users (≈ 5-25 req/s at the mix; actual req/s measured from Locust CSV)), each held long enough to collect stable datapoints (~10 min), N× each (N ≥ 5). Use the **mix** workload.

**Data to collect** (per intensity level, per run — take the *steady window* only):

| Data | Source | Used for |
| --- | --- | --- |
| `OfferedLoad` (the level) | Locust config | x-axis of every Plot |
| `ReceivedLoad` | app request counter / CloudWatch | offered-vs-received check |
| `Throughput` (served) | Locust CSV | throughput curve |
| `ResponseTime_p50`, `ResponseTime_p95` | Locust CSV | latency curve |
| `Pods` (steady avg) | `kubectl get deploy` | pods-vs-intensity curve |
| `PodCPU_percent` (steady avg) | `kubectl top pods` / hpa | context for why pods changed |
| `ErrorRate` | Locust CSV | quality check per level |

**How to measure / compute:**
- Per run, collapse the steady window to one scalar with `Value_steady_i`, then average over runs with `Value_reported`.
- **Throughput saturation** appears where `Throughput` stops rising with `OfferedLoad`.
- **Offered vs received:** plot `Throughput` (or `ReceivedLoad`) against `OfferedLoad`; a 45° line means no loss. Divergence = a bottleneck before the app (PDF "is what I generate what the system receives?").

**Plots:**
1. `Pods_reported` **vs** `OfferedLoad` — the PDF "instance count vs req/sec, averaged over m observations" plot.
2. `ResponseTime_p50_reported` & `ResponseTime_p95_reported` **vs** `OfferedLoad`.
3. `Throughput_reported` **vs** `OfferedLoad` (with the ideal 45° reference).

### Test C — Request-size comparison (Option 3 specific) — PRIMARY
Hold concurrency fixed (e.g. one moderate steady user count) and run **three separate loads: small, medium, large** request size, N× each (N ≥ 5). This is the small/medium/large analysis the assignment explicitly asks for (concurrency, invocations/requests, **duration** per size class).

**Data to collect** (per size class, per run — steady window):

| Data | Source | Used for |
| --- | --- | --- |
| `RequestDuration` = `ResponseTime_avg`, `ResponseTime_p95` | Locust CSV | duration per size (the assignment's "duration" metric) |
| `Throughput` (served) | Locust CSV | throughput per size |
| `tokens/s` (optional) | proxy log / llama-server | true decode cost per size |
| `PodCPU` steady | `kubectl top pods` | CPU driven by size |
| `Pods` reached | `kubectl get deploy` | does a bigger size trigger scale-out sooner? |
| `ErrorRate` | Locust CSV | quality per size |

**How to measure / compute:**
- Average each scalar over the N runs (`Value_reported`) per size class.
- **CPU-per-request (cost proxy):** `CPUPerRequest = PodCPU_steady / Throughput` (millicore-seconds per request) — lets you compare small/medium/large fairly regardless of rate.
- Optionally report **throughput in tokens/s** = `output_tokens × Throughput` to normalise across sizes.

**Plots / table:**
- Grouped bars: `ResponseTime_avg` (and `ResponseTime_p95`) per size class.
- Bars: `PodCPU_steady` (or `CPUPerRequest`) per size class.
- Table: size × {duration, throughput, CPU%, pods reached, error rate}.
- **Proves:** larger inputs raise CPU/latency and hit the 60% target with fewer concurrent users → size drives autoscaling.

### Test D — Bursty workload (spike test)
Alternate **normal → burst → normal → burst** (PDF "Workload shape: Bursty"). Sudden jump in users for a short window.

**Data to collect:** `OfferedLoad(t)`, `Pods(t)`, `PodCPU_percent(t)`, `ResponseTime_p95(t)`, `ErrorRate(t)` at high time resolution (every 15–30 s if possible, since bursts are short).

**How to measure / compute:**
- **Reaction time** = `t(pods 1→2) − t(burst starts)`.
- **Recovery time** = `t(ResponseTime_p95 returns to baseline) − t(burst ends)`.
- Report peak `ResponseTime_p95` and peak `ErrorRate` during each burst.

**Plot:** `ResponseTime_p95(t)` and `Pods(t)` over time with burst windows shaded. Optional if time/budget is tight; Tests A and C are the required ones.

### Test E — Availability under failure (optional, if budget allows)
PDF "How to test availability": while a steady load runs, **kill a pod** (`kubectl delete pod`) or **stop a worker**, and measure the impact.

**Data to collect:** `ErrorRate(t)`, `ResponseTime_p95(t)`, `Pods(t)` around the injected failure; timestamp of the kill.

**How to measure / compute:**
- **Availability** over the run: `Availability = 1 − failed_requests / total_requests`.
- **MTTR (recovery):** `t(pods back to target AND ErrorRate returns to ~0) − t(failure injected)`.
- Optionally infra-level `Availability_infra = 1 − StatusCheckFailed / num_observations` from CloudWatch.

**Plot:** `ErrorRate(t)` and `Pods(t)` over time with the failure instant marked.

## Per-run procedure

1. `just cluster-up` → 3 nodes Ready, Metrics Server + HPA active.
2. `kubectl apply -f deploy/` → pod `2/2 Running`, `/health` 200 via NodePort 30080.
3. Start the metric collector (background loop, 1 Hz or per-minute):
   ```bash
   # english-only collector — timestamped pod/HPA snapshots to CSV
   while true; do
     ts=$(date +%s)
     kubectl top pods --no-headers        | sed "s/^/${ts} /" >> toppods.csv
     kubectl get deploy llm-proxy -o jsonpath='{.status.replicas}' \
       | sed "s/^/${ts} /" >> replicas.csv
     kubectl get hpa llm-proxy --no-headers | sed "s/^/${ts} /" >> hpa.csv
     sleep 60
   done
   ```
4. Launch Locust from the **in-AWS** load-gen node with the scenario profile, `--csv <run_dir>/locust` (writes `locust_stats.csv` + `locust_failures.csv`).
5. On finish: pull Locust CSVs + `toppods/replicas/hpa` CSVs + CloudWatch export (console or CLI).
6. Repeat N× per scenario (N ≥ 5, target 5–10).
7. `just cluster-down` → 0 instances, 0 EIP, account clean.

## Data processing & plots

- **Average across the N runs** per datapoint (the `Run × DP → AVG` table from the PDF). Report avg (and optionally min/max or std as error bars).
- Required figures (R3 — plots **and** tables):
  1. Replicas + HPA CPU% vs time (Test A) — scale-out & scale-in.
  2. Avg pods vs offered req/s (Test B).
  3. p50/p95 response time vs req/s (Test B).
  4. Offered vs received throughput (Test B).
  5. Response time + CPU per request size: small/medium/large (Test C).
  6. Offered vs received vs served (`OfferedLoad`/`ReceivedLoad`/`Throughput`) overlay — bottleneck localisation, any test.
  7. (opt) Burst latency + recovery (Test D).
  8. (opt) Availability during failure (Test E).
- Keep a raw-data table per scenario + a summary table (throughput, p50, p95, error rate, max pods per intensity).

## R4 — cost analysis (must not skip)

- Compute **6-month operational cost** of this deployment (1× t3.small + 2× t3.medium + EBS + load-gen node), noting it's only billed while running.
- Compare against **≥1 alternative** achieving the same goal, e.g.:
  - **AWS Lambda** hosting the same AI app (the "canonical" Option-3 deployment) — per-invocation pricing vs always-on EC2; good to contrast because it's what Option 3 nominally expects. Note the model-size / cold-start caveats for Lambda.
  - a **single larger EC2 instance** with no autoscaling — shows what you lose in elasticity vs the multi-node HPA setup.
  - (optional) a **bigger vs smaller worker mix** at the same total vCPU — cost of the same capacity, different shapes.
- Present as a small comparison table. The Lambda comparison also doubles as your justification (R1) for choosing self-managed K8s/EC2 over Lambda for this workload.

> **Do not use AWS EKS** — the assignment forbids managed Kubernetes. The whole point of the deployment is the self-managed kubeadm cluster on plain EC2; EKS is not an allowed comparison target or fallback anywhere in this project.

## just recipes (Block 3 scope — to add)

```
just loadgen-up        # launch the in-AWS Locust node (counts against the 8-instance cap)
just exp-a             # Test A: continuous ramp WU->RU->S->RD (mix), N runs
just exp-b             # Test B: fixed-intensity sweep (mix), N runs each
just exp-c             # Test C: small/medium/large request-size comparison, N runs each
just exp-d             # Test D: bursty, optional
just exp-e             # Test E: availability under failure (kill pod / stop worker), optional
just collect           # start the kubectl top/hpa/replicas collector
just plots             # process CSVs -> averaged plots + tables
```

## Common mistakes to avoid (PDF "Common mistakes")

The PDF dedicates three slides to mistakes that make a campaign look done but produce unusable results. Each maps to a concrete check on the tests above.

- **Plotting metrics in isolation.** The PDF's central question: *"What is the relationship between what load we generate, the load received by the system, and the performance metrics we observe?"* Never show a lone latency or CPU chart — always relate **generated load → received load → observed performance** on the same time axis. → This is exactly the P1/P2/P3 overlay (`OfferedLoad`/`ReceivedLoad`/`Throughput`) in the Bottleneck section; make it a required figure, not an afterthought.
- **Flat / empty panels that hide the signal.** The PDF shows "Errors Sum" and "Throttles Sum" as flat zero lines — a dashboard full of metrics that never move means you're plotting the wrong metric or the aggregation/axis is masking it. → Before trusting a run, sanity-check that each collected series actually *varies* with load. If errors are genuinely zero, say so explicitly (that's a result); don't present dead panels as evidence.
- **Mismatched timestamps across sources.** Handwritten PDF note: *"the datapoint must be collected for the same timestamp — that is challenging."* Averaging across runs, and comparing client vs server, only works if the buckets line up. → Align every run on *seconds-since-load-start* (not wall clock) before averaging; collect client (Locust) and server (`kubectl top`/CloudWatch) against the same clock.
- **Trusting a single run.** Covered above — a single outcome is not enough; run ≥5 and average (`Value_avgAcrossRuns(t)`).
- **Load that never reaches the system.** PDF "Is what I generate what the system receives?" — verify `ReceivedLoad ≈ OfferedLoad` at the entry point before interpreting any performance number; a gap means you measured a network/load-gen limit, not the app.
- **Averaging the wrong axis.** Average each metric **per timestamp across runs**, then plot vs time (Test A) or collapse the steady window to one scalar per run *first*, then average across runs (Tests B/C). Don't average time buckets together within a single run and call it "the result".

> Add a **pre-analysis sanity pass** to `just plots`: for each run, assert every series is non-constant (or flagged as intentionally zero), assert `ReceivedLoad/OfferedLoad ≥ ~0.95`, and assert all sources share a common time base. Fail loudly if not — cheaper than discovering it in the presentation.

## Risks / notes

- **Ban risk** — keep intensity in the 10–50 req/s band; run the load generator **inside AWS**; never hammer the NodePort from outside.
- **Scale-in needs patience** — HPA has a stabilization window (~5 min default down); Test A must hold zero load ≥10 min or scale-in won't show.
- **Timestamp alignment** — client (Locust) and server (`kubectl top`/CloudWatch) clocks must line up for the paired plots; collect both against wall-clock seconds.
- **max = 2 ceiling** — with `maxReplicas 2` the scale-out plot saturates at 2 pods; that's expected (2 workers). State it as a capacity choice, not a bug.
- **Budget** — each measurement session is a fresh cluster; `just cluster-down` every time. Re-fetch Learner Lab creds per session.

## Verify (done criteria)

- [ ] Test A shows **scale-out 1→2 and scale-in 2→1** on one averaged time plot.
- [ ] Test B produces pods-vs-intensity and latency-vs-intensity curves (averaged over N runs).
- [ ] Test C shows **small vs medium vs large** request-size impact on latency/CPU/scaling (Option 3 requirement).
- [ ] Offered-vs-received throughput plotted (load actually reaches the system).
- [ ] **Bottleneck localised** — `OfferedLoad`/`ReceivedLoad`/`Throughput` compared across P1/P2/P3; report states where the limit is (or that there's none below max scale).
- [ ] **Common-mistakes sanity pass done** — no dead/flat panels presented as evidence, `ReceivedLoad ≈ OfferedLoad` verified, all sources share one time base, every scenario ≥5 runs averaged.
- [ ] Error rate / availability reported.
- [ ] All figures backed by tables (R3).
- [ ] 6-month cost estimate + one alternative comparison, incl. **Lambda** for the same AI app (R4).
- [ ] Report states clearly this is **Option 3 deployed on K8s/EC2 (not Lambda)** with justification.
- [ ] Short report drafted (design + results + group member names).
- [ ] Account clean after every session (`just cluster-down`).

## Session budget

Each ~4h measurement session ≈ $0.42 (t3.small $0.02/h + 2× t3.medium $0.042/h) + a small load-gen node (~$0.01/h). Terminate at session end.
