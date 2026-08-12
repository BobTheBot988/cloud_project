#!/usr/bin/env bash
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/../.." && pwd)"
CONFIG="${1:?usage: guard-test.sh <fall0|fall1|fall2|default>}"
CONFIG_FILE="$DIR/$CONFIG.yaml"
PY="$REPO/.venv/bin/python"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "FATAL: no config $CONFIG_FILE"; exit 1
fi

eval "$("$PY" - "$CONFIG_FILE" <<'EOF'
import sys, yaml
c = yaml.safe_load(open(sys.argv[1]))
print(f'export MAX_INSTANCES={c["max_instances"]}')
print(f'export MAX_VCPU={c["max_vcpu"]}')
print(f'export MAX_TYPE={c["max_type"]}')
EOF
)"

source "$REPO/infra/00-env.sh"
source "$REPO/infra/guards.sh"

MOCK_INV_FILE="$(mktemp)"
trap 'rm -f "$MOCK_INV_FILE"' EXIT

inventory() {
  cat "$MOCK_INV_FILE"
}

expect_abort() {
  local name="$1" inv="$2"
  printf '%s' "$inv" > "$MOCK_INV_FILE"
  if ( quota_check ) >/dev/null 2>&1; then
    echo "FAIL [$name]: expected ABORT, guard passed"
    return 1
  else
    echo "PASS [$name]: guard aborts"
  fi
}

expect_pass() {
  local name="$1" inv="$2"
  printf '%s' "$inv" > "$MOCK_INV_FILE"
  if ( quota_check ) >/dev/null 2>&1; then
    echo "PASS [$name]: guard allows"
  else
    echo "FAIL [$name]: expected allow, guard aborted"
    return 1
  fi
}

fail=0
echo "== guard-test: $CONFIG (max_instances=$MAX_INSTANCES max_vcpu=$MAX_VCPU max_type=$MAX_TYPE)"

if [ "$CONFIG" = default ]; then
  expect_pass "empty-account + 3 nodes (within 8/31)" '[]' || fail=1
  expect_pass "existing 2x t3.medium (6 vcpu within limits)" '[{"ID":"i-1","Type":"t3.medium","State":"running"},{"ID":"i-2","Type":"t3.medium","State":"stopped"}]' || fail=1
  expect_abort "existing 9x t3.medium (over 8 instances)" '[{"ID":"i-1","Type":"t3.medium","State":"running"},{"ID":"i-2","Type":"t3.medium","State":"running"},{"ID":"i-3","Type":"t3.medium","State":"running"},{"ID":"i-4","Type":"t3.medium","State":"running"},{"ID":"i-5","Type":"t3.medium","State":"running"},{"ID":"i-6","Type":"t3.medium","State":"running"},{"ID":"i-7","Type":"t3.medium","State":"running"},{"ID":"i-8","Type":"t3.medium","State":"running"},{"ID":"i-9","Type":"t3.medium","State":"running"}]' || fail=1
  expect_abort "existing t3.large (over size medium)" '[{"ID":"i-1","Type":"t3.large","State":"running"}]' || fail=1
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
exit $fail
