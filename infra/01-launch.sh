#!/usr/bin/env bash
# Purpose: launch the 3-node EC2 cluster (master + 2 workers). Enforces
# quota guards, resolves latest AL2023 AMI, creates/reuses the SG, assigns
# an EIP to the master, waits for ssh, and persists node IPs/IDs to
# .cluster-ips for bootstrap + teardown.
set -euo pipefail

# boiler plate: locate script dir, load env + guards
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"
source "$DIR/guards.sh"

# tripwire: refuse to run unless quota caps are exactly 8/31/medium
tripwire() {
  [ "$MAX_INSTANCES" -eq 8 ] || { echo "FATAL: MAX_INSTANCES must be 8 (got $MAX_INSTANCES)"; exit 1; }
  [ "$MAX_VCPU" -eq 31 ] || { echo "FATAL: MAX_VCPU must be 31 (got $MAX_VCPU)"; exit 1; }
  for t in "$MASTER_TYPE" "$WORKER_TYPE"; do
    s="$(type_size "$t")"
    case "$s" in nano|micro|small|medium) ;; *)
      echo "FATAL: instance type $t exceeds max size medium"; exit 1 ;;
    esac
  done
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

# SG creation: create llm-lab-sg and open ssh/k8s-api/etcd/kubelet/overlay/nodeport
sg_create() {
  local vpc sg
  vpc="$(default_vpc)"
  sg="$("${AWS[@]}" ec2 create-security-group --group-name llm-lab-sg \
        --description "LLM lab k8s cluster" --vpc-id "$vpc" --query 'GroupId' --output text)"
  "${AWS[@]}" ec2 authorize-security-group-ingress --group-id "$sg" --ip-permissions \
    '[
      {"IpProtocol":"tcp","FromPort":22,"ToPort":22,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":6443,"ToPort":6443,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":2379,"ToPort":2380,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":10250,"ToPort":10252,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"udp","FromPort":8472,"ToPort":8472,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]},
      {"IpProtocol":"tcp","FromPort":30000,"ToPort":32767,"IpRanges":[{"CidrIp":"0.0.0.0/0"}]}
    ]' >/dev/null
  echo "$sg"
}

# launch: run one tagged instance with given role/type/az
launch() {
  local role type az
  role="$1"; type="$2"; az="$3"
  "${AWS[@]}" ec2 run-instances --image-id "$AMI" --instance-type "$type" \
    --placement "AvailabilityZone=$az" --key-name "$KEY_NAME" \
    --iam-instance-profile "Name=$IAM_PROFILE" --security-group-ids "$SG" \
    --tag-specifications "ResourceType=instance,Tags=[{Key=cluster,Value=$CLUSTER_TAG},{Key=role,Value=$role},{Key=Name,Value=llm-$role}]" \
    --query 'Instances[0].InstanceId' --output text
}

# private_ip: poll until instance reports a private IP (up to 150s)
private_ip() {
  local id ip=""
  id="$1"
  for _ in $(seq 1 30); do
    ip="$("${AWS[@]}" ec2 describe-instances --instance-ids "$id" \
          --query 'Reservations[0].Instances[0].PrivateIpAddress' --output text 2>/dev/null || true)"
    if [ -n "$ip" ] && [ "$ip" != "None" ]; then echo "$ip"; return 0; fi
    sleep 5
  done
  echo "FATAL: no private IP for $id"; exit 1
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

# boiler plate: reuse existing llm-lab-sg if present
sg_get() {
  "${AWS[@]}" ec2 describe-security-groups --filters Name=group-name,Values=llm-lab-sg \
    --query 'SecurityGroups[0].GroupId' --output text 2>/dev/null || echo NONE
}

# main: orchestrate full launch — lock, guards, SG, nodes, EIP, ssh wait
main() {
  # boiler plate: single-run lock so parallel launches abort
  exec 9>"$DIR/.launch.lock"
  flock -n 9 || { echo "FATAL: another launch in progress"; exit 1; }
  # tripwire + quota guard: hard Learner Lab caps before any API calls
  tripwire
  quota_check || exit 1
  echo "==> resolving latest AL2023 AMI"
  AMI="$(ami_latest)"
  echo "    AMI=$AMI"
  echo "==> security group"
  # boiler plate: reuse existing SG or create one
  SG="$(sg_get)"
  if [ -z "$SG" ] || [ "$SG" = None ] || [ "$SG" = NONE ]; then
    SG="$(sg_create)"
    echo "    created SG=$SG"
  else
    echo "    reusing SG=$SG"
  fi
  echo "==> launching master ($MASTER_TYPE) + 2 workers ($WORKER_TYPE)"
  # launch: master + 2 workers spread across AZs
  MASTER_ID="$(launch master "$MASTER_TYPE" "$AZ1")"
  W1_ID="$(launch worker "$WORKER_TYPE" "$AZ1")"
  W2_ID="$(launch worker "$WORKER_TYPE" "$AZ2")"
  echo "    master=$MASTER_ID worker1=$W1_ID worker2=$W2_ID"
  echo "==> waiting for private IPs"
  # wait for private + public IPs on all 3 nodes
  MASTER_PRIV="$(private_ip "$MASTER_ID")"
  W1_PRIV="$(private_ip "$W1_ID")"
  W2_PRIV="$(private_ip "$W2_ID")"
  MASTER_PUB="$(public_ip "$MASTER_ID")"
  W1_PUB="$(public_ip "$W1_ID")"
  W2_PUB="$(public_ip "$W2_ID")"
  # EIP: allocate + associate to master for a stable public endpoint
  EIP_ALLOC=""
  if [ "$USE_EIP" = true ]; then
    EIP_ALLOC="$("${AWS[@]}" ec2 allocate-address --query 'AllocationId' --output text 2>/dev/null || true)"
    if [ -n "$EIP_ALLOC" ] && [ "$EIP_ALLOC" != None ]; then
      if ! "${AWS[@]}" ec2 associate-address --allocation-id "$EIP_ALLOC" --instance-id "$MASTER_ID" >/dev/null 2>&1; then
        echo "    WARN: EIP associate failed"
        "${AWS[@]}" ec2 release-address --allocation-id "$EIP_ALLOC" >/dev/null 2>&1 || true
        EIP_ALLOC=""
      fi
    else
      EIP_ALLOC=""
    fi
    if [ -n "$EIP_ALLOC" ]; then
      "${AWS[@]}" ec2 create-tags --resources "$EIP_ALLOC" --tags "Key=cluster,Value=$CLUSTER_TAG" >/dev/null 2>&1 || true
      MASTER_PUB="$(public_ip "$MASTER_ID")"
      echo "    EIP=$MASTER_PUB"
    else
      echo "    WARN: EIP unavailable, using auto public IP"
    fi
  fi
  echo "==> waiting for ssh on all nodes"
  wait_ssh "$MASTER_PUB"; wait_ssh "$W1_PUB"; wait_ssh "$W2_PUB"
  # persist node IPs/IDs/SG for bootstrap + teardown
  cat > "$DIR/.cluster-ips" <<EOF
MASTER_PUB=$MASTER_PUB
MASTER_PRIV=$MASTER_PRIV
WORKER1_PUB=$W1_PUB
WORKER1_PRIV=$W1_PRIV
WORKER2_PUB=$W2_PUB
WORKER2_PRIV=$W2_PRIV
MASTER_ID=$MASTER_ID
W1_ID=$W1_ID
W2_ID=$W2_ID
EIP_ALLOC=${EIP_ALLOC:-}
SG=$SG
EOF
  echo "==> nodes up, ssh ready"
  # boiler plate: summary table of nodes
  printf '%-8s %-12s %s\n' role instance ip
  printf '%-8s %-12s %s\n' master "$MASTER_TYPE" "$MASTER_PUB"
  printf '%-8s %-12s %s\n' worker "$WORKER_TYPE" "$W1_PUB"
  printf '%-8s %-12s %s\n' worker "$WORKER_TYPE" "$W2_PUB"
  echo "==> next: just cluster-up (bootstrap)"
}

main
