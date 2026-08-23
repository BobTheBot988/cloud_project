#!/usr/bin/env bash
# Purpose: Test C — request-size comparison. Runs the fixed-intensity sweep
# three times, once per pure size class (small/medium/large), so every
# concurrent user sends the SAME prompt size. This removes the cross-size
# interference seen in mix runs (a small request slows down when neighbours
# send large prompts) and gives the isolated per-size cost.
#
# Reuses exp-b.sh per size: SCENARIO=testC_<size>, SIZE=<size>.
# Data: data/raw/testC_{small,medium,large}/run_<i>/
#
# Env: RUNS (default 20/level), LEVELS (default "10 20 30 40 50"),
#      STEADY_MIN (default 2), TARGET, LOADGEN, RUN_START (per-size; to
#      resume a specific size mid-campaign call exp-b.sh directly with
#      SCENARIO=testC_<size> RUN_START=N).
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUNS="${RUNS:-20}"
LEVELS="${LEVELS:-10 20 30 40 50}"
STEADY_MIN="${STEADY_MIN:-2}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
RUN_START="${RUN_START:-1}"

for sz in small medium large; do
  echo "==> Test C size=$sz"
  SIZE="$sz" SCENARIO="testC_$sz" RUNS="$RUNS" LEVELS="$LEVELS" STEADY_MIN="$STEADY_MIN" \
    TARGET="$TARGET" LOADGEN="$LOADGEN" RUN_START="$RUN_START" bash "$DIR/exp-b.sh"
done

echo "==> Test C complete: data/raw/testC_{small,medium,large}/"
