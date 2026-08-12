#!/usr/bin/env bash
set -uo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"

EIP_ALLOC=""
[ -f "$DIR/.cluster-ips" ] && source "$DIR/.cluster-ips"
EIP_ALLOC="${EIP_ALLOC:-}"

IDS="$("${AWS[@]}" ec2 describe-instances \
  --filters Name=tag:cluster,Values="$CLUSTER_TAG" \
            Name=instance-state-name,Values=running,stopped,pending \
  --query 'Reservations[].Instances[].InstanceId' --output text 2>/dev/null || true)"
IDS_SPACE="$(echo "$IDS" | tr '\t\n' ' ')"

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

for alloc in ${ALLOCS} ${EIP_ALLOC:-}; do
  [ -n "$alloc" ] || continue
  echo "==> releasing EIP $alloc"
  "${AWS[@]}" ec2 release-address --allocation-id "$alloc" >/dev/null 2>&1 || true
done

SG="$(grep -s '^SG=' "$DIR/.cluster-ips" 2>/dev/null | cut -d= -f2 || true)"
if [ -z "$SG" ] || [ "$SG" = None ]; then
  SG="$("${AWS[@]}" ec2 describe-security-groups --filters Name=group-name,Values=llm-lab-sg \
    --query 'SecurityGroups[0].GroupId' --output text 2>/dev/null || true)"
fi
if [ -n "$SG" ] && [ "$SG" != None ]; then
  echo "==> deleting SG $SG"
  "${AWS[@]}" ec2 delete-security-group --group-id "$SG" >/dev/null 2>&1 || true
fi

rm -f "$DIR/.cluster-ips"
echo "==> teardown complete"
