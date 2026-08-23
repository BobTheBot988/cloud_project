#!/usr/bin/env bash
# Purpose: launch the in-AWS Locust load-gen node (t3.micro) and set up the
# locust venv on it, so the exp-* scripts can run the load from inside AWS
# (ban-risk guard: never hammer the NodePort from outside the lab). Counts
# against the Learner Lab caps — the quota guard here adds +1 instance /
# +2 vCPU and refuses if the caps would be breached. Reuses the llm-lab
# security group. Persists the node to infra/.loadgen-ips and prints the
# LOADGEN connection string to export.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"
source "$DIR/guards.sh"

LOADGEN_TYPE=t3.micro
LOADGEN_VCPU=2
LOCUST_VERSION="${LOCUST_VERSION:-2.46.3}"

# tripwire: never touch the hard quota caps, loadgen type must stay <= medium
tripwire() {
  [ "$MAX_INSTANCES" -eq 8 ] || { echo "FATAL: MAX_INSTANCES must be 8 (got $MAX_INSTANCES)"; exit 1; }
  [ "$MAX_VCPU" -eq 31 ] || { echo "FATAL: MAX_VCPU must be 31 (got $MAX_VCPU)"; exit 1; }
  s="$(type_size "$LOADGEN_TYPE")"
  case "$s" in nano|micro|small|medium) ;; *)
    echo "FATAL: instance type $LOADGEN_TYPE exceeds max size medium"; exit 1 ;;
  esac
}

# quota guard: account must tolerate +1 instance / +LOADGEN_VCPU vCPU
quota_check_add() {
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
  [ $((count + 1)) -le "$MAX_INSTANCES" ] || { echo "FATAL: would exceed $MAX_INSTANCES instances (have $count, launching 1)"; return 1; }
  [ $((vcpu + LOADGEN_VCPU)) -le "$MAX_VCPU" ] || { echo "FATAL: would exceed $MAX_VCPU vCPU (have $vcpu, launching $LOADGEN_VCPU)"; return 1; }
}

# boiler plate: latest AL2023 x86_64 AMI
ami_latest() {
  "${AWS[@]}" ec2 describe-images --owners amazon \
    --filters Name=name,Values='al2023-ami-*-x86_64' Name=architecture,Values=x86_64 \
    --query 'sort_by(Images,&CreationDate)[-1].ImageId' --output text
}

# boiler plate: default VPC id
default_vpc() {
  "${AWS[@]}" ec2 describe-vpcs --filters Name=isDefault,Values=true \
    --query 'Vpcs[0].VpcId' --output text
}

# boiler plate: reuse existing llm-lab-sg if present, else create it
sg_get() {
  "${AWS[@]}" ec2 describe-security-groups --filters Name=group-name,Values=llm-lab-sg \
    --query 'SecurityGroups[0].GroupId' --output text 2>/dev/null || echo NONE
}

sg_create() {
  local vpc sg
  vpc="$(default_vpc)"
  sg="$("${AWS[@]}" ec2 create-security-group --group-name llm-lab-sg \
        --description "LLM lab k8s cluster" --vpc-id "$vpc" --query 'GroupId' --output text)"
  "${AWS[@]}" ec2 authorize-security-group-ingress --group-id "$sg" --ip-permissions \
    '[
      {"IpProtocol":"tcp","FromPort":22,"ToPort":22,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":6443,"ToPort":6443,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":30000,"ToPort":32767,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]}
    ]' >/dev/null
  echo "$sg"
}

# loadgen_existing: return a running loadgen node id (reuse instead of relaunch)
loadgen_existing() {
  "${AWS[@]}" ec2 describe-instances \
    --filters Name=tag:cluster,Values="$CLUSTER_TAG" Name=tag:role,Values=loadgen \
              Name=instance-state-name,Values=running \
    --query 'Reservations[].Instances[].InstanceId' --output text 2>/dev/null || true
}

# boiler plate: current public IP of an instance
public_ip() {
  "${AWS[@]}" ec2 describe-instances --instance-ids "$1" \
    --query 'Reservations[0].Instances[0].PublicIpAddress' --output text
}

# wait_ssh: poll until the node accepts ssh with the lab key (up to 200s)
wait_ssh() {
  local ip
  ip="$1"
  for _ in $(seq 1 40); do
    if ssh -i "$SSH_KEY" -o BatchMode=yes -o StrictHostKeyChecking=accept-new \
           -o ConnectTimeout=5 "$SSH_USER@$ip" true 2>/dev/null; then
      return 0
    fi
    sleep 5
  done
  echo "FATAL: ssh not reachable on $ip"; exit 1
}

# setup_locust: create /tmp/exp venv with locust (venv first, --user fallback).
# Locust >=2.46 requires Python 3.11+; AL2023 defaults to 3.9, so install 3.11
# first and build the venv with it (fallback to system python3).
setup_locust() {
  local ip="$1"
  echo "==> installing locust on load-gen node (a few minutes)"
  ssh -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 "$SSH_USER@$ip" \
    "mkdir -p /tmp/exp && python3.11 -m venv /tmp/exp/.venv 2>/dev/null || python3 -m venv /tmp/exp/.venv; { /tmp/exp/.venv/bin/pip install -q 'locust==$LOCUST_VERSION'; } || /tmp/exp/.venv/bin/pip install --user -q 'locust==$LOCUST_VERSION'"
  local ver
  ver="$(ssh -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 "$SSH_USER@$ip" \
    "/tmp/exp/.venv/bin/locust --version 2>/dev/null || \$HOME/.local/bin/locust --version 2>/dev/null || echo MISSING")"
  echo "    locust on node: $ver"
  case "$ver" in
    *MISSING*) echo "FATAL: locust install failed on load-gen node"; exit 1 ;;
  esac
}

main() {
  exec 9>"$DIR/.loadgen.lock"
  flock -n 9 || { echo "FATAL: another loadgen-up in progress"; exit 1; }
  tripwire
  quota_check_add || exit 1

  LG_ID="$(loadgen_existing)"
  if [ -n "${LG_ID//[[:space:]]/}" ]; then
    LG_PUB="$(public_ip "$LG_ID")"
    echo "==> reuse running load-gen node $LG_ID ($LG_PUB)"
  else
    echo "==> resolving latest AL2023 AMI"
    AMI="$(ami_latest)"
    echo "    AMI=$AMI"
    echo "==> security group"
    SG="$(sg_get)"
    if [ -z "$SG" ] || [ "$SG" = None ] || [ "$SG" = NONE ]; then
      SG="$(sg_create)"
      echo "    created SG=$SG"
    else
      echo "    reusing SG=$SG"
    fi
    echo "==> launching load-gen node ($LOADGEN_TYPE, AZ $AZ1)"
    LG_ID="$("${AWS[@]}" ec2 run-instances --image-id "$AMI" --instance-type "$LOADGEN_TYPE" \
      --placement "AvailabilityZone=$AZ1" --key-name "$KEY_NAME" \
      --iam-instance-profile "Name=$IAM_PROFILE" --security-group-ids "$SG" \
      --block-device-mappings '[{"DeviceName":"/dev/xvda","Ebs":{"VolumeSize":40,"VolumeType":"gp3","DeleteOnTermination":true}}]' \
      --tag-specifications "ResourceType=instance,Tags=[{Key=cluster,Value=$CLUSTER_TAG},{Key=role,Value=loadgen},{Key=Name,Value=llm-loadgen}]" \
      --query 'Instances[0].InstanceId' --output text)"
    echo "    loadgen=$LG_ID"
    LG_PUB="$(public_ip "$LG_ID")"
    echo "==> waiting for ssh on load-gen node"
    wait_ssh "$LG_PUB"
  fi

  setup_locust "$LG_PUB"

  cat > "$DIR/.loadgen-ips" <<EOF
LOADGEN_PUB=$LG_PUB
LOADGEN_ID=$LG_ID
REGION=$REGION
EOF
  echo "==> load-gen node ready"
  printf '%-10s %-12s %s\n' role instance ip
  printf '%-10s %-12s %s\n' loadgen "$LOADGEN_TYPE" "$LG_PUB"
  echo "==> export and use with the exp scripts:"
  echo "    LOADGEN=$SSH_USER@$LG_PUB TARGET=http://<MASTER_IP>:30080 just exp-c"
}

main
