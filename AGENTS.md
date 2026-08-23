# AGENTS.md — Learner Lab: FastAPI + llama.cpp autoscaling

University project: scale an LLM inference service (Qwen3.5-0.8B via llama.cpp) with Kubernetes HPA on AWS Academy Learner Lab.

## Repo layout

| Path | What |
|---|---|
| `app/main.py` | FastAPI proxy: `GET /health` (upstream probe 200/503), `POST /generate` (OpenAI-compat passthrough, streaming, error map, 300s timeout). Env: `LLAMA_CPP_URL`, `SYSTEM_PROMPT` (injected unless client sends one) |
| `tests/test_proxy.py` | pytest, httpx MockTransport, 11 tests |
| `compose.yaml` + `Dockerfile` | local llama-server + proxy (k8s dry-run), podman-compose |
| `locustfile.py` | Locust load: size buckets small/medium/large (max_tokens 32/128/256) + weighted mix pool (0.5/0.3/0.2), `SIZE` env (default `mix`, validated at import — exit 1 on unknown, empty→mix), POST /generate; per-request detail capture `{ts,size,total_ms,upstream_ms}` → `requests_detail.csv` (DETAIL_CSV env; upstream_ms from `X-Upstream-Ms` header) |
| `ramp_shape.py` | Test A `LoadTestShape`: warm-up→ramp→steady→ramp-down→drain (~27min, env-overridable durations WARMUP_SECS/RAMP_SECS/STEADY_SECS/RAMPDOWN_SECS/DRAIN_SECS) |
| `burst_shape.py` | Test D `LoadTestShape`: normal baseline ↔ burst, CYCLES× (env: LOW_USERS/HIGH_USERS/NORMAL_SECS/BURST_SECS/CYCLES) |
| `plots/analyze.py` | variant analysis (exp2/exp4/exp6): capacity/p95/error/availability vs level, delay breakdown total vs upstream vs orchestrator, per size class → PNGs + CSV into `artifacts/` (`just plots`) |
| `HANDOFF.md` | Block 3 Person A→B handoff: what B owns + gotchas (SIZE trap, uneven N, level mapping, git add -f) |
| `deploy/` | k8s manifests: deployment (sidecar, initContainer prefetch), deployment-kind-fast (hostPath GGUF, kind only), service (NodePort 30080), hpa (cpu 60%, min 1 max 2) + hpa-exp4 (max 4) / hpa-exp6 (max 6) variants; llama-server args include `--parallel 2` |
| `infra/` | EC2 lifecycle scripts (quota-guarded) + `guards.sh` (shared guard logic + `sweep_stale` + `workers_ceiling`), `kind-fast.sh` (offline kind run), `tests/` (guard trigger tests), Block 3: `collect.sh` (kubectl metric collector), `exp-a.sh`/`exp-b.sh` (Test A/B orchestrators; exp-b takes `SCENARIO`, `RUN_START` multi-session resume, ban-guard: remote TARGET requires in-AWS `LOADGEN`), `exp-c.sh` (size-isolated Test C), `exp-d.sh` (Test D burst), `loadgen-up.sh` (in-AWS locust node, quota-guarded +1/+2), `exp-smoke.sh` (local gate), `plots.py` (B offline pipeline: sanity + Test A/B plots + report), `r4_cost.py` (6-month cost vs Lambda); `WORKERS` env scales cluster nodes (exp4=4, exp6=6) |
| `data/raw/` | Block 3 per-run CSVs: `run_<i>/{toppods,replicas,hpa,events}.csv`, `locust_stats.csv`, `notes.md` (gitignored; commit with `git add -f`). Test A runs 1-5 (N=5), Test B runs 1-25 (all levels N=5) |
| `kind-config.yaml` | local kind cluster (control-plane + 2 workers, NodePort 30080) |
| `justfile` | recipes: test, test-prompt, up/down, launch/cluster-up/cluster-verify/cluster-down, kind-up/load/metrics/deploy/test/fast/down, case-0/1/2 + aliases, guard-default, case-all, exp-a/exp-b/collect/collect-stop/exp-smoke, exp4/exp6 (+ -up/launch4/launch6), exp-c/exp-d/loadgen-up, plots/plots-b/sanity/report/r4 |
| `artifacts/` | variant plot PNGs + tables from `just plots` (gitignored; commit with `-f`) |
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
- llama-server flags: `--reasoning off` (no `--reasoning`/`--spec-type`/`--reasoning-budget` in server builds); runs with `--parallel 2` (single-slot 503 storm fix — concurrent load rejected with 503 otherwise).
- Learner Lab session **region varies** (us-east-1 OR us-west-2); creds token is region-scoped. Launch with `REGION=<region> AZ1=<az> AZ2=<az>` overrides; keypair `vockey` may need importing per region (see `BLOCK1-SETUP.md`); `01-launch.sh` persists `REGION` into `.cluster-ips` so teardown targets the right region.
- Locust 2.46 writes `locust_stats.csv`/`locust_failures.csv` (not `_requests.csv`); exp runs use `--exit-code-on-error 0` so request failures (data, not harness errors) don't fail the run.
- exp-a/exp-b remote branch: PATH-robust locust (`/tmp/exp/.venv/bin`), ssh hardened (ServerAlive + `</dev/null` + local `timeout` wrapper) after a 30-min ssh hang; `plots/analyze.py` built (variants); **exp-c built** (size-isolated Test C runner, `just exp-c`); exp-d/loadgen-up + B offline pipeline (`plots.py`/`r4_cost.py`) built by Person B.
- **WORKERS quota math** (guards.sh): launch footprint = master + WORKERS workers + 1 loadgen = `WORKERS+2` instances / `2×WORKERS+4` vCPU. `workers_ceiling` fails WORKERS that can't fit even on an empty account (WORKERS=7 → FATAL). exp4=6 inst/12 vCPU, exp6=8 inst/16 vCPU (**exp6 sits at the 8-instance cap**). NEVER raise WORKERS above 6.
- Proxy `X-Upstream-Ms` header = proxy→llama round-trip (fine-grained delay split: total − upstream = orchestrator+transport). Requires the GHCR image with timing build pushed (upload flaky — verify before AWS sessions).
- k8s v1.36 via pkgs.k8s.io el9 rpm on AL2023 (not RHEL; static-binary fallback if rpm set fails).
- Learner Lab hard caps enforced in `infra/01-launch.sh`: <=8 instances, <=31 vCPU, size <= medium. Never weaken; account deactivation = total loss. `sweep_stale` also terminates our `stopped` instances from prior sessions (lab auto-restarts them) and blocks launch if a live cluster is running.
- Learner Lab safety hardening (SG self-referencing, EIP leak sweep, `just cost`): `Plans/HARDENING.md`.
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
just exp-smoke                # local size-bucket smoke gate (compose)
just exp-a / exp-b            # Block 3 Test A ramp / Test B sweep (AWS: set LOADGEN + TARGET)
just exp4 / exp6              # variant sweeps: HPA max 4/6, WORKERS=4/6 cluster, N=20/level
just exp-c                    # size-isolated Test C (small/medium/large sweeps)
just collect / collect-stop   # kubectl metric collector start/stop
just plots                    # variant analysis -> artifacts/
just launch / cluster-up / cluster-verify / cluster-down   # EC2 lifecycle
```

## Conventions

- No code comments unless asked. Code/commits normal English; conversation may be caveman-terse.
- Don't commit AWS creds or `infra/.cluster-ips` (gitignored).
