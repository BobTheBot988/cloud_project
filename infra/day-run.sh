#!/usr/bin/env bash
# Purpose: Person B one-shot AWS session driver (Block 3). Runs the Test C
# campaign unattended in ONE Learner Lab session:
#   cluster-up -> deploy + health -> loadgen-up -> Test C @20 users
#   (testC_small/medium/large/mix, RUNS=10, STEADY_MIN=2, fresh llama pod
#   between classes) -> git commit -> teardown.
#
# Everything is driven from the local machine (ssh to master + load-gen,
# exactly like the exp-* scripts). The session timer is handled two ways:
#   1. Test C runs scenario-by-scenario and data is committed at the end of
#      each — a broken scenario never blocks the next.
#   2. Optional Test D (burst) is skipped unless there is clearly enough time
#      left (elapsed < SESSION_HOURS - 25 min).
#   SESSION_HOURS default 4 — this campaign needs ~3.5h, so do NOT set 2.
#
# Re-run/resume safe: phases are idempotent (cluster-up skips a reachable
# cluster, Test C resumes at the first run that is not already valid at the
# target level, data is committed incrementally). `START_AT` jumps to a phase:
#   up|deploy|loadgen|testc|testd|teardown
#
# Env: REGION/AZ1/AZ2 (cluster region), SESSION_HOURS, START_AT, LEVELS_C
#      (default 20), RUNS_C (default 10), STEADY_MIN_C (default 2),
#      TESTC_SCENARIOS, RUNS_D (default 0 = Test D off), LOW_USERS,
#      HIGH_USERS, NORMAL_SECS, BURST_SECS, CYCLES, NO_TEARDOWN=1.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

START_AT="${START_AT:-up}"
SESSION_HOURS="${SESSION_HOURS:-4}"
LEVELS_C="${LEVELS_C:-20}"
RUNS_C="${RUNS_C:-10}"
STEADY_MIN_C="${STEADY_MIN_C:-2}"
RUNS_D="${RUNS_D:-0}"  # 0 = Test D (burst) off; this campaign fills the session
NORMAL_SECS="${NORMAL_SECS:-120}"
BURST_SECS="${BURST_SECS:-60}"
CYCLES="${CYCLES:-2}"
DRIVER_START="$(date +%s)"
CLUSTER_UP_DONE=0
TEARDOWN_DONE=0

log() { echo "[$(date -u +%T)] $*"; }
die() { log "FATAL: $*"; exit 1; }

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)

# persisted cluster/loadgen state from earlier phases or sessions
[ -f "$DIR/.cluster-ips" ] && source "$DIR/.cluster-ips"
[ -f "$DIR/.loadgen-ips" ] && source "$DIR/.loadgen-ips"

# kc: kubectl over ssh to the master (same pattern as collect.sh). Fast calls
# get a 30s cap; kc_long is for rollout/pod-delete which legitimately take
# minutes (image pull + GGUF prefetch) — never route those through kc.
kc() {
  [ -n "${MASTER_PUB:-}" ] || die "no MASTER_PUB (cluster not up?)"
  local kargs="kubectl"
  local a
  for a in "$@"; do printf -v kargs '%s %q' "$kargs" "$a"; done
  timeout 30 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
}

kc_long() {
  [ -n "${MASTER_PUB:-}" ] || die "no MASTER_PUB (cluster not up?)"
  local kargs="kubectl"
  local a
  for a in "$@"; do printf -v kargs '%s %q' "$kargs" "$a"; done
  timeout 720 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
}

master_reachable() {
  [ -n "${MASTER_PUB:-}" ] || return 1
  ssh -i "$SSH_KEY" -o BatchMode=yes -o StrictHostKeyChecking=accept-new -o ConnectTimeout=8 \
      "$SSH_USER@$MASTER_PUB" true 2>/dev/null
}

commit_data() {
  local label="$1"
  shift
  [ "$#" -gt 0 ] || return 0
  cd "$REPO"
  git add -f "$@" 2>/dev/null || true
  if git diff --cached --quiet 2>/dev/null; then
    log "commit($label): nothing new"
  else
    git commit -m "data: Block 3 Person B — $label (day-run AWS session)" >/dev/null \
      && log "commit($label): done" || log "commit($label): FAILED (git identity?)"
  fi
}

# number of the first "bad" run of <scenario> in run_1..<runs>: interrupted,
# missing stats, 0 requests, >=50% errors, or level_users != target level
# (the old dataset was collected at 4 users — it must all be redone at 20).
# Prints 0 when the scenario is already fully valid.
first_bad_run() {
  local scenario="$1" runs="$2" level="$3"
  python3 - "$REPO" "$scenario" "$runs" "$level" <<'PY' || true
import sys, csv, os, re
repo, scenario, runs, level = sys.argv[1], sys.argv[2], int(sys.argv[3]), int(sys.argv[4])
for i in range(1, runs + 1):
    d = f"{repo}/data/raw/{scenario}/run_{i}"
    notes = f"{d}/notes.md"
    if not os.path.exists(notes) or "interrupted=1" in open(notes).read():
        print(i); sys.exit(0)
    m = re.search(r"level_users=(\d+)", open(notes).read())
    if not m or int(m.group(1)) != level:
        print(i); sys.exit(0)   # collected at the wrong intensity
    stats = f"{d}/locust_stats.csv"
    if not os.path.exists(stats):
        print(i); sys.exit(0)
    row = next(csv.DictReader(open(stats)), None)
    if row is None:
        print(i); sys.exit(0)
    reqs = int(row.get("Request Count", 0) or 0)
    fails = int(row.get("Failure Count", 0) or 0)
    if reqs == 0 or (fails / max(reqs, 1)) >= 0.5:
        print(i); sys.exit(0)
print(0)
PY
}

cluster_up() {
  if master_reachable; then
    log "cluster already up ($MASTER_PUB) — skipping launch"
  else
    log "==> cluster-up (WORKERS=$WORKERS, REGION=$REGION, SESSION_HOURS=$SESSION_HOURS)"
    bash "$DIR/01-launch.sh"
    bash "$DIR/bootstrap-all.sh"
    bash "$DIR/02-verify.sh"
    source "$DIR/.cluster-ips"
  fi
  CLUSTER_UP_DONE=1
}

deploy() {
  log "==> deploy manifests + wait Ready + health check"
  local preexisting=""
  kc get deployment llm-proxy >/dev/null 2>&1 && preexisting=1 || true
  scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
    "$REPO/deploy/deployment.yaml" "$REPO/deploy/service.yaml" "$REPO/deploy/hpa.yaml" \
    "$SSH_USER@$MASTER_PUB:/tmp/"
  kc apply -f /tmp/deployment.yaml
  kc apply -f /tmp/service.yaml
  kc apply -f /tmp/hpa.yaml
  kc_long rollout status deployment/llm-proxy --timeout=600s
  if [ -n "$preexisting" ]; then
    log "deployment pre-existed — restarting pod so Test C starts on a fresh llama"
    kc delete pod -l app=llm-proxy --grace-period=0 >/dev/null || true
    kc_long rollout status deployment/llm-proxy --timeout=420s
  fi
  local ok=""
  for _ in $(seq 1 12); do
    if curl -sf --max-time 10 "http://$MASTER_PUB:30080/health" >/dev/null 2>&1; then
      ok=1
      break
    fi
    sleep 10
  done
  [ -n "$ok" ] || die "deployment not healthy at http://$MASTER_PUB:30080/health"
  log "health OK via :30080"
}

loadgen() {
  log "==> loadgen-up (t3.micro + locust venv)"
  bash "$DIR/loadgen-up.sh"
  source "$DIR/.loadgen-ips"
  [ -n "${LOADGEN_PUB:-}" ] || die "loadgen-up did not write .loadgen-ips"
  log "LOADGEN=$SSH_USER@$LOADGEN_PUB"
}

# Test C: the size-isolated campaign @20 users, one scenario per size class
# plus the mix workload (same grid, SIZE=mix). A fresh llama pod is started
# before every scenario after the first (llama-server degrades after ~90min
# of load — the earlier 0-request/RemoteDisconnected runs were this). Each
# scenario resumes from its first run that is not already valid at level 20.
testc() {
  local scenarios sc first idx=0
  scenarios="${TESTC_SCENARIOS:-testC_small testC_medium testC_large testC_mix}"
  export TARGET="http://$MASTER_PUB:30080"
  export LOADGEN="$SSH_USER@$LOADGEN_PUB"
  for sc in $scenarios; do
    idx=$((idx + 1))
    [ "$idx" -gt 1 ] && pod_restart
    first="$(first_bad_run "$sc" "$RUNS_C" "$LEVELS_C")"
    if [ "$first" = 0 ]; then
      log "Test C $sc already valid at level $LEVELS_C — skipping"
      continue
    fi
    log "==> Test C $sc: redo runs $first..$RUNS_C (LEVELS=$LEVELS_C, steady=${STEADY_MIN_C}m)"
    SIZE="${sc#testC_}" SCENARIO="$sc" LEVELS="$LEVELS_C" RUNS="$RUNS_C" RUN_START="$first" \
      STEADY_MIN="$STEADY_MIN_C" FORCE=1 bash "$DIR/exp-b.sh"
  done
  commit_data "Test C @20 users (small/medium/large/mix)" \
    data/raw/testC_small data/raw/testC_medium data/raw/testC_large data/raw/testC_mix
}

pod_restart() {
  log "==> restart llama pod (clear degradation between Test C classes)"
  kc delete pod -l app=llm-proxy --grace-period=0 >/dev/null || true
  kc_long rollout status deployment/llm-proxy --timeout=420s
  log "llama pod back Ready"
}

testd() {
  if [ "${RUNS_D:-0}" -lt 1 ]; then
    log "Test D disabled (RUNS_D=$RUNS_D) — this campaign fills the session"
    return 0
  fi
  local elapsed skip_after
  elapsed=$(( ($(date +%s) - DRIVER_START) / 60 ))
  skip_after=$(( SESSION_HOURS * 60 - 25 ))
  if [ "$elapsed" -gt "$skip_after" ]; then
    log "SKIP Test D: elapsed ${elapsed}m > ${skip_after}m (SESSION_HOURS=$SESSION_HOURS) — guarantee clean teardown"
    return 0
  fi
  log "==> Test D (burst, RUNS=$RUNS_D) [elapsed ${elapsed}m / budget ${SESSION_HOURS}h]"
  export TARGET="http://$MASTER_PUB:30080"
  export LOADGEN="$SSH_USER@$LOADGEN_PUB"
  RUNS="$RUNS_D" LOW_USERS="${LOW_USERS:-2}" HIGH_USERS="${HIGH_USERS:-12}" \
    NORMAL_SECS="$NORMAL_SECS" BURST_SECS="$BURST_SECS" CYCLES="$CYCLES" \
    COLLECT_INTERVAL=20 bash "$DIR/exp-d.sh"
  commit_data "Test D" data/raw/testD
}

teardown() {
  [ "$TEARDOWN_DONE" = 1 ] && return
  TEARDOWN_DONE=1
  if [ "${NO_TEARDOWN:-0}" = 1 ]; then
    log "NO_TEARDOWN=1 — leaving cluster up (manual: just cluster-down)"
    return
  fi
  if [ "$CLUSTER_UP_DONE" = 1 ] || [ -f "$DIR/.cluster-ips" ]; then
    log "==> cluster-down"
    bash "$DIR/03-down.sh" || log "cluster-down failed — run manually: just cluster-down"
  else
    log "cluster never brought up — skipping teardown"
  fi
}
trap teardown EXIT

main() {
  local started=0
  if [ "$START_AT" = teardown ]; then
    teardown
    exit 0
  fi
  for ph in up deploy loadgen testc testd; do
    if [ "$started" = 0 ] && [ "$ph" != "$START_AT" ]; then
      continue
    fi
    started=1
    case "$ph" in
      up)     cluster_up ;;
      deploy) deploy ;;
      loadgen) loadgen ;;
      testc)  testc ;;
      testd)  testd ;;
    esac
  done
  log "==> day-run complete: data committed, teardown on exit"
}

main "$@"
