#!/usr/bin/env bash
# Purpose: quota guards against Learner Lab hard caps. inventory() lists
# existing instances; quota_check() refuses launches that would breach
# MAX_INSTANCES/MAX_VCPU/MAX_TYPE. Sourced by 01-launch.sh, exercised by
# tests/guard-test.sh.
# boiler plate: instance family size from type suffix
type_size() { echo "${1##*.}"; }

# quota guard: vCPU per t3 instance type
vcpu_of() {
  case "$1" in
    t3.nano|t3.micro|t3.small|t3.medium|t3.large) echo 2 ;;
    t3.xlarge) echo 4 ;;
    *) echo "FATAL: unknown instance type $1 in vcpu map" >&2; exit 1 ;;
  esac
}

# quota guard: list running/stopped/pending instances as JSON (input for quota_check)
inventory() {
  "${AWS[@]}" ec2 describe-instances \
    --filters Name=instance-state-name,Values=running,stopped,pending \
    --query 'Reservations[].Instances[].{ID:InstanceId,Type:InstanceType,State:State.Name}' \
    --output json
}

# quota guard: abort if existing size/count/vCPU would exceed hard caps
quota_check() {
  local inv count vcpu type
  inv="$(inventory)"
  count=$(jq 'length' <<<"$inv")
  vcpu=0
  while IFS= read -r type; do
    vcpu=$((vcpu + $(vcpu_of "$type")))
  done < <(jq -r '.[].Type' <<<"$inv")
  echo "==> account has $count instances, $vcpu vCPU (running/stopped/pending)"
  if jq -r '.[].Type' <<<"$inv" | grep -qE '\.(large|xlarge|2xlarge|4xlarge|8xlarge|12xlarge|16xlarge|24xlarge|metal)$'; then
    echo "FATAL: existing instance exceeds max size medium; refusing (account deactivation risk)"
    return 1
  fi
  [ $((count + 3)) -le "$MAX_INSTANCES" ] || { echo "FATAL: would exceed $MAX_INSTANCES instances (have $count, launching 3)"; return 1; }
  [ $((vcpu + 2 + 2 + 2)) -le "$MAX_VCPU" ] || { echo "FATAL: would exceed $MAX_VCPU vCPU (have $vcpu, launching 6)"; return 1; }
}
