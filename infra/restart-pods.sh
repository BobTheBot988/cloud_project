#!/usr/bin/env bash
# Purpose: restart all llm-proxy pods and wait for the rollout to complete.
# Used as RESTART_HOOK by exp-b.sh (periodic restart) — llama-server leaks
# memory under sustained load (~1Gi -> ~2.9Gi over ~45min); a fresh process
# brings it back to baseline without touching the deployment config.
# kubectl runs over ssh to the master (same pattern as swap-hpa.sh).
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)
MASTER_PUB=""
[ -f "$DIR/.cluster-ips" ] && source "$DIR/.cluster-ips"
[ -n "${MASTER_PUB:-}" ] || { echo "FATAL: no MASTER_PUB in $DIR/.cluster-ips (cluster not up?)"; exit 1; }

kc() {
  local kargs="kubectl"
  local a
  for a in "$@"; do printf -v kargs '%s %q' "$kargs" "$a"; done
  timeout 30 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
}
kc_long() {
  local kargs="kubectl"
  local a
  for a in "$@"; do printf -v kargs '%s %q' "$kargs" "$a"; done
  timeout 720 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
}

echo "==> restarting llm-proxy pods (fresh llama, memory back to baseline)"
kc delete pod -l app=llm-proxy --grace-period=0 >/dev/null 2>&1 || true
kc_long rollout status deployment/llm-proxy --timeout=600s
echo "==> restart-pods done"
