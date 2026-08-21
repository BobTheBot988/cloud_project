#!/usr/bin/env bash
# Purpose: run Test A (continuous ramp) — N repeats of the
# warm-up -> ramp-up -> steady -> ramp-down -> drain shape (mix workload).
# Per run: metric collector on -> Locust (ramp_shape) -> collector off,
# data into data/raw/testA/run_<i>/.
#
# Env: RUNS (default 5), U_MAX (default 20), SIZE (default mix),
#      TARGET (default http://127.0.0.1:8000), LOADGEN (ssh user@host,
#      required when TARGET is not localhost — load must stay in AWS).
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

RUNS="${RUNS:-5}"
RUN_START="${RUN_START:-1}"
U_MAX="${U_MAX:-20}"
SIZE="${SIZE:-mix}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
SCENARIO=testA

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

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)

run_locust() {
  local run_dir="$1"
  if [ -n "$LOADGEN" ]; then
    # remote: run locust on the in-AWS load-gen node, pull CSVs back.
    # timeout guards against a hung ssh session stalling the whole run.
    ssh "${SSH_OPTS[@]}" "$LOADGEN" "mkdir -p /tmp/exp"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$REPO/locustfile.py" "$REPO/ramp_shape.py" "$LOADGEN:/tmp/exp/"
    timeout "${LOCUST_MAX:-2400}" ssh "${SSH_OPTS[@]}" "$LOADGEN" \
      "cd /tmp/exp && export PATH=/tmp/exp/.venv/bin:\$HOME/.local/bin:\$PATH && SIZE=$(q "$SIZE") U_MAX=$(q "$U_MAX") locust -f locustfile.py,ramp_shape.py --headless --host $(q "$TARGET") --exit-code-on-error 0 --csv /tmp/exp/locust < /dev/null" || true
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:/tmp/exp/locust_stats.csv" "$LOADGEN:/tmp/exp/locust_failures.csv" "$run_dir/"
    if ! test -s "$run_dir/locust_stats.csv" || ! test -s "$run_dir/locust_failures.csv"; then
      echo "FATAL: missing locust CSV after remote run"
      exit 1
    fi
  else
    # local: run locust from the repo (phase-0 smoke path)
    SIZE="$SIZE" U_MAX="$U_MAX" .venv/bin/locust -f locustfile.py,ramp_shape.py --headless \
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
  echo "==> Test A run $i/$RUNS (U_MAX=$U_MAX, SIZE=$SIZE)"
  bash "$DIR/collect.sh" start "$SCENARIO" "$i"
  RUN_START=$(date -u +%s)
  {
    echo "run=$i"
    echo "run_start=$RUN_START"
    echo "test=TestA(ramp)"
    echo "u_max=$U_MAX size=$SIZE"
    echo "target=$TARGET loadgen=${LOADGEN:-local}"
    echo "runs_total=$RUNS"
  } >> "$CUR_RUN_DIR/notes.md"
  run_locust "$CUR_RUN_DIR"
  bash "$DIR/collect.sh" stop "$SCENARIO" "$i"
  {
    echo "run_end=$(date -u +%s)"
    echo "interrupted=0"
  } >> "$CUR_RUN_DIR/notes.md"
  echo "    done -> $CUR_RUN_DIR"
done

echo "==> Test A complete: $RUNS runs in data/raw/$SCENARIO/"
