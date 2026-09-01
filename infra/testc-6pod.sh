#!/usr/bin/env bash
# Purpose: pin the llm-proxy Deployment to exactly 6 Ready pods for the Test C
# capacity run (@20 users, 6-worker cluster). `up` ensures the exp6 HPA is the
# active one, fixes it to min=max=6 (HPA stays "attivo" for the report but can
# no longer rescale), scales the Deployment to 6 and waits for 6/6 Ready.
# `down` restores the HPA to min=1/max=6 (autoscaling re-enabled).
#
# Why: the audit showed the real bottleneck is parallel SLOTS (--parallel 2 per
# pod), not CPU. 6 pods x 2 slots = 12 parallel slots let 20 users drain on
# medium/large (no more 0-request runs) while keeping the intensity comparable
# across size classes. --parallel is left at 2 (origin/main config): 12 slots
# already exceeds the ~6-slot target and raising it per pod would shrink
# per-slot ctx (2048/6=512), which hurts large prompts.
#
# kubectl runs over ssh to the master (same pattern as swap-hpa.sh); the
# manifest is scp'd to /tmp so `apply -f` resolves on the remote.
#
# Usage: bash infra/testc-6pod.sh up|down
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

ACTION="${1:?usage: testc-6pod.sh up|down}"
case "$ACTION" in
  up|down) ;;
  *) echo "FATAL: unknown action '$ACTION' — usage: testc-6pod.sh up|down" >&2; exit 1 ;;
esac

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)
MASTER_PUB=""

# boiler plate: pick up persisted cluster ips if present (AWS session)
[ -f "$DIR/.cluster-ips" ] && source "$DIR/.cluster-ips"
[ -n "${MASTER_PUB:-}" ] || { echo "FATAL: no MASTER_PUB in $DIR/.cluster-ips (cluster not up?)"; exit 1; }

# kc: kubectl over ssh to the master (fast calls); kc_long for rollout waits
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

if [ "$ACTION" = up ]; then
  echo "==> apply exp6 HPA + pin min=max=6 (HPA resta attivo, no rescale)"
  scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new \
    "$REPO/deploy/hpa-exp6.yaml" "$SSH_USER@$MASTER_PUB:/tmp/" >/dev/null
  kc apply -f /tmp/hpa-exp6.yaml
  kc delete hpa llm-proxy-exp4 >/dev/null 2>&1 || true
  kc delete hpa llm-proxy >/dev/null 2>&1 || true
  kc patch hpa llm-proxy-exp6 --type merge -p '{"spec":{"minReplicas":6,"maxReplicas":6}}'
  echo "==> scale deployment to 6"
  kc scale deployment llm-proxy --replicas=6
  kc_long rollout status deployment/llm-proxy --timeout=600s
  echo "==> pod state:"
  kc get pods -l app=llm-proxy -o wide
else
  echo "==> restore HPA min=1/max=6 (autoscaling re-enabled)"
  kc patch hpa llm-proxy-exp6 --type merge -p '{"spec":{"minReplicas":1,"maxReplicas":6}}'
  kc get hpa llm-proxy-exp6 --no-headers
fi
echo "==> testc-6pod $ACTION done"
