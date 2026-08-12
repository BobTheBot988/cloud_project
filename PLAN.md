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

Build/test all here; arrive at AWS with everything working.

1. ~~**Model fetch**~~ — DONE. Model present at cache path; verified loadable on build 10380.
2. ~~**Local llama-server**~~ — DONE (compose runs it on :8080, mounted GGUF):

   ```
   --host 0.0.0.0 --port 8080 --threads 2 --ctx-size 2048 --no-webui --reasoning off \
   --temp 1.0 \
   --top-k 20 \
   --top-p 0.95 \
   --min-p 0.0 \
   --presence-penalty 1.5 \
   --repeat-penalty 1.25
   ```

   Note: `--reasoning`/`--spec-type draft-mtp` do not exist as PLAN flags. Use `--reasoning off` (budget flag dropped; off = fast simple answers). Build 10380 (tag `server`) required for arch `qwen35`; older `server-b4738` rejects it. System prompt injected by proxy (`SYSTEM_PROMPT` env, prepended unless client sends one).

   ~~Test `/health`, `/v1/chat/completions`.~~ — DONE.

3. ~~**FastAPI proxy**~~ — DONE. `app/main.py`, env `LLAMA_CPP_URL`, /health probe, /generate passthrough + streaming + error map + 60s timeout.
4. ~~**Tests**~~ — DONE. `tests/test_proxy.py` 9/9 pass (unit, mocked upstream).
5. ~~**Measure**~~ — DONE. See `MEASURE.md`: 25.8 tok/s @2thr (≥21 target met), idle ~345MB. requests.cpu llama-server `2000m`, proxy `100m`. Quant: UD-Q6_K_XL kept.
6. ~~**Docker/compose**~~ — DONE. `compose.yaml` + `Dockerfile` run llama-server+proxy via podman-compose (k8s dry run). Proxy image push deferred -> GHCR (Block 2).
7. ~~**Locust**~~ — DONE. `locustfile.py`, headless sanity vs compose: 0 errors.
8. ~~**Pre-write YAML**~~ — DONE (unapplied): `deploy/deployment.yaml`, `service.yaml`, `hpa.yaml`.
9. ~~**Sizing evidence**~~ — DONE. `MEASURE.md` -> t3.medium worker, threads 2.

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
