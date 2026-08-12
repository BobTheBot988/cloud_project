# Plan — Learner Lab: FastAPI + llama.cpp autoscaling

## Locked decisions

| Item   | Value                                                                                                            |
| ------ | ---------------------------------------------------------------------------------------------------------------- |
| model  | `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (791MB) — alt `Q6_K` (658MB)                                          |
| engine | `llama-server` (llama.cpp), NOT llama-cli, NOT vLLM                                                              |
| image  | `ghcr.io/ggml-org/llama.cpp:server` (build 10380; tag `latest` removed from GHCR)                    |
| proxy  | FastAPI thin: `GET /health`, `POST /generate` -> `:8080`, env `LLAMA_CPP_URL`                                    |
| pod    | sidecar: llama-server + fastapi-proxy, shared emptyDir; initContainer prefetch GGUF                              |
| HPA    | cpu avg, `min 1 max 3` (see MEASURE.md: 2000m/pod on 2x t3.medium caps at 2 pods — decide max 2 or 3rd worker) |
| infra  | master `t3.small`, 2x worker `t3.medium` (us-east-1/us-west-2, LabInstanceProfile, <=9 inst, <=32 vCPU, <=large) |
| target | >=21 tok/s gen; LLM decode-driven CPU -> real scaling signal                                                     |

## Why not vLLM

- vLLM is a GPU-server tool; Learner Lab is CPU-only t-series.
- Torch CPU backend eats ~0.5-1GB RAM + overhead -> on 4GB node leaves ~2.5GB, no scaling headroom.
- CPU inference slower than llama.cpp for small models.
- vLLM image 4-8GB vs llama.cpp ~100MB -> slow pulls.
- Wait: fastapi proxy speaks OpenAI-compat `/v1/chat/completions`; if a GPU ever shows up, swap sidecar only, proxy unchanged.

## Block 0 — Local dev + test (out of AWS, ~2-3 days)

COMPLETED 2026-08-12. Full as-built record + locked decisions + final YAML sketch: see `Plans/Block0.md`. Evidence: `MEASURE.md`, `tests/`, `compose.yaml`, `deploy/`.

## Block 1 — Cluster setup (1 session)

- Launch master `t3.small` + 2 worker `t3.medium`, attach `LabInstanceProfile`, Elastic IP on master.
- Security Groups: `22, 6443, 2379-2380, 10250-10252, 8472/4789` (Flannel).
- containerd -> kubeadm init -> Calico/Flannel -> join -> **Metrics Server** (required for HPA).
- `kubectl get nodes` all Ready.
- IP change after restart -> `kubeadm reset` on affected nodes + re-init/join.

## Block 2 — Deploy + HPA (1 session)

- Apply Deployment -> `curl` via NodePort -> "pods ready".
- Apply Service + HPA -> `kubectl get hpa` shows data (debug Metrics Server _now_ if not).
- Locust 2-5 fake users -> confirm scaling visibly starts.

## Block 3 — Experimental runs (1-2 sessions, budget-frugal)

- Collector: `kubectl top pods` at interval + Locust CSV -> `run_1`, `run_2`, ...
- 5 solid runs >=15 min (ramp-up -> stable -> ramp-down). Shut instances after.

## Block 4 — Analysis, report (out of AWS)

- Average datapoints across runs.
- Graphs: pods vs time, response-time vs load, throughput, error rate.
- Load generated vs received vs system response relationship.
- 6-month cost from EC2 sizing; compare vs paid external LLM API.
- Course report (all member names) + 15-min presentation.

## YAML sketch (Block 0 deliverable)

```
Deployment:
  spec.template.spec:
    initContainers: pre-fetch GGUF -> /models (emptyDir)   [791MB]
    containers:
      llama-server: image ghcr.io/ggml-org/llama.cpp:server (build 10380)
                    args: --model /models/*.gguf --host 0.0.0.0 --port 8080 --threads 2
                          --ctx-size 2048 --no-webui --reasoning on --reasoning-budget 1024
                          + sampling flags
                    resources: requests cpu 2000m mem 1Gi
      fastapi-proxy: image <ghcr>/llm-proxy (env LLAMA_CPP_URL=http://127.0.0.1:8080)
                    resources: requests cpu 100m
    readinessProbe: /health
Service: NodePort (80 -> 30080) for curl test
HPA: scaleTargetRef Deployment, cpu target 60%, min 1 max 2-3 (see MEASURE.md capacity note)
```

## Quant note

UD-Q6_K_XL (791MB) chosen and verified — 25.8 tok/s @ 2 threads (llama-bench), 24.65 tok/s via server HTTP. Alt Q6_K (658MB) available if disk tight. Full evidence: `MEASURE.md`.

## Instance cost guide

- t3.small ~$0.02/h, t3.medium ~$0.042/h, t3.large ~$0.08/h (runtime only, off between sessions).
