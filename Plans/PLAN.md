# Plan — Learner Lab: FastAPI + llama.cpp autoscaling

## Locked decisions

| Item   | Value |
| ------ | ------------------------------------------------------------------------------------------------------------- |
| model  | `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (791MB) — alt `Q6_K` (658MB) |
| engine | `llama-server` (llama.cpp), NOT llama-cli, NOT vLLM |
| image  | `ghcr.io/ggml-org/llama.cpp:server` (build 10380; tag `latest` removed from GHCR) |
| proxy  | FastAPI thin: `GET /health`, `POST /generate` -> `:8080`, env `LLAMA_CPP_URL` + `SYSTEM_PROMPT` |
| pod    | sidecar: llama-server + fastapi-proxy, shared emptyDir; initContainer prefetch GGUF |
| HPA    | cpu avg, `min 1 max 2` (2000m/pod on 2x t3.medium = 2 pods max; verified scaling on kind) |
| infra  | master `t3.small`, 2x worker `t3.medium`, Amazon Linux 2023, us-east-1, k8s v1.36 |
| quotas | hard caps enforced in code: <=8 instances, <=31 vCPU, instance size <= medium (Learner Lab) |
| target | >=21 tok/s gen; LLM decode-driven CPU -> real scaling signal |

## Why not vLLM

- vLLM is a GPU-server tool; Learner Lab is CPU-only t-series.
- Torch CPU backend eats ~0.5-1GB RAM + overhead -> on 4GB node leaves ~2.5GB, no scaling headroom.
- CPU inference slower than llama.cpp for small models.
- vLLM image 4-8GB vs llama.cpp ~100MB -> slow pulls.
- Proxy speaks OpenAI-compat `/v1/chat/completions`; if a GPU ever shows up, swap sidecar only, proxy unchanged.

## Block 0 — Local dev + test (out of AWS) — COMPLETED

As-built record + locked decisions + final YAML sketch: `Plans/Block0.md`. Evidence: `MEASURE.md`, `tests/`, `compose.yaml`, `deploy/`, `justfile`.

## Block 1 — Cluster setup — IMPLEMENTED (AWS run pending)

Scripts committed in `infra/`, driven by `just`. Manual session runbook: `Plans/BLOCK1-SETUP.md`.

- `00-env.sh` — vars + quota constants (8/31/<=medium) + vCPU map + tripwire
- `01-launch.sh` — quota guards -> SG -> launch master+workers (vockey, LabInstanceProfile, tags) -> EIP -> wait SSH
- `bootstrap.sh master|worker` — AL2023: k8s repo v1.36 -> kubelet/kubeadm/kubectl -> containerd (systemd_cgroup) -> SELinux off -> swapoff -> sysctl -> firewalld off -> `kubeadm init` -> Flannel -> Metrics Server
- `bootstrap-all.sh` — orchestrate master + workers, join-token extraction, exact-word Ready gate
- `02-verify.sh` — nodes/pods/`kubectl top node` (Metrics Server proof)
- `03-down.sh` — terminate (EIP captured pre-terminate), release EIP, delete SG

SG ports: `22, 6443, 2379-2380, 10250-10252, 8472/udp, 30000-32767` (NodePort range).

just recipes: `launch`, `cluster-up`, `cluster-verify`, `cluster-down`.

Quota guards never bypass: count ALL running/stopped/pending instances, fail-closed vCPU map, size ceiling, tripwire on constants, flock serialization.

## Testing locally (kind)

Manifests validated on a local kind cluster before AWS:
```
kind create cluster --config kind-config.yaml      # control-plane + 2 workers + NodePort 30080
docker build -t ghcr.io/llm-proxy:latest .         # (or podman build)
kind load docker-image ghcr.io/llm-proxy:latest
kubectl apply -f deploy/                            # deployment + service + hpa
curl http://127.0.0.1:30080/health                 # via NodePort
```

## Block 2 — Deploy + HPA (1 session)

- Proxy image pushed to GHCR (`ghcr.io/bobthebot988/llm-proxy:latest`, **public** — anonymous pull, no imagePullSecrets needed on AWS). Token in `infra/.ghcr-token` (gitignored) used only for future pushes.
- Apply Deployment -> `curl` via NodePort -> "pods ready".
- Apply Service + HPA -> `kubectl get hpa` shows data (debug Metrics Server _now_ if not).
- Locust 2-5 fake users -> confirm scaling visibly starts (kind already proved scale-out at 91%/60%).

## Block 3 — Experimental runs (1-2 sessions, budget-frugal)

- Collector: `kubectl top pods` at interval + Locust CSV -> `run_1`, `run_2`, ...
- 5 solid runs >=15 min (ramp-up -> stable -> ramp-down). Shut instances after.

## Block 4 — Analysis, report (out of AWS)

- Average datapoints across runs.
- Graphs: pods vs time, response-time vs load, throughput, error rate.
- Load generated vs received vs system response relationship.
- 6-month cost from EC2 sizing; compare vs paid external LLM API.
- Course report (all member names) + 15-min presentation.

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
      fastapi-proxy: image ghcr.io/llm-proxy (env LLAMA_CPP_URL=http://127.0.0.1:8080,
                    SYSTEM_PROMPT=...) resources: requests cpu 100m
    readinessProbe: /health
Service: NodePort (80 -> 30080) for curl test
HPA: scaleTargetRef Deployment, cpu target 60%, min 1 max 2-3 (see MEASURE.md capacity note)
```

## Quant note

UD-Q6_K_XL (791MB) chosen and verified — 25.8 tok/s @ 2 threads (llama-bench), 24.65 tok/s via server HTTP. Alt Q6_K (658MB) available if disk tight. Full evidence: `MEASURE.md`.

## Instance cost guide

- t3.small ~$0.02/h, t3.medium ~$0.042/h, t3.large ~$0.08/h (runtime only, off between sessions).
