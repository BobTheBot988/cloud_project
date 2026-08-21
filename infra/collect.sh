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

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)
MASTER_PUB=""

# boiler plate: pick up persisted cluster ips if present (AWS session)
if [ -f "$DIR/.cluster-ips" ]; then
  # shellcheck disable=SC1091
  source "$DIR/.cluster-ips"
fi

# kc: kubectl over ssh to the master, or local kubectl when no cluster state
kc() {
  if [ -n "$MASTER_PUB" ]; then
    ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf kubectl $*"
  else
    kubectl "$@"
  fi
}

collect_loop() {
  while true; do
    local ts
    ts=$(date +%s)
    { echo "# ts=$ts"; kc top pods --no-headers | sed "s/^/$ts /"; } >> "$RUN_DIR/toppods.csv" || true
    kc get deploy llm-proxy -o jsonpath='{.status.replicas}' | sed "s/^/$ts /" >> "$RUN_DIR/replicas.csv" || true
    kc get hpa llm-proxy --no-headers | sed "s/^/$ts /" >> "$RUN_DIR/hpa.csv" || true
    sleep "$INTERVAL"
  done
}

start() {
  mkdir -p "$RUN_DIR"
  {
    echo "# scenario=$SCENARIO run=$RUN"
    echo "collect_start=$(date -u +%s)"
    echo "interval_sec=$INTERVAL"
  } > "$RUN_DIR/notes.md"
  ( collect_loop ) > "$RUN_DIR/.collect.log" 2>&1 &
  echo $! > "$PID_FILE"
  echo "collector started pid=$(cat "$PID_FILE") -> $RUN_DIR"
}

stop() {
  if [ ! -f "$PID_FILE" ]; then
    echo "collector not running for $SCENARIO/run_$RUN"; exit 0
  fi
  kill "$(cat "$PID_FILE")" 2>/dev/null || true
  rm -f "$PID_FILE"
  {
    echo "collect_stop=$(date -u +%s)"
    echo "--- events ---"
    kc get events -n default --sort-by=.lastTimestamp
  } >> "$RUN_DIR/notes.md" || true
  kc get events -n default --sort-by=.lastTimestamp >> "$RUN_DIR/events.csv" || true
  echo "collector stopped -> $RUN_DIR"
}

case "$MODE" in
  start) start ;;
  stop) stop ;;
  *) echo "usage: collect.sh start|stop <scenario> <run>"; exit 1 ;;
esac
