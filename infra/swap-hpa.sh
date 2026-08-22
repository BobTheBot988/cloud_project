#!/usr/bin/env bash
# Purpose: on a live cluster, make exactly ONE HPA target the llm-proxy
# deployment. Applies the chosen variant HPA manifest (deploy/hpa-exp4.yaml
# or deploy/hpa-exp6.yaml) and deletes the other variant's HPA so both
# can't autoscale the same deployment.
#
# Usage: swap-hpa.sh exp4|exp6
#
# kubectl access is auto-detected: if infra/.cluster-ips exists (AWS
# session) kubectl runs over ssh to the master; on a local kind cluster
# it uses the local kubectl.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
source "$DIR/00-env.sh"

VAR="${1:?usage: swap-hpa.sh exp4|exp6}"
case "$VAR" in
  exp4|exp6) ;;
  *) echo "FATAL: unknown variant '$VAR' — usage: swap-hpa.sh exp4|exp6" >&2; exit 1 ;;
esac

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3)
MASTER_PUB=""

# boiler plate: pick up persisted cluster ips if present (AWS session)
if [ -f "$DIR/.cluster-ips" ]; then
  # shellcheck disable=SC1091
  source "$DIR/.cluster-ips"
fi

# kc: kubectl over ssh to the master, or local kubectl when no cluster state
kc() {
  if [ -n "$MASTER_PUB" ]; then
    local kargs="kubectl"
    local a
    for a in "$@"; do
      printf -v kargs '%s %q' "$kargs" "$a"
    done
    timeout 20 ssh "${SSH_OPTS[@]}" "$SSH_USER@$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf $kargs"
  else
    timeout 20 kubectl "$@"
  fi
}

# apply the chosen variant HPA, then drop the other variant's HPA AND the
# base max-2 HPA (deploy/hpa.yaml) so the llm-proxy deployment has exactly
# one autoscaler (not-found is fine — the others may never have been applied)
if [ "$VAR" = exp4 ]; then
  OTHER=llm-proxy-exp6
else
  OTHER=llm-proxy-exp4
fi
kc apply -f "$REPO/deploy/hpa-$VAR.yaml"
kc delete hpa "$OTHER" || true
kc delete hpa llm-proxy || true

echo "==> active variant HPA: $VAR"
kc get hpa --no-headers || true
