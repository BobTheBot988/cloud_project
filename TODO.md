# TODO — Learner Lab project

Status snapshot (2026-08-12). Order: as listed.

## Current status

- Block 0: COMPLETED (proxy, tests 11/11, compose, locust, deploy/ YAML, MEASURE.md)
- Block 1: scripts + plan DONE; AWS run + kind validation PENDING
- Block 2/3/4: pending

## Block 1 — cluster setup (next session)

- [x] Kind test on this host — PASSED (kind-up/load/metrics/deploy): pods 2/2 Ready, `/health` + `/generate` via NodePort 30080, HPA targets live, **scale-out verified** (91%/60% -> 2 replicas)
- [x] Proxy image pushed to GHCR (`ghcr.io/bobthebot988/llm-proxy:latest`, **public** — anonymous pull, no secret needed)
- [ ] AWS Academy: Start Lab -> copy creds + labsuser.pem -> `aws sts get-caller-identity` OK
- [ ] `just cluster-up` -> 3 nodes Ready + `kubectl top node` (Metrics Server)
- [ ] Confirm quota guards trigger test (8 inst / 31 vCPU / <=medium)

## Block 2 — deploy + HPA (on AWS)

- [x] HPA `max` decided: **2** (fits 2x t3.medium at 2000m) — `deploy/hpa.yaml`
- [x] Proxy image pushed to GHCR (`ghcr.io/bobthebot988/llm-proxy:latest`, **public** — anonymous pull)
- [ ] Apply Deployment/Service/HPA on AWS
- [ ] `kubectl get hpa` shows cpu targets; debug Metrics Server NOW if not
- [ ] Locust 2-5 users -> confirm scaling visibly starts (kind already verified scale-out)

## Block 3 — experimental runs

- [ ] Collector: `kubectl top pods` at interval + Locust CSV -> `run_1`..`run_5`
- [ ] 5 solid runs >=15 min (ramp-up -> stable -> ramp-down)
- [ ] `just cluster-down` after runs (budget)

## Block 4 — analysis + report

- [ ] Average datapoints across runs
- [ ] Graphs: pods vs time, response-time vs load, throughput, error rate
- [ ] Load generated vs received vs system response
- [ ] 6-month EC2 cost vs paid LLM API comparison
- [ ] Course report (all member names) + 15-min presentation

## Open questions / risks

- HPA max 2 vs 3rd worker (MEASURE.md note)
- t3.small master OOM during kubeadm init -> fallback t3.medium
- el9 rpm set on AL2023 -> static-binary fallback
- kind on rootless podman: first kubelet warmup can transiently fail (retry once)
