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

# quota guard: list our tagged instance IDs in the given states
# (space-separated; used by sweep_stale)
tagged_ids() {
  local states="$1"
  "${AWS[@]}" ec2 describe-instances \
    --filters Name=tag:cluster,Values="$CLUSTER_TAG" \
              Name=instance-state-name,Values="$states" \
    --query 'Reservations[].Instances[].InstanceId' --output text 2>/dev/null || true
}

# quota guard: refuse launch if a live cluster exists; terminate stale
# stopped instances from a prior session. The lab AUTO-RESTARTS stopped
# instances on the next session start, which would silently burn budget
# and count toward the instance/vCPU caps — so stale ones must die first.
sweep_stale() {
  local running stopped
  running="$(tagged_ids running,pending)"
  if [ -n "${running//[[:space:]]/}" ]; then
    echo "FATAL: live cluster instances found ($running); run 'just cluster-down' first"
    return 1
  fi
  stopped="$(tagged_ids stopped)"
  if [ -n "${stopped//[[:space:]]/}" ]; then
    echo "==> terminating stale stopped instance(s) from a prior session: $stopped"
    "${AWS[@]}" ec2 terminate-instances --instance-ids $stopped >/dev/null 2>&1 || true
  fi
}

# quota guard: hard ceiling for the WORKERS value itself — the launch
# footprint (master + WORKERS workers + 1 load-gen node) must fit the caps
# even with an empty account. Fail-closed before any API call.
workers_ceiling() {
  local inst vcpu
  if ! [[ "$WORKERS" =~ ^[1-9][0-9]*$ ]]; then
    echo "FATAL: WORKERS must be a positive integer (got '$WORKERS')"
    return 1
  fi
  inst=$((WORKERS + 2))          # master + workers + loadgen
  vcpu=$((2 + 2 * WORKERS + 2))  # master t3.small + workers t3.medium + loadgen
  if [ "$inst" -gt "$MAX_INSTANCES" ]; then
    echo "FATAL: WORKERS=$WORKERS needs $inst instances (master+workers+loadgen) > MAX_INSTANCES=$MAX_INSTANCES"
    return 1
  fi
  if [ "$vcpu" -gt "$MAX_VCPU" ]; then
    echo "FATAL: WORKERS=$WORKERS needs $vcpu vCPU > MAX_VCPU=$MAX_VCPU"
    return 1
  fi
}

# quota guard: abort if existing size/count/vCPU would exceed hard caps.
# Footprint = master + WORKERS workers + 1 load-gen node.
quota_check() {
  local inv count vcpu type inst vcpu_add
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
  inst=$((WORKERS + 2))
  vcpu_add=$((2 + 2 * WORKERS + 2))
  [ $((count + inst)) -le "$MAX_INSTANCES" ] || { echo "FATAL: would exceed $MAX_INSTANCES instances (have $count, launching $inst)"; return 1; }
  [ $((vcpu + vcpu_add)) -le "$MAX_VCPU" ] || { echo "FATAL: would exceed $MAX_VCPU vCPU (have $vcpu, launching $vcpu_add)"; return 1; }
}
