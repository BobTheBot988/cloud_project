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
U_MAX="${U_MAX:-20}"
SIZE="${SIZE:-mix}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
SCENARIO=testA

# ban-risk guard: never drive a remote NodePort from outside AWS
if [[ "$TARGET" != http://127.0.0.1:* && "$TARGET" != http://localhost:* && -z "$LOADGEN" ]]; then
  echo "FATAL: TARGET=$TARGET is not localhost but LOADGEN is unset."
  echo "       Load must be generated from inside AWS (in-AWS load-gen node)."
  echo "       Set LOADGEN=<user>@<host> (and TARGET to the in-AWS NodePort URL)."
  exit 1
fi

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)

run_locust() {
  local run_dir="$1"
  if [ -n "$LOADGEN" ]; then
    # remote: run locust on the in-AWS load-gen node, pull CSVs back
    ssh "${SSH_OPTS[@]}" "$LOADGEN" "mkdir -p /tmp/exp"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$REPO/locustfile.py" "$REPO/ramp_shape.py" "$LOADGEN:/tmp/exp/"
    ssh "${SSH_OPTS[@]}" "$LOADGEN" \
      "cd /tmp/exp && SIZE='$SIZE' U_MAX='$U_MAX' locust -f locustfile.py,ramp_shape.py --headless --host '$TARGET' --exit-code-on-error 0 --csv /tmp/exp/locust"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:/tmp/exp/locust_stats.csv" "$LOADGEN:/tmp/exp/locust_failures.csv" "$run_dir/" || true
  else
    # local: run locust from the repo (phase-0 smoke path)
    SIZE="$SIZE" U_MAX="$U_MAX" .venv/bin/locust -f locustfile.py,ramp_shape.py --headless \
      --host "$TARGET" --exit-code-on-error 0 --csv "$run_dir/locust"
  fi
}

for i in $(seq 1 "$RUNS"); do
  RUN_DIR="$REPO/data/raw/$SCENARIO/run_$i"
  mkdir -p "$RUN_DIR"
  echo "==> Test A run $i/$RUNS (U_MAX=$U_MAX, SIZE=$SIZE)"
  bash "$DIR/collect.sh" start "$SCENARIO" "$i"
  RUN_START=$(date -u +%s)
  run_locust "$RUN_DIR"
  bash "$DIR/collect.sh" stop "$SCENARIO" "$i"
  {
    echo "run=$i"
    echo "run_start=$RUN_START"
    echo "run_end=$(date -u +%s)"
    echo "test=TestA(ramp)"
    echo "u_max=$U_MAX size=$SIZE"
    echo "target=$TARGET loadgen=${LOADGEN:-local}"
    echo "runs_total=$RUNS"
  } >> "$RUN_DIR/notes.md"
  echo "    done -> $RUN_DIR"
done

echo "==> Test A complete: $RUNS runs in data/raw/$SCENARIO/"
