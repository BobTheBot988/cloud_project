#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"
[ -f "$DIR/.cluster-ips" ] || { echo "FATAL: infra/.cluster-ips missing — run: just launch"; exit 1; }
source "$DIR/.cluster-ips"

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)
KC="sudo KUBECONFIG=/etc/kubernetes/admin.conf"

k() { ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "$KC $*"; }

echo "==> nodes"
k kubectl get nodes -o wide
echo
echo "==> pods"
k kubectl get pods -A
echo
echo "==> node utilization (Metrics Server)"
k kubectl top node
