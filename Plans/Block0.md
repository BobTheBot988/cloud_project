# Block 0 — Local dev + test (out of AWS) — COMPLETED

Status: done 2026-08-12. Everything built/tested locally; AWS untouched.

## Locked decisions (carry forward)

| Item   | Value |
| ------ | ------------------------------------------------------------------------------------------------------------- |
| model  | `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (791MB) — alt `Q6_K` (658MB) |
| engine | `llama-server` (llama.cpp), NOT llama-cli, NOT vLLM |
| image  | `ghcr.io/ggml-org/llama.cpp:server` (build 10380; tag `latest` removed from GHCR) |
| proxy  | FastAPI thin: `GET /health`, `POST /generate` -> `:8080`, env `LLAMA_CPP_URL` |
| pod    | sidecar: llama-server + fastapi-proxy, shared emptyDir; initContainer prefetch GGUF |
| HPA    | cpu avg, `min 1 max 3` (see MEASURE.md: 2000m/pod on 2x t3.medium caps at 2 pods — decide max 2 or 3rd worker) |
| infra  | master `t3.small`, 2x worker `t3.medium` (us-east-1/us-west-2, LabInstanceProfile, <=9 inst, <=32 vCPU, <=large) |
| target | >=21 tok/s gen; LLM decode-driven CPU -> real scaling signal |

## Why not vLLM

- vLLM is a GPU-server tool; Learner Lab is CPU-only t-series.
- Torch CPU backend eats ~0.5-1GB RAM + overhead -> on 4GB node leaves ~2.5GB, no scaling headroom.
- CPU inference slower than llama.cpp for small models.
- vLLM image 4-8GB vs llama.cpp ~100MB -> slow pulls.
- Proxy speaks OpenAI-compat `/v1/chat/completions`; if a GPU ever shows up, swap sidecar only, proxy unchanged.

## Checklist (all DONE)

1. **Model fetch** — present at HF cache path, loadable on build 10380.
2. **Local llama-server** — compose runs it on `:8080`, mounted GGUF. Flags:
   ```
   --host 0.0.0.0 --port 8080 --threads 2 --ctx-size 2048 --no-webui --reasoning off \
   --temp 1.0 --top-k 20 --top-p 0.95 --min-p 0.0 --presence-penalty 1.5 --repeat-penalty 1.25
   ```
   Notes: `--reasoning`/`--spec-type draft-mtp` are NOT server flags. Use `--reasoning off`. Build 10380 (tag `server`) required for arch `qwen35`; `server-b4738` rejects it. System prompt injected by proxy (`SYSTEM_PROMPT` env, prepended unless client sends one).
3. **FastAPI proxy** — `app/main.py`: env `LLAMA_CPP_URL`, `/health` upstream probe, `/generate` passthrough + streaming + error map (504/502/400), timeout 300s.
4. **Tests** — `tests/test_proxy.py` 11/11 pass (mocked upstream, incl. system-prompt injection).
5. **Measure** — `MEASURE.md`: 25.8 tok/s @2thr (>=21 met), idle ~345MB. requests.cpu llama-server `2000m`, proxy `100m`. Quant: UD-Q6_K_XL kept. (2B IQ2 fork measured too: 11 tok/s, quality poor — rejected.)
6. **Docker/compose** — `compose.yaml` + `Dockerfile` run llama-server+proxy via podman-compose (k8s dry run). Proxy image push deferred -> GHCR (Block 2).
7. **Locust** — `locustfile.py`, headless sanity vs compose: 0 errors.
8. **Pre-write YAML** — `deploy/deployment.yaml`, `service.yaml`, `hpa.yaml` (unapplied).
9. **Sizing evidence** — `MEASURE.md` -> t3.medium worker, threads 2.

## YAML sketch (final, in deploy/)

```
Deployment:
  spec.template.spec:
    initContainers: pre-fetch GGUF -> /models (emptyDir)   [791MB]
    containers:
      llama-server: image ghcr.io/ggml-org/llama.cpp:server (build 10380)
                    args: --model /models/*.gguf --host 0.0.0.0 --port 8080 --threads 2
                          --ctx-size 2048 --no-webui --reasoning off + sampling flags
                    resources: requests cpu 2000m mem 1Gi
      fastapi-proxy: image <ghcr>/llm-proxy (env LLAMA_CPP_URL=http://127.0.0.1:8080,
                    SYSTEM_PROMPT=...) resources: requests cpu 100m
    readinessProbe: /health
Service: NodePort (80 -> 30080) for curl test
HPA: scaleTargetRef Deployment, cpu target 60%, min 1 max 2-3 (see MEASURE.md capacity note)
```

## Instance cost guide

- t3.small ~$0.02/h, t3.medium ~$0.042/h, t3.large ~$0.08/h (runtime only, off between sessions).

## Artifacts

`app/`, `tests/`, `compose.yaml`, `Dockerfile`, `locustfile.py`, `deploy/`, `justfile`, `MEASURE.md`, `.opencode/agent/` (swarm-builder + swarm-reviewer, `deepseek/deepseek-v4-flash`, `variant: minimal`).
