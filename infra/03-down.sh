#!/usr/bin/env bash
# Purpose: full teardown — terminate cluster-tagged instances, release
# their EIPs (captured pre-terminate), delete llm-lab-sg, and remove the
# .cluster-ips state file.
set -uo pipefail

# boiler plate: load env; .cluster-ips is optional (down runs without it)
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"

EIP_ALLOC=""
[ -f "$DIR/.cluster-ips" ] && source "$DIR/.cluster-ips"
EIP_ALLOC="${EIP_ALLOC:-}"

# teardown: find all instances tagged cluster=$CLUSTER_TAG
IDS="$("${AWS[@]}" ec2 describe-instances \
  --filters Name=tag:cluster,Values="$CLUSTER_TAG" \
            Name=instance-state-name,Values=running,stopped,pending \
  --query 'Reservations[].Instances[].InstanceId' --output text 2>/dev/null || true)"
IDS_SPACE="$(echo "$IDS" | tr '\t\n' ' ')"

# teardown: capture EIP allocation ids bound to those instances, pre-terminate
ALLOCS=""
if [ -n "$IDS_SPACE" ]; then
  ALLOCS="$("${AWS[@]}" ec2 describe-addresses \
    --query 'Addresses[].{ID:AllocationId,IID:Association.InstanceId}' \
    --output json 2>/dev/null \
    | jq -r --arg ids "$IDS_SPACE" '.[] | .IID as $iid | select($iid != null) | select(($ids | split(" ") | index($iid)) != null) | .ID' \
    || true)"
fi

if [ -z "${IDS// /}" ]; then
  echo "==> no instances with tag cluster=$CLUSTER_TAG"
else
  # teardown: terminate instances, then poll until fully gone
  echo "==> capturing EIPs (pre-terminate): ${ALLOCS:-none}"
  echo "==> terminating: $IDS"
  "${AWS[@]}" ec2 terminate-instances --instance-ids $IDS >/dev/null 2>&1 || true
  echo "==> waiting for termination"
  for _ in $(seq 1 36); do
    LEFT="$("${AWS[@]}" ec2 describe-instances --instance-ids $IDS \
      --query 'Reservations[].Instances[].State.Name' --output text 2>/dev/null || true)"
    if ! grep -qw 'pending\|running\|stopping\|stopped' <<<"$LEFT"; then break; fi
    sleep 10
  done
fi

# teardown: release all captured EIPs (from AWS or state file)
for alloc in ${ALLOCS} ${EIP_ALLOC:-}; do
  [ -n "$alloc" ] || continue
  echo "==> releasing EIP $alloc"
  "${AWS[@]}" ec2 release-address --allocation-id "$alloc" >/dev/null 2>&1 || true
done

# teardown: leak guard — release ANY EIP still tagged cluster=$CLUSTER_TAG
# (e.g. a crash before .cluster-ips was written). Allocated EIPs bill even
# when unassociated, so leftover tagged ones must never survive a teardown.
TAGGED_EIPS="$("${AWS[@]}" ec2 describe-addresses --filters Name=tag:cluster,Values="$CLUSTER_TAG" \
  --query 'Addresses[].AllocationId' --output text 2>/dev/null || true)"
for alloc in $TAGGED_EIPS; do
  [ -n "$alloc" ] || continue
  echo "==> releasing leaked tagged EIP $alloc"
  "${AWS[@]}" ec2 release-address --allocation-id "$alloc" >/dev/null 2>&1 || true
done

# teardown: delete llm-lab-sg (from state file or AWS lookup)
SG="$(grep -s '^SG=' "$DIR/.cluster-ips" 2>/dev/null | cut -d= -f2 || true)"
if [ -z "$SG" ] || [ "$SG" = None ]; then
  SG="$("${AWS[@]}" ec2 describe-security-groups --filters Name=group-name,Values=llm-lab-sg \
    --query 'SecurityGroups[0].GroupId' --output text 2>/dev/null || true)"
fi
if [ -n "$SG" ] && [ "$SG" != None ]; then
  echo "==> deleting SG $SG"
  "${AWS[@]}" ec2 delete-security-group --group-id "$SG" >/dev/null 2>&1 || true
fi

# boiler plate: drop stale state file
rm -f "$DIR/.cluster-ips"
echo "==> teardown complete"
