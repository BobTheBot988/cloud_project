#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"
[ -f "$DIR/.cluster-ips" ] || { echo "FATAL: infra/.cluster-ips missing — run: just launch"; exit 1; }
source "$DIR/.cluster-ips"

SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)

ssh_run() {
  ssh "${SSH_OPTS[@]}" "$SSH_USER@$1" "$2"
}

scp_to() {
  scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new "$DIR/bootstrap.sh" "$SSH_USER@$1:/tmp/bootstrap.sh"
}

echo "==> copying bootstrap.sh to master"
scp_to "$MASTER_PUB"
echo "==> bootstrapping master"
JOIN_CMD="$(ssh_run "$MASTER_PUB" "sudo bash /tmp/bootstrap.sh master" | sed -n '/JOIN_CMD_START/,/JOIN_CMD_END/p' | sed '1d;$d' | tail -1)"
[ -n "$JOIN_CMD" ] || { echo "FATAL: no join command from master"; exit 1; }
echo "    join: $JOIN_CMD"

for w in "$WORKER1_PUB" "$WORKER2_PUB"; do
  echo "==> bootstrapping worker $w"
  scp_to "$w"
  ssh_run "$w" "sudo bash /tmp/bootstrap.sh worker '$JOIN_CMD'"
done

echo "==> waiting for nodes Ready"
for _ in $(seq 1 60); do
  NODES="$(ssh_run "$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf kubectl get nodes --no-headers 2>/dev/null" || true)"
  READY="$(awk '$2=="Ready"{c++} END{print c+0}' <<<"$NODES")"
  [ "$READY" -ge 3 ] && { echo "$NODES"; break; }
  sleep 10
done
[ "$READY" -ge 3 ] || { echo "FATAL: nodes not ready ($READY/3 Ready)"; exit 1; }

echo "==> bootstrap complete"
