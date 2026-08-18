# Block 2 — Deploy + HPA (1 session) — COMPLETED

Status: done 2026-08-17. Manifests validated on a local kind cluster 2026-08-12, then deployed and autoscaled live on a real EC2 cluster (k8s v1.36.3, AL2023). AWS untouched afterwards — `just cluster-down` left the account clean.

## Goal

Ship the proxy image to a registry, apply `deploy/` (Deployment + Service + HPA) on the EC2 cluster, and prove **HPA scale-out under real LLM load** (CPU-driven, same mechanism kind already showed). Budget-frugal: one session, instances TERMINATED at the end.

## Locked decisions (carry forward / updated here)

| Item   | Value |
| ------ | ------------------------------------------------------------------------------------------------------------- |
| proxy image | `ghcr.io/bobthebot988/llm-proxy:latest` — **public** on GitHub Packages, anonymous pull, no imagePullSecrets, no registry token |
| llama image | `ghcr.io/ggml-org/llama.cpp:server` (build 10380; tag `latest` removed from GHCR) |
| curl image  | `curlimages/curl:8.21.0` (initContainer GGUF prefetch) — tag `curl:8` does NOT exist (404) |
| pod CPU req | llama-server **1700m** + proxy **100m** = **1800m/pod** (t3.medium allocatable 2000m − 200m daemonsets = 1800m max/pod; 2000m was rejected by scheduler → pod Pending) |
| HPA         | cpu avg target **60%**, `min 1 max 2` — 2 pods fill exactly the 2 workers |
| initContainer | downloads GGUF 791MB into shared emptyDir `/models` before the sidecars start |
| NodePort    | 30080 → proxy 8000 (matches `kind-config.yaml` extraPortMappings) |
| EBS         | root **40GB gp3** (20GB was smaller than the AMI snapshot 30GB → `RunInstances` rejected) |

## Artifacts

| Path | What |
|---|---|
| `deploy/deployment.yaml` | Deployment: initContainer `model-prefetch` (curl → `/models`), llama-server sidecar (flags mirror compose), fastapi-proxy (env `LLAMA_CPP_URL`, `SYSTEM_PROMPT`, readinessProbe `/health`) |
| `deploy/service.yaml` | NodePort Service, 80 → 8000, nodePort 30080 |
| `deploy/hpa.yaml` | HPA v2, scaleTargetRef Deployment `llm-proxy`, cpu 60%, min 1 max 2 |
| `deploy/deployment-kind-fast.yaml` + `infra/kind-fast.sh` | offline kind fast path: reuses local llama image + GGUF (hostPath, no initContainer download) — pod Ready ~8s vs ~8min |
| `infra/tests/` + just recipes `case-0/1/2`, `guard-default`, `case-all` | quota-guard trigger tests (mocked inventory, no AWS) — 13 checks green |
| `KIND-TEST-REPORT.md` | full kind validation log |
| `Plans/RESOCONTO.md` §6 | live AWS run record |

## Phase 1 — kind validation (2026-08-12, local, free)

- kind v0.32.0 (podman provider), cluster `kind-config.yaml`: control-plane + 2 workers, NodePort 30080 mapped to host.
- metrics-server installed + patched `--kubelet-insecure-tls` → `kubectl top node` works.
- Image built + `kind load docker-image`; **proxy also pushed to GHCR** here.
- `kubectl apply -f deploy/` → pod lifecycle: GGUF 791MB download (~8min) → llama image pull (~2min) → sidecars `2/2 Running`.
- Smoke via NodePort: `/health` 200 + real generation (`"Hello! How can I help?"`).
- **HPA scale-out proven**: Locust 4 users/100s → CPU 91% vs 60% target → `replicas 1→2`.

Bugs found & fixed during kind (all committed):
1. `curlimages/curl:8` tag doesn't exist → pinned `curlimages/curl:8.21.0`.
2. YAML bool trap: unquoted `off` parsed as bool → quoted `"off"` in args.
3. Proxy image not public → GHCR anonymous pull 401 → package made **public**, `imagePullSecrets` removed.
4. Stale ReplicaSet after manifest edit (old `curl:8` pod looped ImagePullBackOff) → deleted old RS.
5. HPA `maxReplicas` 3 → 2 (capacity math, see Block0/MEASURE).

## Phase 2 — live AWS run (2026-08-17)

Cluster: 1 master `t3.small` + 2 worker `t3.medium`, k8s v1.36.3, AL2023, us-east-1.

| Test | Result |
|---|---|
| `just cluster-up` (guard + bootstrap + verify) | 3 nodes Ready, Flannel + Metrics Server active |
| `kubectl apply -f deploy/` | applied |
| Pod (initContainer GGUF 791MB + sidecars) | `2/2 Running` |
| `curl <node>:30080/health` (NodePort) | HTTP 200 |
| `curl <node>:30080/generate` | real model response via AWS |
| Locust 3 users × 180s | 24 requests, **0 errors** |
| **HPA scale-out 1→2** | `cpu 50%/60% → New size: 2` |
| `just cluster-down` | 0 instances, 0 EIP, account clean |

HPA event (evidence):

```
Normal  SuccessfulRescale  2m42s  New size: 2; reason: cpu resource
       utilization (percentage of request) above target
```

## Two fixes that only surfaced on AWS (invisible on kind)

1. **CPU 2000m → 1700m.** Pod asked 2100m (2000+100) but a t3.medium has 2000m allocatable and daemonsets (kube-proxy/flannel) already use 200m → pod stuck *Pending* "Insufficient cpu". 1700m+100m=1800m/pod fits a worker; 2 pods fill the 2 workers exactly. Updated `deploy/deployment.yaml`, `Plans/PLAN.md`, `Block0.md`, `RESOCONTO.md`, `TEORIA.md`.
2. **EBS 20GB → 40GB.** Explicit 20GB volume < 30GB AMI snapshot → `RunInstances` rejected. Fixed in `infra/01-launch.sh` + docs (40GB gp3, still under the 100GB cap).

## Registry & token hygiene

- Proxy image **public** (`ghcr.io/bobthebot988/llm-proxy:latest`) → AWS nodes pull anonymously, no imagePullSecrets, no registry token.
- Token story cleaned up after rotation: local token file deleted, `ghcr` logged out, `infra/.ghcr-token` gitignored.

## just recipes (Block 2 scope)

```
just kind-up / kind-metrics / kind-load / kind-deploy / kind-test / kind-down
just kind-fast              # offline fast path (reuses images + GGUF)
just case-all / guard-default   # guard trigger tests (mock, no AWS)
```

## Verify (done criteria)

- [x] `/health` via NodePort 30080 → 200 on kind and AWS
- [x] Real generation through the proxy on AWS
- [x] `kubectl get hpa` shows live cpu targets (Metrics Server proof)
- [x] HPA scale-out 1→2 under Locust load (CPU > 60%)
- [x] 0 errors under load (24 req Locust, 0 failures)
- [x] Account clean after session (`just cluster-down`)

## Pending / next session

- Demonstrate **scale-in**: no load for ~10min → HPA returns to 1 pod (stabilization window).
- Block 3 — 5 experimental runs ≥15min (ramp-up → stable → ramp-down) with `kubectl top pods` collector + Locust CSV.

## Session budget

One ~4h session ≈ $0.42 (t3.small $0.02/h + 2x t3.medium $0.042/h runtime only). Terminated at session end.
