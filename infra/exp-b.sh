#!/usr/bin/env bash
# Purpose: run Test B (load-capacity curve) — for each fixed-intensity
# level (users) run N steady repeats (mix workload), each ~STEADY_MIN
# minutes. Data into data/raw/testB/run_<i>/ with the level recorded in
# notes.md; plots collapse the steady window per level later.
#
# Env: RUNS (default 5), LEVELS (default "10 20 30 40 50", in users),
#      STEADY_MIN (default 8), SIZE (default mix),
#      TARGET (default http://127.0.0.1:8000), LOADGEN (ssh user@host,
#      required when TARGET is not localhost — load must stay in AWS),
#      RUN_TAG (optional, recorded in notes.md — e.g. "6pod-fixed slots=12"),
#      DRAIN_SECS (default 0; pause between runs so a saturated queue drains
#      before the next run — prevents the run-N collapse under sustained load),
#      RESTART_EVERY (default 0=off; after every Nth run run RESTART_HOOK —
#      e.g. 5 to restart llama before its memory leak degrades the server),
#      RESTART_HOOK (shell command, e.g. "bash infra/restart-pods.sh").
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

RUNS="${RUNS:-5}"
RUN_START="${RUN_START:-1}"
LEVELS="${LEVELS:-10 20 30 40 50}"
STEADY_MIN="${STEADY_MIN:-8}"
SIZE="${SIZE:-mix}"
TARGET="${TARGET:-http://127.0.0.1:8000}"
LOADGEN="${LOADGEN:-}"
SCENARIO="${SCENARIO:-testB}"
DRAIN_SECS="${DRAIN_SECS:-0}"
RESTART_EVERY="${RESTART_EVERY:-0}"
RESTART_HOOK="${RESTART_HOOK:-}"

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
for level in $LEVELS; do
  if [[ ! "$level" =~ ^[0-9]+$ ]] || [ "$level" -lt 1 ]; then
    echo "FATAL: LEVELS value '$level' is not an integer >= 1"
    exit 1
  fi
done
if [[ ! "$STEADY_MIN" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [ "$(echo "$STEADY_MIN" | awk '{print ($1 < 1)}')" = 1 ]; then
  echo "FATAL: STEADY_MIN '$STEADY_MIN' must be a number >= 1"
  exit 1
fi

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)

run_locust() {
  local run_dir="$1" users="$2"
  if [ -n "$LOADGEN" ]; then
    # remote: run locust on the in-AWS load-gen node, pull CSVs back.
    # timeout guards against a hung ssh session stalling the whole run
    # (same fix as exp-a; locust CSVs are pulled by scp regardless).
    ssh "${SSH_OPTS[@]}" "$LOADGEN" "mkdir -p ~/exp && rm -f ~/exp/requests_detail.csv"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$REPO/locustfile.py" "$LOADGEN:~/exp/"
    timeout "${LOCUST_MAX:-600}" ssh "${SSH_OPTS[@]}" "$LOADGEN" \
      "cd ~/exp && export PATH=~/exp/.venv/bin:\$HOME/.local/bin:\$PATH && SIZE=$(q "$SIZE") DETAIL_CSV=~/exp/requests_detail.csv locust -f locustfile.py --headless --host $(q "$TARGET") -u $(q "$users") -r 5 --run-time $(q "${STEADY_MIN}m") --exit-code-on-error 0 --csv ~/exp/locust" || true
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:~/exp/locust_stats.csv" "$LOADGEN:~/exp/locust_failures.csv" "$run_dir/"
    scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
      "$LOADGEN:~/exp/requests_detail.csv" "$run_dir/" || true
    if ! test -s "$run_dir/locust_stats.csv" || ! test -s "$run_dir/locust_failures.csv"; then
      echo "FATAL: missing locust CSV after remote run"
      exit 1
    fi
  else
    # local: run locust from the repo (phase-0 smoke path)
    SIZE="$SIZE" DETAIL_CSV="$run_dir/requests_detail.csv" .venv/bin/locust -f locustfile.py --headless \
      --host "$TARGET" -u "$users" -r 5 --run-time "${STEADY_MIN}m" --exit-code-on-error 0 --csv "$run_dir/locust"
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

RUN_INDEX=0
for level in $LEVELS; do
  echo "==> Test B level $level users"
  for i in $(seq 1 "$RUNS"); do
    RUN_INDEX=$((RUN_INDEX + 1))
    # skip positions before RUN_START (resume support); positions map
    # 1..(levels x RUNS) across the whole grid
    [ "$RUN_INDEX" -lt "$RUN_START" ] && continue
    CUR_RUN_DIR="$REPO/data/raw/$SCENARIO/run_$RUN_INDEX"
    CUR_SCENARIO="$SCENARIO"
    CUR_RUN="$RUN_INDEX"
    if [ "${FORCE:-0}" = "1" ]; then
      rm -rf "$CUR_RUN_DIR"
    elif [ -d "$CUR_RUN_DIR" ] && [ -n "$(ls -A "$CUR_RUN_DIR" 2>/dev/null)" ]; then
      echo "FATAL: run dir $CUR_RUN_DIR already has data; use a new run index or FORCE=1"
      exit 1
    fi
    mkdir -p "$CUR_RUN_DIR"
    echo "    run $RUN_INDEX/$((RUNS * $(echo "$LEVELS" | wc -w))) level=$level ($STEADY_MIN min steady)"
    bash "$DIR/collect.sh" start "$SCENARIO" "$RUN_INDEX"
    RUN_TS=$(date -u +%s)
    {
      echo "run=$RUN_INDEX"
      echo "run_start=$RUN_TS"
      echo "scenario=$SCENARIO"
      echo "test=TestB(steady)"
      echo "level_users=$level steady_min=$STEADY_MIN size=$SIZE"
      echo "target=$TARGET loadgen=${LOADGEN:-local}"
      echo "runs_total=$RUNS"
    } >> "$CUR_RUN_DIR/notes.md"
    [ -n "${RUN_TAG:-}" ] && echo "run_tag=$RUN_TAG" >> "$CUR_RUN_DIR/notes.md"
    run_locust "$CUR_RUN_DIR" "$level"
    bash "$DIR/collect.sh" stop "$SCENARIO" "$RUN_INDEX"
    {
      echo "run_end=$(date -u +%s)"
      echo "interrupted=0"
    } >> "$CUR_RUN_DIR/notes.md"
    echo "        done -> $CUR_RUN_DIR"
    if [ "$DRAIN_SECS" -gt 0 ] 2>/dev/null; then
      echo "    drain ${DRAIN_SECS}s (smaltisci coda prima della prossima run)"
      sleep "$DRAIN_SECS"
    fi
    if [ "$RESTART_EVERY" -gt 0 ] 2>/dev/null && [ $((RUN_INDEX % RESTART_EVERY)) -eq 0 ] \
       && [ -n "$RESTART_HOOK" ] && [ "$RUN_INDEX" -lt $((RUNS * $(echo "$LEVELS" | wc -w))) ]; then
      echo "==> periodic restart (every $RESTART_EVERY runs, after run $RUN_INDEX)"
      eval "$RESTART_HOOK"
    fi
  done
done

echo "==> Test B complete: $RUN_INDEX runs in data/raw/$SCENARIO/"
