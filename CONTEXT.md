# CONTEXT.md — project state summary

## Project

Uni project: scale an LLM inference service with Kubernetes HPA on AWS Academy Learner Lab. Workload = Qwen3.5-0.8B (llama.cpp, CPU-only). FastAPI proxy fronts the model; k8s HPA scales pods by CPU driven by real decode load.

## What works (all verified on this machine)

**Block 0 — local stack**
- FastAPI proxy (`/health` readiness probe, `/generate` OpenAI-compat passthrough with streaming, error mapping 400/502/504, 300s timeout, system prompt injection).
- 11/11 unit tests pass (mocked upstream via httpx).
- Compose stack (llama-server + proxy) via podman-compose — the k8s dry-run. Works end-to-end; a SELinux `:Z` relabel on the GGUF volume fixed a permission-denied mount issue.
- Locust load file with prompt-length ramp pool.
- k8s manifests pre-written (deployment sidecar + initContainer GGUF prefetch, NodePort 30080 service, HPA cpu 60%).
- Perf evidence: ~26 tok/s at 2 threads on the 0.8B UD-Q6_K_XL quant — meets the 21 tok/s target. A 2B IQ2 fork was measured and rejected (11 tok/s, poor output quality).

**Block 1 — cluster tooling**
- Full EC2 lifecycle scripts: launch (with hard quota guards), AL2023 kubeadm bootstrap, orchestration, verify, teardown.
- Hard Learner Lab caps enforced in code: ≤8 instances, ≤31 vCPU, ≤medium, tripwire on constants, count-ALL-instances inventory, fail-closed vCPU map — account deactivation is the penalty for breaking these.
- Guard logic extracted into a shared module and exercised by trigger tests: three lowered-limit configs (1 inst / 2 vCPU / mixed) all abort correctly under a mocked inventory, plus a default-config sanity set that allows within limits and rejects oversized. 13 checks green.

**kind — local cluster validation**
- Full manifest test on kind (control-plane + 2 workers, NodePort 30080): metrics-server, GGUF prefetch, sidecar pod Ready, `/health` + generation via NodePort, and **HPA scale-out proven** (load pushed CPU to 91% vs 60% target → 2 replicas).
- Fast offline variant: reuses the locally cached llama-server image and the GGUF blob (copied into kind nodes, hostPath mount, no initContainer download) → pod Ready in ~8s instead of ~8min. Downloads only if missing (hf CLI for the model, docker pull for the image).
- Found & fixed during testing: nonexistent `curl:8` tag, YAML bool trap on `off`, missing metrics-server, missing service/hpa in the fast path, and a subshell-scoping bug in the first mock that made tests pass for the wrong reason.

**Block 2 — deploy + HPA (AWS run done 2026-08-17)**
- Full lifecycle proven live on EC2 (k8s v1.36.3, AL2023): `just cluster-up` → 3 nodes Ready → `kubectl apply -f deploy/` → pod `2/2 Running` (initContainer GGUF 791MB + sidecars) → `/health` 200 + real generation via NodePort 30080 → Locust 3×180s with 24 req, 0 errors → **HPA scale-out 1→2** (`cpu 50%/60% → New size: 2`) → `just cluster-down` clean (0 instances, 0 EIP).
- Two fixes that only surfaced on AWS (invisible on kind): llama-server CPU request **2000m → 1700m** (t3.medium allocatable 2000m − 200m daemonsets = 1800m/pod max; 2000m left the pod Pending "Insufficient cpu") and root EBS **20GB → 40GB** (20GB < 30GB AMI snapshot, `RunInstances` rejected).
- Registry: proxy image public on GHCR, anonymous pull, no imagePullSecrets, no token.

**Registry + secrets**
- Proxy image pushed to GHCR (`ghcr.io/bobthebot988/llm-proxy:latest`), now **public** — AWS nodes pull anonymously, no imagePullSecrets, no registry token. Token story cleaned up entirely after rotation (deleted the local token file, logged out).

**Docs/planning**
- `Plans/` is the source of truth: master plan, Block 0 as-built, Block 1 AL2023 plan, **Block 2 deploy+HPA as-built**, and a manual AWS Academy runbook.
- AGENTS.md, README, TODO, measurement notes, and a kind test report all kept current.
- Code comments pass done (file-purpose headers + vital-function comments; reviewed and corrected mislabeled/misleading ones).

## Current status

- Block 0 complete; Block 1 complete (AWS run done); **Block 2 complete (deploy + HPA live on AWS 2026-08-17, scale-out proven, cluster torn down clean)**. Full record: `Plans/Block2.md`.
- **Next: Block 3** — 5 experimental runs ≥15min (ramp-up → stable → ramp-down) with `kubectl top pods` collector + Locust CSV; `just cluster-down` after every session. Optional future demo: HPA **scale-in** back to 1 pod after ~10min without load.
- Open decisions already made: HPA max = 2 (fits 2 workers at 1700m+100m=1800m/pod); k8s v1.36 on AL2023; image tag pinned to build 10380 (arch `qwen35` needs it).

## Gotchas baked in

- GHCR `latest` tag is gone; older builds reject the model arch.
- llama-server has no `--reasoning`/`--spec-type` server flags — use `--reasoning off`.
- SELinux: host volume mounts need `:Z`/`:z` or a pre-labeled blob.
- Learner Lab credentials are temporary and instances persist/auto-restart between sessions — always terminate, never just stop.
