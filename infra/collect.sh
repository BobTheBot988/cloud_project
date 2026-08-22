#!/usr/bin/env bash
# Purpose: cluster metric collector for Block 3 experiments. Snapshot
# `kubectl top pods` / deployment replicas / HPA state every INTERVAL
# seconds into data/raw/<scenario>/run_<i>/ as CSV, plus an events
# snapshot at stop. Start/stop around each Locust run.
#
# kubectl access is auto-detected: if infra/.cluster-ips exists (AWS
# session) the collector talks to kubectl over ssh to the master; on a
# local kind cluster it uses the local kubectl.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

MODE="${1:?usage: collect.sh start|stop <scenario> <run>}"
SCENARIO="${2:?usage: collect.sh start|stop <scenario> <run>}"
RUN="${3:?usage: collect.sh start|stop <scenario> <run>}"
INTERVAL="${INTERVAL:-60}"

RUN_DIR="$REPO/data/raw/$SCENARIO/run_$RUN"
PID_FILE="$RUN_DIR/.collect.pid"

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)
MASTER_PUB=""

# boiler plate: pick up persisted cluster ips if present (AWS session)
if [ -f "$DIR/.cluster-ips" ]; then
  # shellcheck disable=SC1091
  source "$DIR/.cluster-ips"
fi

# kc: kubectl over ssh to the master, or local kubectl when no cluster state
kc() {
  if [ -n "$MASTER_PUB" ]; then
    local kargs="kubectl"
    local a
    for a in "$@"; do
      printf -v kargs '%s %q' "$kargs" "$a"
    done
    timeout 20 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
  else
    timeout 20 kubectl "$@"
  fi
}

collect_loop() {
  local fails=0
  while true; do
    local ts
    ts=$(date +%s)
    if kc top pods --no-headers | sed "s/^/$ts /" >> "$RUN_DIR/toppods.csv"; then
      fails=0
    else
      fails=$((fails + 1))
    fi
    # jsonpath emits no trailing newline — add one so samples don't glue
    if reps=$(kc get deploy llm-proxy -o jsonpath='{.status.replicas}'); then
      printf '%s\n' "$reps" | sed "s/^/$ts /" >> "$RUN_DIR/replicas.csv"
      fails=0
    else
      fails=$((fails + 1))
    fi
    # HPA by label so variant runs (llm-proxy-exp4/exp6) are captured too
    if kc get hpa -l app=llm-proxy --no-headers | sed "s/^/$ts /" >> "$RUN_DIR/hpa.csv"; then
      fails=0
    else
      fails=$((fails + 1))
    fi
    if [ "$fails" -ge 5 ]; then
      echo "collector: 5 consecutive kubectl failures at $(date +%s)" >> "$RUN_DIR/notes.md" || true
      fails=0
    fi
    sleep "$INTERVAL"
  done
}

start() {
  mkdir -p "$RUN_DIR"
  case "$INTERVAL" in
    ''|*[!0-9]*)
      echo "FATAL: INTERVAL must be an integer >= 1 (got '$INTERVAL')" >&2
      exit 1 ;;
  esac
  if [ "$INTERVAL" -lt 1 ]; then
    echo "FATAL: INTERVAL must be an integer >= 1 (got '$INTERVAL')" >&2
    exit 1
  fi
  if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
    echo "FATAL: collector already running (pid $(cat "$PID_FILE")) for $SCENARIO/run_$RUN" >&2
    exit 1
  fi
  if [ -f "$RUN_DIR/toppods.csv" ] || [ -f "$RUN_DIR/replicas.csv" ] || [ -f "$RUN_DIR/hpa.csv" ] || [ -f "$RUN_DIR/events.csv" ]; then
    if [ "${FORCE:-}" = "1" ]; then
      echo "FORCE=1: wiping existing CSVs + notes in $RUN_DIR"
      rm -f "$RUN_DIR"/toppods.csv "$RUN_DIR"/replicas.csv "$RUN_DIR"/hpa.csv "$RUN_DIR"/events.csv "$RUN_DIR"/notes.md
    else
      echo "FATAL: run dir already has data; use a new run index or FORCE=1" >&2
      exit 1
    fi
  fi
  {
    echo "# scenario=$SCENARIO run=$RUN"
    echo "collect_start=$(date -u +%s)"
    echo "interval_sec=$INTERVAL"
  } > "$RUN_DIR/notes.md"
  if ! kc get nodes >/dev/null 2>&1; then
    echo "WARNING: preflight kubectl probe failed — CSV will be empty; cluster reachable?" >&2
  fi
  ( collect_loop ) > "$RUN_DIR/.collect.log" 2>&1 &
  echo $! > "$PID_FILE"
  echo "collector started pid=$(cat "$PID_FILE") -> $RUN_DIR"
}

stop() {
  if [ ! -f "$PID_FILE" ]; then
    echo "WARNING: collector not running for $SCENARIO/run_$RUN (no pid file)" >&2
    return 1
  fi
  if kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
    kill "$(cat "$PID_FILE")" 2>/dev/null || true
  else
    echo "WARNING: collector pid dead — data may be incomplete" >&2
  fi
  rm -f "$PID_FILE"
  local events
  events=$(kc get events -n default --no-headers --sort-by=.lastTimestamp || true)
  {
    echo "collect_stop=$(date -u +%s)"
    echo "--- events ---"
    echo "$events"
  } >> "$RUN_DIR/notes.md" || true
  echo "$events" >> "$RUN_DIR/events.csv" || true
  echo "collector stopped -> $RUN_DIR"
}

case "$MODE" in
  start) start ;;
  stop) stop ;;
  *) echo "usage: collect.sh start|stop <scenario> <run>"; exit 1 ;;
esac
