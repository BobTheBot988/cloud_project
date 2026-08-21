# Block 3-a — Side A (Scaling & intensity): Phase 0 implementation

Companion to `Plans/Block3.md` (metrics/procedure source of truth) and `Plans/Block3-WORKSPLIT.md` (role split). Scope: **Person A Phase 0** — the offline tooling for Test A (continuous ramp) and Test B (load-capacity curve), plus the local smoke gate. AWS sessions 1-2 execute later with this tooling.

## Deliverables

| File | Content |
|---|---|
| `locustfile.py` (mod) | `SIZE_BUCKETS`: small/medium/large prompts + `max_tokens` 32/128/256; `MIX_POOL` weights P(s)=0.5, P(m)=0.3, P(l)=0.2; `SIZE` env (default `mix`); `generate()` draws prompt + max_tokens from selected bucket |
| `ramp_shape.py` (new) | `LoadTestShape` for Test A: warm-up 60s @1u → ramp 180s 1→U_MAX → steady 600s → ramp-down 180s→0 → drain 600s (scale-in window). U_MAX from env (default 20); durations env-overridable (WARMUP_SECS/RAMP_SECS/STEADY_SECS/RAMPDOWN_SECS/DRAIN_SECS) for dev iterations. Total ~27min/run |
| `infra/collect.sh` (new) | 1/min loop → `data/raw/<scenario>/run_<i>/{toppods,replicas,hpa}.csv` (epoch-ts prefixed) + `events.csv` snapshot at stop + notes.md. `start`/`stop` modes, `INTERVAL` env. kubectl auto-detect: `.cluster-ips` present → ssh-master form; else local `kubectl` (kind) |
| `infra/exp-a.sh` (new) | Test A: per run → collector start → locust headless (`--shape ramp_shape`, mix, `--csv data/raw/testA/run_<i>/locust`) → collector stop → events → notes.md. N runs. Env: `RUNS`, `U_MAX`, `TARGET`, `LOADGEN` |
| `infra/exp-b.sh` (new) | Test B: for each level in `LEVELS` → N runs fixed-intensity steady. Env: `LEVELS` (default `10 20 30 40 50`, **users**), `STEADY_MIN` (default 8), `RUNS`, `TARGET`, `LOADGEN` |
| `justfile` (mod) | Add `exp-a`, `exp-b`, `collect`, `collect-stop`, `exp-smoke`; `SIZE` env support on `test-prompt` |
| `.gitignore` (mod) | Ignore `data/raw/`, `data/processed/`, `plots/`, `tables/`; commit `data/raw/.gitkeep` |

## Key design decisions

1. **Test B intensity in *users*** — per-request duration varies by size (large ≈ 10s), so req/s per user isn't constant under mix. Users is the honest knob; actual req/s measured and recorded in `notes.md`. Levels `[10 20 30 40 50]` → ~5-25 req/s, ban-safe band.
2. **Load-gen stays in-AWS** (ban risk). exp-a/exp-b support `LOADGEN` ssh target: scp `locustfile.py` + `ramp_shape.py`, run remote, scp CSVs back. **Safety guard:** non-localhost `TARGET` without `LOADGEN` → FATAL refuse. Unset `LOADGEN` + localhost target = Phase 0 smoke path.
3. **kubectl auto-detect in collector** — `infra/.cluster-ips` exists → ssh-master (`02-verify.sh` pattern, sourced from `00-env.sh`); else local `kubectl` for kind smoke. No env fiddling.
4. **HPA CPU% from `kubectl get hpa` field directly** — no 1700m formula at collect time (that's plots-side, Person B).
5. **Locust shape wiring (locust 2.46):** `--shape` flag removed — the shape auto-detects from loaded files, so Test A runs `locust -f locustfile.py,ramp_shape.py`. `--exit-code-on-error 0` so request failures (which are data in experiments) don't fail the run. Locust writes `locust_stats.csv` / `locust_failures.csv` (not `_requests.csv`).

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
