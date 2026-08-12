#!/usr/bin/env bash
set -euo pipefail

PROFILE=${PROFILE:-aws_academy}
REGION=${REGION:-us-east-1}
AZ1=${AZ1:-us-east-1a}
AZ2=${AZ2:-us-east-1b}

MASTER_TYPE=t3.small
WORKER_TYPE=t3.medium
SSH_KEY=${SSH_KEY:-"$HOME/.ssh/labsuser.pem"}
SSH_USER=ec2-user
KEY_NAME=vockey
IAM_PROFILE=LabInstanceProfile
CLUSTER_TAG=llm-lab

MAX_INSTANCES=8
MAX_VCPU=31
MAX_TYPE=medium

USE_EIP=true
POD_CIDR=10.244.0.0/16
K8S_VERSION=1.31

AWS=(aws --profile "$PROFILE" --region "$REGION")
