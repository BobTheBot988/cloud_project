#!/usr/bin/env bash
# Purpose: shared env config for the LLM lab cluster on AWS Academy.
# Defines region/AZs, instance types, SSH key, and the hard Learner Lab
# quota caps (MAX_INSTANCES/MAX_VCPU/MAX_TYPE) that the launch guards
# enforce. Sourced by all infra scripts.
set -euo pipefail

# boiler plate: defaults for profile, region and availability zones
PROFILE=${PROFILE:-aws_academy}
REGION=${REGION:-us-east-1}
AZ1=${AZ1:-us-east-1a}
AZ2=${AZ2:-us-east-1b}

# boiler plate: instance sizing, ssh key and tagging constants
MASTER_TYPE=t3.small
WORKER_TYPE=t3.medium
SSH_KEY=${SSH_KEY:-"$HOME/.ssh/labsuser.pem"}
SSH_USER=ec2-user
KEY_NAME=vockey
IAM_PROFILE=LabInstanceProfile
CLUSTER_TAG=llm-lab

# boiler plate: hard quota caps enforced by guards.sh
MAX_INSTANCES=${MAX_INSTANCES:-8}
MAX_VCPU=${MAX_VCPU:-31}
MAX_TYPE=${MAX_TYPE:-medium}

# boiler plate: cluster networking constants
USE_EIP=true
POD_CIDR=10.244.0.0/16
K8S_VERSION=1.36

# number of worker nodes to launch (exp4=4, exp6=6; default cluster=2)
WORKERS=${WORKERS:-2}

# boiler plate: aws cli base invocation
AWS=(aws --profile "$PROFILE" --region "$REGION")
