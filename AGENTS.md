# AGENTS.md — Learner Lab: FastAPI + llama.cpp autoscaling

University project: scale an LLM inference service (Qwen3.5-0.8B via llama.cpp) with Kubernetes HPA on AWS Academy Learner Lab.

## Repo layout

| Path | What |
|---|---|
| `app/main.py` | FastAPI proxy: `GET /health` (upstream probe 200/503), `POST /generate` (OpenAI-compat passthrough, streaming, error map, 300s timeout). Env: `LLAMA_CPP_URL`, `SYSTEM_PROMPT` (injected unless client sends one) |
| `tests/test_proxy.py` | pytest, httpx MockTransport, 11 tests |
| `compose.yaml` + `Dockerfile` | local llama-server + proxy (k8s dry-run), podman-compose |
| `locustfile.py` | Locust load, PROMPT_POOL ramp, POST /generate |
| `deploy/` | k8s manifests: deployment (sidecar, initContainer prefetch), deployment-kind-fast (hostPath GGUF, kind only), service (NodePort 30080), hpa (cpu 60%, min 1 max 2) |
| `infra/` | EC2 lifecycle scripts (quota-guarded) + `guards.sh` (shared guard logic), `kind-fast.sh` (offline kind run), `tests/` (guard trigger tests), see `Plans/Block1.md` |
| `kind-config.yaml` | local kind cluster (control-plane + 2 workers, NodePort 30080) |
| `justfile` | recipes: test, test-prompt, up/down, launch/cluster-up/cluster-verify/cluster-down, kind-up/load/metrics/deploy/test/fast/down, case-0/1/2 + aliases, guard-default, case-all |
| `MEASURE.md` | perf evidence (25.8 tok/s @2thr, 2B fork rejected) |
| `.opencode/agent/` | swarm-builder + swarm-reviewer subagents (deepseek/deepseek-v4-flash, variant minimal) |

## Plans/ (source of truth)

- `PLAN.md` — master roadmap, locked decisions, all 4 blocks, current status per block.
- `Block0.md` — COMPLETED as-built: decisions, checklist, final YAML sketch.
- `Block1.md` — cluster setup plan: AL2023, k8s v1.36, quota guards, script-by-script.
- `BLOCK1-SETUP.md` — manual runbook: AWS Academy login -> creds -> `just cluster-up` -> `cluster-down`.

Rules: read PLAN.md first; update it + the relevant Block file when implementation changes. Keep as-built facts in Block files, decisions in PLAN.md.

## Key facts / gotchas

- Model `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (UD-Q6_K_XL.gguf). GGUF blobs live under `~/.cache/huggingface/hub/models--unsloth--Qwen3.5-0.8B-MTP-GGUF/blobs/` (snapshot entries are symlinks).
- Image `ghcr.io/ggml-org/llama.cpp:server` build 10380 (tag `latest` gone; older builds reject arch `qwen35`).
- llama-server flags: `--reasoning off` (no `--reasoning`/`--spec-type`/`--reasoning-budget` in server builds).
- k8s v1.36 via pkgs.k8s.io el9 rpm on AL2023 (not RHEL; static-binary fallback if rpm set fails).
- Learner Lab hard caps enforced in `infra/01-launch.sh`: <=8 instances, <=31 vCPU, size <= medium. Never weaken; account deactivation = total loss.
- SSH: KeyName `vockey`, identity `~/.ssh/labsuser.pem` (fresh from AWS Details each session).
- AWS creds are temporary (Access Key/Secret/Session Token) — re-fetch every session.
- GHCR: proxy image `ghcr.io/bobthebot988/llm-proxy:latest` is **public** — nodes pull anonymously, no imagePullSecrets, no registry token needed.
- Local container runtime is podman (docker CLI is a podman alias); use podman-compose.
- Swarm pattern: spawn swarm-builder per artifact, swarm-reviewer for audits.

## SELinux & host volume mounts

On SELinux-enforcing hosts, bind-mounting a host file/dir into a container without the right label gives "Permission denied" inside the container. Always set a relabel flag on host-volume mounts:

- `:z` (or `relabel=shared`) — label grants access to ALL containers. Use when the same host path is mounted by multiple containers/stacks.
- `:Z` (or `relabel=private`) — label grants access to THIS container only. Use for single-container mounts (e.g. the GGUF blob mounted only by llama-server). Mounting the same path with a different `:Z` container can break the first one (MCS mismatch).
- Compose long syntax equivalent: `relabel: shared|private`.
- Alternative (no flag): pre-label once with `chcon -t container_file_t -l s0 <host-path>` so any container can read it — used for the GGUF blob when shared across dev + compose.

Docs: podman-run(1) `https://docs.podman.io/en/latest/markdown/podman-run.1.html` (volume/relabel section), Compose spec `https://compose-spec.com/compose-file/07-volumes/`, Docker bind mounts `https://docs.docker.com/engine/storage/bind-mounts/`.

k8s is unaffected: pods use emptyDir (no host mounts).

## Commands

```
uv sync                       # install deps (incl dev: pytest locust)
just test                     # pytest
just test-prompt "..."        # stream one generation via proxy
just up / down                # compose stack
just kind-fast                # offline kind run (reuses images + GGUF)
just case-all / guard-default # quota-guard trigger tests (mock inventory)
just launch / cluster-up / cluster-verify / cluster-down   # EC2 lifecycle
```

## Conventions

- No code comments unless asked. Code/commits normal English; conversation may be caveman-terse.
- Don't commit AWS creds or `infra/.cluster-ips` (gitignored).
