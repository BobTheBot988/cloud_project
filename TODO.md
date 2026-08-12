# TODO — Learner Lab project

Status snapshot (2026-08-12). Order: as listed.

## Current status

- Block 0: COMPLETED (proxy, tests 11/11, compose, locust, deploy/ YAML, MEASURE.md)
- Block 1: scripts + plan DONE; AWS run + kind validation PENDING
- Block 2/3/4: pending

## Block 1 — cluster setup (next session)

- [ ] Kind test with stable connection (`just kind-up` then `just kind-test`):
  - [ ] llama-server image `ghcr.io/ggml-org/llama.cpp:server` pull inside kind node (was slow/ErrImagePull)
  - [ ] proxy image `ghcr.io/llm-proxy:latest` loaded to ALL kind nodes (was missing on worker2 -> GHCR 400)
  - [ ] pods Ready -> `curl 127.0.0.1:30080/health` -> HPA targets show data
- [ ] AWS Academy: Start Lab -> copy creds + labsuser.pem -> `aws sts get-caller-identity` OK
- [ ] `just cluster-up` -> 3 nodes Ready + `kubectl top node` (Metrics Server)
- [ ] Confirm quota guards trigger test (8 inst / 31 vCPU / <=medium)

## Block 2 — deploy + HPA (on AWS)

- [ ] Decide HPA `max`: 2 (fits 2x t3.medium at 2000m) vs 3rd worker — update `deploy/hpa.yaml`
- [ ] Push proxy image to GHCR (or ECR) — replace `ghcr.io/llm-proxy:latest` placeholder
- [ ] Apply Deployment/Service/HPA on AWS
- [ ] `kubectl get hpa` shows cpu targets; debug Metrics Server NOW if not
- [ ] Locust 2-5 users -> confirm scaling visibly starts

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
