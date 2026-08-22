#!/usr/bin/env bash
# Purpose: verify quota_check against the current quota config. Loads
# MAX_* from <config>.yaml, mocks AWS inventory, and asserts the guard
# aborts or allows for each expected trigger case.
set -uo pipefail

# boiler plate: resolve paths and required config arg
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/../.." && pwd)"
CONFIG="${1:?usage: guard-test.sh <fall0|fall1|fall2|default>}"
CONFIG_FILE="$DIR/$CONFIG.yaml"
PY="$REPO/.venv/bin/python"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "FATAL: no config $CONFIG_FILE"; exit 1
fi

# boiler plate: export quota caps from the config yaml via python
eval "$("$PY" - "$CONFIG_FILE" <<'EOF'
import sys, yaml
c = yaml.safe_load(open(sys.argv[1]))
print(f'export MAX_INSTANCES={c["max_instances"]}')
print(f'export MAX_VCPU={c["max_vcpu"]}')
print(f'export MAX_TYPE={c["max_type"]}')
EOF
)"

# boiler plate: source real env + guards (inventory() is overridden below)
source "$REPO/infra/00-env.sh"
source "$REPO/infra/guards.sh"

# boiler plate: mock inventory() reads from a temp file
MOCK_INV_FILE="$(mktemp)"
trap 'rm -f "$MOCK_INV_FILE"' EXIT

inventory() {
  cat "$MOCK_INV_FILE"
}

# test helper: assert guard aborts with the given mock inventory
expect_abort() {
  local name="$1" inv="$2" wk="${3:-}"
  printf '%s' "$inv" > "$MOCK_INV_FILE"
  if ( WORKERS="${wk:-$WORKERS}" quota_check ) >/dev/null 2>&1; then
    echo "FAIL [$name]: expected ABORT, guard passed"
    return 1
  else
    echo "PASS [$name]: guard aborts"
  fi
}

# test helper: assert guard allows with the given mock inventory
expect_pass() {
  local name="$1" inv="$2" wk="${3:-}"
  printf '%s' "$inv" > "$MOCK_INV_FILE"
  if ( WORKERS="${wk:-$WORKERS}" quota_check ) >/dev/null 2>&1; then
    echo "PASS [$name]: guard allows"
  else
    echo "FAIL [$name]: expected allow, guard aborted"
    return 1
  fi
}

# test helper: assert workers_ceiling aborts (oversized WORKERS for the caps)
expect_abort_workers() {
  local name="$1" inv="$2" wk="$3"
  printf '%s' "$inv" > "$MOCK_INV_FILE"
  if ( WORKERS="$wk" quota_check ) >/dev/null 2>&1 && ( WORKERS="$wk" workers_ceiling ) >/dev/null 2>&1; then
    echo "FAIL [$name]: expected ABORT, guard passed"
    return 1
  else
    echo "PASS [$name]: guard aborts"
  fi
}

# test scenarios: per-config trigger expectations (abort for lowered limits, allow/reject for default)
fail=0
echo "== guard-test: $CONFIG (max_instances=$MAX_INSTANCES max_vcpu=$MAX_VCPU max_type=$MAX_TYPE)"

if [ "$CONFIG" = default ]; then
  expect_pass "empty-account + 3 nodes (within 8/31)" '[]' || fail=1
  expect_pass "existing 2x t3.medium (6 vcpu within limits)" '[{"ID":"i-1","Type":"t3.medium","State":"running"},{"ID":"i-2","Type":"t3.medium","State":"stopped"}]' || fail=1
  expect_abort "existing 9x t3.medium (over 8 instances)" '[{"ID":"i-1","Type":"t3.medium","State":"running"},{"ID":"i-2","Type":"t3.medium","State":"running"},{"ID":"i-3","Type":"t3.medium","State":"running"},{"ID":"i-4","Type":"t3.medium","State":"running"},{"ID":"i-5","Type":"t3.medium","State":"running"},{"ID":"i-6","Type":"t3.medium","State":"running"},{"ID":"i-7","Type":"t3.medium","State":"running"},{"ID":"i-8","Type":"t3.medium","State":"running"},{"ID":"i-9","Type":"t3.medium","State":"running"}]' || fail=1
  expect_abort "existing t3.large (over size medium)" '[{"ID":"i-1","Type":"t3.large","State":"running"}]' || fail=1

  # WORKERS variant bounds (exp4/exp6 must fit the 8/31 caps; oversized WORKERS fails)
  expect_pass "WORKERS=4 (exp4) empty account fits 8/31" '[]' 4 || fail=1
  expect_pass "WORKERS=6 (exp6) empty account fits 8/31" '[]' 6 || fail=1
  expect_abort_workers "WORKERS=7 would need 9 instances (over 8)" '[]' 7 || fail=1
  expect_abort_workers "WORKERS=6 + 1 existing instance over 8" '[{"ID":"i-1","Type":"t3.medium","State":"running"}]' 6 || fail=1
  # workers_ceiling in isolation (not shadowed by quota_check)
  if ( WORKERS=7 workers_ceiling ) >/dev/null 2>&1; then
    echo "FAIL [workers_ceiling WORKERS=7]: expected ABORT, ceiling passed"; fail=1
  else
    echo "PASS [workers_ceiling WORKERS=7]: ceiling aborts"
  fi
  if ( WORKERS=abc workers_ceiling ) >/dev/null 2>&1; then
    echo "FAIL [workers_ceiling WORKERS=abc]: expected ABORT, ceiling passed"; fail=1
  else
    echo "PASS [workers_ceiling WORKERS=abc]: non-integer aborts"
  fi
else
  expect_abort "empty-account + 3 nodes (trigger lowered limit)" '[]' || fail=1
  expect_abort "existing 1x t3.small (2 vcpu)" '[{"ID":"i-1","Type":"t3.small","State":"running"}]' || fail=1
  expect_abort "existing 2x t3.medium (4 vcpu)" '[{"ID":"i-1","Type":"t3.medium","State":"running"},{"ID":"i-2","Type":"t3.medium","State":"stopped"}]' || fail=1
fi

if [ "$fail" -eq 0 ]; then
  echo "== $CONFIG: ALL TRIGGER CHECKS PASS"
else
  echo "== $CONFIG: FAILURES DETECTED"
fi

# sweep_stale: refuses launch if a live cluster exists; allows (and sweeps)
# stale stopped instances from a prior session. tagged_ids() is mocked.
tagged_ids() {
  case "$1" in
    running,pending) printf '%s' "$MOCK_RUNNING" ;;
    stopped) printf '%s' "$MOCK_STOPPED" ;;
  esac
}
expect_sweep_abort() {
  local name="$1"
  if ( sweep_stale ) >/dev/null 2>&1; then
    echo "FAIL [$name]: expected ABORT, sweep passed"
    return 1
  else
    echo "PASS [$name]: sweep aborts"
  fi
}
expect_sweep_pass() {
  local name="$1"
  if ( sweep_stale ) >/dev/null 2>&1; then
    echo "PASS [$name]: sweep allows"
  else
    echo "FAIL [$name]: expected allow, sweep aborted"
    return 1
  fi
}
MOCK_RUNNING="i-1"; MOCK_STOPPED=""
expect_sweep_abort "live running cluster refuses launch" || fail=1
MOCK_RUNNING=""; MOCK_STOPPED="i-9 i-10"
expect_sweep_pass "stale stopped instances are swept" || fail=1
MOCK_RUNNING=""; MOCK_STOPPED=""
expect_sweep_pass "no tagged instances" || fail=1

exit $fail
