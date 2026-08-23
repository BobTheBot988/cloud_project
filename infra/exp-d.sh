#!/usr/bin/env bash
# Purpose: run Test D (bursty workload) — N repeats of a Locust run shaped
# by burst_shape.py (normal baseline -> short burst, repeated CYCLES
# times). Data into data/raw/testD/run_<i>/; the collector runs at higher
# resolution (COLLECT_INTERVAL=20s) because bursts are short.
#
# Env: RUNS (default 3), LOW_USERS (default 2), HIGH_USERS (default 12),
#      NORMAL_SECS (default 120), BURST_SECS (default 60), CYCLES (default 2),
#      COLLECT_INTERVAL (default 20), TARGET (default http://127.0.0.1:8000),
#      LOADGEN (ssh user@host, required when TARGET is not localhost).
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

RUNS="${RUNS:-3}"
RUN_START="${RUN_START:-1}"
LOW_USERS="${LOW_USERS:-2}"
HIGH_USERS="${HIGH_USERS:-12}"
NORMAL_SECS="${NORMAL_SECS:-120}"
BURST_SECS="${BURST_SECS:-60}"
CYCLES="${CYCLES:-2}"
COLLECT_INTERVAL="${COLLECT_INTERVAL:-20}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
SCENARIO=testD

# shell-quote a value for safe embedding into the remote ssh command
q() { printf '%q' "$1"; }

# ban-risk guard: never drive a remote NodePort from outside AWS.
# Loopback hosts = localhost, 127.*, ::1; everything else needs LOADGEN.
host="${TARGET#*://}"
host="${host%:*}"
host="${host#[}"
host="${host%]}"
host="${host,,}"
case "$host" in
  localhost|127.*|::1) is_loopback=1 ;;
  *) is_loopback=0 ;;
esac
if [ "$is_loopback" -eq 1 ] && [ -n "$LOADGEN" ]; then
  echo "FATAL: TARGET=$TARGET is localhost but LOADGEN is set — the load-gen node would hit its own localhost, not the proxy. Set TARGET to the master NodePort URL (http://<MASTER_IP>:30080)."
  exit 1
fi
if [ "$is_loopback" -eq 0 ] && [ -z "$LOADGEN" ]; then
  echo "FATAL: TARGET=$TARGET is not localhost but LOADGEN is unset. Load must be generated from inside AWS. Set LOADGEN=<user>@<host>."
  exit 1
fi

# numeric validation
for v in LOW_USERS HIGH_USERS NORMAL_SECS BURST_SECS CYCLES; do
  val="${!v}"
  if [[ ! "$val" =~ ^[0-9]+$ ]] || [ "$val" -lt 1 ]; then
    echo "FATAL: $v '$val' is not an integer >= 1"
    exit 1
  fi
done

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)

run_locust() {
  local run_dir="$1"
  if [ -n "$LOADGEN" ]; then
    # remote: run locust on the in-AWS load-gen node, pull CSVs back
    ssh "${SSH_OPTS[@]}" "$LOADGEN" "mkdir -p /tmp/exp"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$REPO/locustfile.py" "$REPO/burst_shape.py" "$LOADGEN:/tmp/exp/"
    timeout "${LOCUST_MAX:-1800}" ssh "${SSH_OPTS[@]}" "$LOADGEN" \
      "cd /tmp/exp && export PATH=/tmp/exp/.venv/bin:\$HOME/.local/bin:\$PATH && LOW_USERS=$(q "$LOW_USERS") HIGH_USERS=$(q "$HIGH_USERS") NORMAL_SECS=$(q "$NORMAL_SECS") BURST_SECS=$(q "$BURST_SECS") CYCLES=$(q "$CYCLES") locust -f locustfile.py,burst_shape.py --headless --host $(q "$TARGET") --exit-code-on-error 0 --csv /tmp/exp/locust < /dev/null" || true
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:/tmp/exp/locust_stats.csv" "$LOADGEN:/tmp/exp/locust_failures.csv" "$run_dir/"
    if ! test -s "$run_dir/locust_stats.csv" || ! test -s "$run_dir/locust_failures.csv"; then
      echo "FATAL: missing locust CSV after remote run"
      exit 1
    fi
  else
    # local: run locust from the repo (phase-0 smoke path)
    LOW_USERS="$LOW_USERS" HIGH_USERS="$HIGH_USERS" NORMAL_SECS="$NORMAL_SECS" BURST_SECS="$BURST_SECS" CYCLES="$CYCLES" \
      .venv/bin/locust -f locustfile.py,burst_shape.py --headless \
      --host "$TARGET" --exit-code-on-error 0 --csv "$run_dir/locust"
  fi
}

CUR_RUN_DIR=""
CUR_SCENARIO="$SCENARIO"
CUR_RUN=""

cleanup() {
  if [ -n "$CUR_RUN_DIR" ] && [ -f "$CUR_RUN_DIR/.collect.pid" ]; then
    bash "$DIR/collect.sh" stop "$CUR_SCENARIO" "$CUR_RUN" || true
    {
      echo "interrupted=1"
      echo "run_end=$(date -u +%s)"
    } >> "$CUR_RUN_DIR/notes.md"
  fi
}
trap cleanup EXIT

for i in $(seq "$RUN_START" "$RUNS"); do
  CUR_RUN_DIR="$REPO/data/raw/$SCENARIO/run_$i"
  CUR_SCENARIO="$SCENARIO"
  CUR_RUN="$i"
  if [ "${FORCE:-0}" = "1" ]; then
    rm -rf "$CUR_RUN_DIR"
  elif [ -d "$CUR_RUN_DIR" ] && [ -n "$(ls -A "$CUR_RUN_DIR" 2>/dev/null)" ]; then
    echo "FATAL: run dir $CUR_RUN_DIR already has data; use a new run index or FORCE=1"
    exit 1
  fi
  mkdir -p "$CUR_RUN_DIR"
  echo "==> Test D run $i/$RUNS (burst: LOW=$LOW_USERS HIGH=$HIGH_USERS NORMAL=${NORMAL_SECS}s BURST=${BURST_SECS}s x$CYCLES)"
  INTERVAL="$COLLECT_INTERVAL" bash "$DIR/collect.sh" start "$SCENARIO" "$i"
  RUN_START_TS=$(date -u +%s)
  {
    echo "run=$i"
    echo "run_start=$RUN_START_TS"
    echo "test=TestD(bursty)"
    echo "low_users=$LOW_USERS high_users=$HIGH_USERS normal_secs=$NORMAL_SECS burst_secs=$BURST_SECS cycles=$CYCLES"
    echo "target=$TARGET loadgen=${LOADGEN:-local}"
    echo "runs_total=$RUNS"
  } >> "$CUR_RUN_DIR/notes.md"
  run_locust "$CUR_RUN_DIR"
  INTERVAL="$COLLECT_INTERVAL" bash "$DIR/collect.sh" stop "$SCENARIO" "$i"
  {
    echo "run_end=$(date -u +%s)"
    echo "interrupted=0"
  } >> "$CUR_RUN_DIR/notes.md"
  echo "    done -> $CUR_RUN_DIR"
done

echo "==> Test D complete: $((RUNS - RUN_START + 1)) runs in data/raw/$SCENARIO/"
