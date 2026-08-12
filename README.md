# Learner Lab — FastAPI + llama.cpp autoscaling

University project about scaling a service. We picked an LLM inference service as the workload to see how real-world scaling works.

Architecture:
- `app/main.py` — thin FastAPI proxy in front of a local llama.cpp `llama-server` (Qwen3.5-0.8B, CPU). Exposes `GET /health` (upstream probe) and `POST /generate` (OpenAI-compatible passthrough: streaming, error mapping, system-prompt injection).
- Kubernetes pod runs `llama-server` + proxy as sidecars sharing an emptyDir (model prefetched by an initContainer).
- Horizontal Pod Autoscaling (HPA) scales replicas by CPU — driven by real LLM decode load.
- Locust generates load; results feed the course report.

## Prerequisites

- Container runtime: docker or podman (+ `podman-compose` for the compose stack)
- `uv` (Python 3.11; venv + deps via `uv sync`)
- `kubectl`
- `aws` CLI v2 (+ AWS Academy Learner Lab credentials for the AWS block; see `Plans/BLOCK1-SETUP.md`)

### Optional deps

- `just` — task runner for test/local/cluster recipes (`just --list`)
- `kind` — local k8s test cluster (validates deploy/ manifests)
- `jq`, `hf` (huggingface CLI) — JSON parsing / model download
- pytest, locust, httpx — installed as dev deps by uv

## Install

```
uv sync                 # create .venv + install deps (incl. dev)
```

## Local stack (compose, k8s dry-run)

```
just up                 # podman-compose up -d --build  (llama-server + proxy)
just down               # podman-compose down
# or with podman-compose directly:
podman-compose -f compose.yaml up -d --build
```

## Quick start

- `just test` — proxy unit tests
- `just test-prompt "your question"` — stream one generation
- `just launch / cluster-up / cluster-verify / cluster-down` — EC2 cluster lifecycle
