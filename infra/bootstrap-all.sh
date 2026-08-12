#!/usr/bin/env bash
# Purpose: drive bootstrap.sh on the live cluster via ssh. Bootstraps the
# master, captures its kubeadm join command, joins both workers, then
# waits until all 3 nodes report Ready.
set -euo pipefail

# boiler plate: load env + persisted node IPs from .cluster-ips
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"
[ -f "$DIR/.cluster-ips" ] || { echo "FATAL: infra/.cluster-ips missing — run: just launch"; exit 1; }
source "$DIR/.cluster-ips"

# boiler plate: ssh + scp helpers
SSH_OPTS=(-i "$SSH_KEY" -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10)

ssh_run() {
  ssh "${SSH_OPTS[@]}" "$SSH_USER@$1" "$2"
}

scp_to() {
  scp -i "$SSH_KEY" -o StrictHostKeyChecking=accept-new "$DIR/bootstrap.sh" "$SSH_USER@$1:/tmp/bootstrap.sh"
}

# join orchestration (master): bootstrap master, extract join cmd between markers
echo "==> copying bootstrap.sh to master"
scp_to "$MASTER_PUB"
echo "==> bootstrapping master"
JOIN_CMD="$(ssh_run "$MASTER_PUB" "sudo bash /tmp/bootstrap.sh master" | sed -n '/JOIN_CMD_START/,/JOIN_CMD_END/p' | sed '1d;$d' | tail -1)"
[ -n "$JOIN_CMD" ] || { echo "FATAL: no join command from master"; exit 1; }
echo "    join: $JOIN_CMD"

# join orchestration (workers): bootstrap each worker with master's join cmd
for w in "$WORKER1_PUB" "$WORKER2_PUB"; do
  echo "==> bootstrapping worker $w"
  scp_to "$w"
  ssh_run "$w" "sudo bash /tmp/bootstrap.sh worker '$JOIN_CMD'"
done

# wait: poll kubectl on master until all 3 nodes report Ready
echo "==> waiting for nodes Ready"
for _ in $(seq 1 60); do
  NODES="$(ssh_run "$MASTER_PUB" "sudo KUBECONFIG=/etc/kubernetes/admin.conf kubectl get nodes --no-headers 2>/dev/null" || true)"
  READY="$(awk '$2=="Ready"{c++} END{print c+0}' <<<"$NODES")"
  [ "$READY" -ge 3 ] && { echo "$NODES"; break; }
  sleep 10
done
[ "$READY" -ge 3 ] || { echo "FATAL: nodes not ready ($READY/3 Ready)"; exit 1; }

echo "==> bootstrap complete"
