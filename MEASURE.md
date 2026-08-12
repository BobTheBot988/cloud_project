# Block 0 — Measurements & evidence (2026-08-12)

## Model & image

- Model: `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (Qwen3.5-0.8B-UD-Q6_K_XL.gguf, 743.76 MiB / 772.85M params) — LOADED, verified working.
- Image: `ghcr.io/ggml-org/llama.cpp:server` — build **10380** (0b1bad14f). Tag `latest` no longer exists on GHCR; `server-b4738` (older) does NOT support arch `qwen35` (unknown model architecture). **Must use `server` tag (rolling) or pin build 10380.**
- Server flags (validated against build 10380 help):
  - `--reasoning` is NOT a valid flag; use `--reasoning on` + `--reasoning-budget 1024`.
  - `--spec-type draft-mtp` does NOT exist in server builds; MTP handled via model metadata.

## Throughput (llama-bench, llama.cpp:server, qwen35 0.8B Q6_K, CPU)

| threads | prompt pp32 (tok/s) | decode tg128 (tok/s) |
|---|---|---|
| 2 | 82.02 | **25.83** |
| 16 | 165.89 | 12.84 (host contended) |

- Host was under load (opencode+firefox ~90% CPU) → 16-thread number degraded. 2-thread number is the k8s-parity figure.
- Server HTTP decode (via /v1/chat/completions, 128 tok): predicted_per_second 10.24 @16thr (contended), **24.65 @2thr (through compose proxy)**.
- **Target ≥21 tok/s: MET at 2 threads** (t3.medium 2 vCPU parity).

## Memory (idle)

- llama-server container RSS: **~345 MB** (model loaded, ctx 2048). Fits t3.medium (4GB) with headroom.

## Runtime latency (locust, 3 users, compose proxy, max_tokens 256, reasoning-budget 1024)

- 16 requests, 0 failures. Avg resp 8.96s, med 7.3s, p95 16s, ~0.27 req/s sustained.
- Latency dominated by reasoning+generation; per-request ~9s at 256 output tokens.

## Sizing recommendations

- Worker: `t3.medium` (2 vCPU, 4GB) — llama-server `--threads 2`, ~26 tok/s.
- `resources.requests.cpu`: llama-server `2000m` (2-thread server saturates a 2-vCPU node under load — clean HPA signal). Proxy `100m`.
- HPA `max 3` on 2 workers is NOT schedulable at 2000m/pod (2 pods = 4 vCPU = full). Options: maxReplicas **2**, or add 3rd worker, or drop request to 1000m (oversubscribe). Decision deferred to Block 2.
- Master `t3.small` unchanged (control plane only).

## Locust sanity (local compose)

- Headless 3 users / 60s against `http://127.0.0.1:8000`: 0 errors, CSV in `results/locust_short_stats.csv`.
