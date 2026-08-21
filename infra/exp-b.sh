#!/usr/bin/env bash
# Purpose: run Test B (load-capacity curve) — for each fixed-intensity
# level (users) run N steady repeats (mix workload), each ~STEADY_MIN
# minutes. Data into data/raw/testB/run_<i>/ with the level recorded in
# notes.md; plots collapse the steady window per level later.
#
# Env: RUNS (default 5), LEVELS (default "10 20 30 40 50", in users),
#      STEADY_MIN (default 8), SIZE (default mix),
#      TARGET (default http://127.0.0.1:8000), LOADGEN (ssh user@host,
#      required when TARGET is not localhost — load must stay in AWS).
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

RUNS="${RUNS:-5}"
LEVELS="${LEVELS:-10 20 30 40 50}"
STEADY_MIN="${STEADY_MIN:-8}"
SIZE="${SIZE:-mix}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
SCENARIO=testB

# ban-risk guard: never drive a remote NodePort from outside AWS
if [[ "$TARGET" != http://127.0.0.1:* && "$TARGET" != http://localhost:* && -z "$LOADGEN" ]]; then
  echo "FATAL: TARGET=$TARGET is not localhost but LOADGEN is unset."
  echo "       Load must be generated from inside AWS (in-AWS load-gen node)."
  echo "       Set LOADGEN=<user>@<host> (and TARGET to the in-AWS NodePort URL)."
  exit 1
fi

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)

run_locust() {
  local run_dir="$1" users="$2"
  if [ -n "$LOADGEN" ]; then
    # remote: run locust on the in-AWS load-gen node, pull CSVs back
    ssh "${SSH_OPTS[@]}" "$LOADGEN" "mkdir -p /tmp/exp"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$REPO/locustfile.py" "$LOADGEN:/tmp/exp/"
    ssh "${SSH_OPTS[@]}" "$LOADGEN" \
      "cd /tmp/exp && SIZE='$SIZE' locust -f locustfile.py --headless --host '$TARGET' -u $users -r 5 --run-time ${STEADY_MIN}m --exit-code-on-error 0 --csv /tmp/exp/locust"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:/tmp/exp/locust_stats.csv" "$LOADGEN:/tmp/exp/locust_failures.csv" "$run_dir/" || true
  else
    # local: run locust from the repo (phase-0 smoke path)
    SIZE="$SIZE" .venv/bin/locust -f locustfile.py --headless \
      --host "$TARGET" -u "$users" -r 5 --run-time "${STEADY_MIN}m" --exit-code-on-error 0 --csv "$run_dir/locust"
  fi
}

RUN_INDEX=0
for level in $LEVELS; do
  echo "==> Test B level $level users"
  for i in $(seq 1 "$RUNS"); do
    RUN_INDEX=$((RUN_INDEX + 1))
    RUN_DIR="$REPO/data/raw/$SCENARIO/run_$RUN_INDEX"
    mkdir -p "$RUN_DIR"
    echo "    run $RUN_INDEX/$((RUNS * $(echo "$LEVELS" | wc -w))) level=$level ($STEADY_MIN min steady)"
    bash "$DIR/collect.sh" start "$SCENARIO" "$RUN_INDEX"
    RUN_START=$(date -u +%s)
    run_locust "$RUN_DIR" "$level"
    bash "$DIR/collect.sh" stop "$SCENARIO" "$RUN_INDEX"
    {
      echo "run=$RUN_INDEX"
      echo "run_start=$RUN_START"
      echo "run_end=$(date -u +%s)"
      echo "test=TestB(steady)"
      echo "level_users=$level steady_min=$STEADY_MIN size=$SIZE"
      echo "target=$TARGET loadgen=${LOADGEN:-local}"
      echo "runs_total=$RUNS"
    } >> "$RUN_DIR/notes.md"
    echo "        done -> $RUN_DIR"
  done
done

echo "==> Test B complete: $RUN_INDEX runs in data/raw/$SCENARIO/"
