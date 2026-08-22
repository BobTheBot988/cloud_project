# Block 3-a — Side A (Scaling & intensity): Phase 0 implementation

Companion to `Plans/Block3.md` (metrics/procedure source of truth) and `Plans/Block3-WORKSPLIT.md` (role split). Scope: **Person A Phase 0** — the offline tooling for Test A (continuous ramp) and Test B (load-capacity curve), plus the local smoke gate. AWS sessions 1-2 execute later with this tooling.

## Deliverables

| File | Content |
|---|---|
| `locustfile.py` (mod) | `SIZE_BUCKETS`: small/medium/large prompts + `max_tokens` 32/128/256; `MIX_POOL` weights P(s)=0.5, P(m)=0.3, P(l)=0.2; `SIZE` env (default `mix`); `generate()` draws prompt + max_tokens from selected bucket |
| `ramp_shape.py` (new) | `LoadTestShape` for Test A: warm-up 60s @1u → ramp 180s 1→U_MAX → steady 600s → ramp-down 180s→0 → drain 600s (scale-in window). U_MAX from env (default 20); durations env-overridable (WARMUP_SECS/RAMP_SECS/STEADY_SECS/RAMPDOWN_SECS/DRAIN_SECS) for dev iterations. Total ~27min/run |
| `infra/collect.sh` (new) | 1/min loop → `data/raw/<scenario>/run_<i>/{toppods,replicas,hpa}.csv` (epoch-ts prefixed) + `events.csv` snapshot at stop + notes.md. `start`/`stop` modes, `INTERVAL` env. kubectl auto-detect: `.cluster-ips` present → ssh-master form; else local `kubectl` (kind) |
| `infra/exp-a.sh` (new) | Test A: per run → collector start → locust headless (`locust -f locustfile.py,ramp_shape.py`, mix, `--csv data/raw/testA/run_<i>/locust`) → collector stop → events → notes.md. N runs. Env: `RUNS`, `U_MAX`, `TARGET`, `LOADGEN` |
| `infra/exp-b.sh` (new) | Test B: for each level in `LEVELS` → N runs fixed-intensity steady. Env: `LEVELS` (default `10 20 30 40 50`, **users**), `STEADY_MIN` (default 8), `RUNS`, `TARGET`, `LOADGEN` |
| `justfile` (mod) | Add `exp-a`, `exp-b`, `collect`, `collect-stop`, `exp-smoke`; (test-prompt SIZE support dropped — recipe uses a CLI prompt) |
| `.gitignore` (mod) | Ignore `data/raw/`, `data/processed/`, `plots/`, `tables/`; commit `data/raw/.gitkeep` |

## Key design decisions

1. **Test B intensity in *users*** — per-request duration varies by size (large ≈ 10s), so req/s per user isn't constant under mix. Users is the honest knob; actual req/s measured and recorded in `notes.md`. Levels `[10 20 30 40 50]` → ~5-25 req/s, ban-safe band.
2. **Load-gen stays in-AWS** (ban risk). exp-a/exp-b support `LOADGEN` ssh target: scp `locustfile.py` + `ramp_shape.py`, run remote, scp CSVs back. **Safety guard:** non-localhost `TARGET` without `LOADGEN` → FATAL refuse. Unset `LOADGEN` + localhost target = Phase 0 smoke path.
3. **kubectl auto-detect in collector** — `infra/.cluster-ips` exists → ssh-master (`02-verify.sh` pattern, sourced from `00-env.sh`); else local `kubectl` for kind smoke. No env fiddling.
4. **HPA CPU% from `kubectl get hpa` field directly** — no 1700m formula at collect time (that's plots-side, Person B).
5. **Locust shape wiring (locust 2.46):** `--shape` flag removed — the shape auto-detects from loaded files, so Test A runs `locust -f locustfile.py,ramp_shape.py`. `--exit-code-on-error 0` so request failures (which are data in experiments) don't fail the run. Locust writes `locust_stats.csv` / `locust_failures.csv` (not `_requests.csv`).
6. **Review-fix pass:** SIZE/ramp env validation; ban-guard rejects loopback-TARGET+LOADGEN and parses host (no false FATALs on localhost variants); exp scripts + smoke have trap EXIT cleanup; collector has preflight probe, rerun protection (FORCE=1), events fetched once; CSV pull verified non-empty (`test -s`).

## Phase 0 gate: `just exp-smoke`

Compose up → 1-user locust ~20s per bucket (small/medium/large) against local stack → assert 0 failures + non-empty responses → compose down. Proves buckets work before any AWS spend.

## Time estimates (defaults)

- Test A: 5 runs × ~27min ≈ 135min ✓ (A session 1, 2h budget)
- Test B: 5 levels × 5 runs × 8min ≈ 200min ≈ 3.3h — **~20min over A's 3h budget**; trim lever: fewer levels or `STEADY_MIN` 6 (→ ~2.7h). N≥5 per scenario is the hard requirement.

## Deferred (not in this pass)

- `loadgen-up`, `exp-c/exp-d` (Person B), plots/sanity pipeline (B), R4 (B), AWS sessions 1-2 (need Learner Lab).

## Doc sync (AGENTS rule: update docs when impl changes)

- `AGENTS.md`: repo layout (`locustfile.py` buckets+mix, `ramp_shape.py`, `infra/collect.sh`, `infra/exp-a.sh`, `infra/exp-b.sh`, `data/` layout) + Commands (`exp-a`, `exp-b`, `collect`, `exp-smoke`).
- `Plans/PLAN.md`: Block 3 status → Phase 0 prep done, recipes listed.
- `Plans/RESOCONTO.md` §9 + §8: Block 3 in progress; command table += new recipes.

## Rehearsal on kind (done, de-risks AWS sessions)

Full pipeline validated against a live kind cluster (2 workers, HPA, real model):

- **Test A (shortened):** collector captured `replicas` **1→2** scale-out, per-pod CPU (toppods.csv), HPA current/target (hpa.csv), and the `SuccessfulRescale` event in events.csv; locust_stats.csv shows real LLM latencies (avg ~20s, large buckets), 42 reqs / 1 transient fail (HPA churn from a manual scale, not the run).
- **Test B (shortened):** 16 reqs, 0 failures, level metadata in notes.md, HPA scale events captured.
- **Bug found & fixed:** `replicas.csv` was gluing samples into one line (`kubectl` jsonpath emits no trailing newline) → collector now `printf '%s\n'` + explicit `&&`/`||` so failure counting still works.
- **Bug found & fixed (readiness flap):** under CPU saturation the proxy `/health` upstream probe (2s timeout) failed → pod NotReady → empty endpoints → NodePort `Connection refused` → mass request failures at exactly the moment scale-out matters. Fixed: proxy `PROBE_TIMEOUT` 2s→10s + k8s readinessProbe `periodSeconds 10 / timeoutSeconds 5 / failureThreshold 3`. Re-verified on kind: both pods stay Ready at ~100% CPU, 0 refused. **Requires pushing the rebuilt proxy image to GHCR before AWS** (needs a PAT with `write:packages`; the gh CLI token lacks that scope).
- **Lesson:** exp scripts default `TARGET` to the local compose proxy (`:8000`) — always pass `TARGET=http://<node>:30080` for cluster runs (the ban-guard allows loopback, so the wrong-port mistake isn't caught; verified the whole pipeline against `:8000` produces all-refused data).
- **Lesson (AWS, Session 1):** llama-server default `--parallel 1` → concurrent load returns 503 (busy) + 502/504 → error storm (65% at U_MAX=20). Fixed: `--parallel 2` in all llama-server manifests (deploy + kind-fast + compose). Re-verified 0 failures under load. U_MAX tuned 20→12 (10 users already saturate a worker; 20 risks 300s timeout tails on the queue).

## AWS Session runbook (Side A — Sessions 1-2)

Pre-session (fresh Learner Lab):
1. Re-fetch AWS creds + `~/.ssh/labsuser.pem` (per-session). `just cost` before spending.
2. **Push the rebuilt proxy image to GHCR** (readiness fix): `docker login ghcr.io -u BobTheBot988 --password-stdin` (PAT with `write:packages`, not the gh token) then `docker push ghcr.io/bobthebot988/llm-proxy:latest`. Nodes pull anonymously.
3. `just cluster-up` → 3 nodes Ready (Metrics Server + HPA active).
4. `kubectl apply -f deploy/` → pod `2/2 Running`, `/health` 200 via `:30080`, `kubectl get endpoints llm-proxy` non-empty, `kubectl get hpa` shows a CPU target (not `<unknown>`).
5. Load-gen node must be up with `locust` installed and `locustfile.py` reachable via `LOADGEN=<user>@<host>` (Person B's `loadgen-up`).

Session 1 — Test A (operator A):
- `TARGET=http://<master>:30080 LOADGEN=<user>@<host> U_MAX=20 RUNS=5 just exp-a`
- Runs ~27 min each (~2.3h). Monitor once: `kubectl get hpa -w` + collector files.
- Watch scale-in: drain phase holds zero load ≥10 min → expect `2→1` in `replicas.csv` + `SuccessfulRescale ... below target` event.
- **Handoff:** `git add -f data/raw/testA/` + commit → B processes plot 1 + scale latencies while A runs Session 2.

Session 2 — Test B (operator A):
- `TARGET=http://<master>:30080 LOADGEN=<user>@<host> LEVELS="10 20 30 40 50" STEADY_MIN=8 RUNS=5 just exp-b`
- ~3.3h (trim: `STEADY_MIN=6` or fewer levels to fit 3h; N≥5 is the hard requirement).
- **Handoff:** `git add -f data/raw/testB/` + commit → B produces plots 2-4; **cluster handoff to B for Test C** after `just cluster-down`.

Both sessions: `just cluster-down` at end (budget rule), account clean (0 instances, 0 EIP).

## Results (Sessions 1-2, AWS us-west-2)

**Test A — N=5 complete** (`data/raw/testA/run_1..5`). All runs show scale-out 1→2 (CPU crossing 60%) AND scale-in 2→1 (drain, ≥10min zero load) in `replicas.csv`; `SuccessfulRescale` events in runs 2-5 (run_1's `events.csv` was lost to the ssh hang). Totals: 1142 reqs, 89 fails (**7.8%**, per-run 0-13%; run_5 clean at 0%). Avg response 35-49s, p95 72-90s. U_MAX=12, `--parallel 2`.

**Test B — 25 runs** (`data/raw/testB/run_1..25`). STEADY_MIN=6. **All levels 10/20/30/40/50 = 5 runs each (N=5)**; level 50 runs 24-25 completed in a follow-up session (initial teardown lost them; stray level-10 `run_24` removed). Totals: ~1830 reqs, ~759 fails (~42% overall). Error rate noisy per run but trends up with intensity: 10u 0-35% (run_1 outlier 91%), 20u 0-55%, 30u 0-34%, 40u 29-68%, 50u 5-75% (avg ~39%). Failure split: 503 busy=260, 504 timeout=221, 502=135. **p95 pins at 300s** (proxy timeout) at high intensity → compute saturation at max 2 pods; pods steady at 2 for all levels ≥10 users (maxReplicas cap).

**Gotcha fixed on the fly:** exp-b `RUN_START` resume must keep `RUNS` = per-level runs (5), not the total grid — a `RUNS=25` resume replayed wrong levels and mislabeled runs (stray `run_24` is level 10, not level 50; see `HANDOFF.md`).

**Teardown:** clean — EIP + SG released, instances gone (lab reclaimed at session end), creds revoked (`voc-cancel-cred`).

## Handoff to B

`HANDOFF.md` (repo root): what B owns (plots 1-4, `sanity`, Test C/D, R4), the gotchas above, and commands. B starts now.
