#!/usr/bin/env bash
# Purpose: kubeadm node setup on AL2023 for k8s v1.36. As master: install
# kube* + containerd, kubeadm init, flannel, metrics-server, print join
# command. As worker: run the join command passed as arg2.
set -euo pipefail

# boiler plate: parse role/join args and require a valid role
ROLE="${1:-}"
[ "$ROLE" = master ] || [ "$ROLE" = worker ] || { echo "usage: bootstrap.sh master|worker [join-cmd]"; exit 1; }
JOIN_CMD="${2:-}"
K8S_VERSION=1.36

echo "==> [$ROLE] AL2023 kubeadm node setup"

# kubeadm steps: add pkgs.k8s.io repo pinned to $K8S_VERSION
echo "==> k8s repo ($K8S_VERSION)"
cat > /etc/yum.repos.d/kubernetes.repo <<EOF
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v$K8S_VERSION/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v$K8S_VERSION/rpm/repodata/repomd.xml.key
exclude=kubelet kubeadm kubectl
EOF

# kubeadm steps: install kubelet/kubeadm/kubectl and start kubelet
echo "==> install kubelet kubeadm kubectl"
dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
systemctl enable --now kubelet

# kubeadm steps: containerd runtime with systemd cgroup driver
echo "==> install + configure containerd (systemd cgroup)"
dnf install -y containerd
mkdir -p /etc/containerd
containerd config default > /etc/containerd/config.toml
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
systemctl enable --now containerd

# kubeadm steps: SELinux off (preflight requirement)
echo "==> disable SELinux"
setenforce 0 || true
sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

# kubeadm steps: swap off (preflight requirement)
echo "==> disable swap"
swapoff -a
sed -i '/swap/s/^/#/' /etc/fstab

# kubeadm steps: bridge/forward sysctl + iptables FORWARD ACCEPT
echo "==> sysctl + iptables"
modprobe br_netfilter 2>/dev/null || true
cat > /etc/sysctl.d/99-k8s.conf <<'EOF'
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
sysctl --system >/dev/null
iptables -P FORWARD ACCEPT

# boiler plate: firewalld off — SG handles firewalling
echo "==> disable firewalld (SG handles firewalling)"
systemctl disable --now firewalld || true

# boiler plate: primary private IP used as apiserver advertise-address
PRIVATE_IP=$(hostname -I | awk '{print $1}')

# kubeadm steps (master): init control plane with pod CIDR
if [ "$ROLE" = master ]; then
  echo "==> kubeadm init"
  kubeadm init \
    --pod-network-cidr 10.244.0.0/16 \
    --apiserver-advertise-address "$PRIVATE_IP" \
    --ignore-preflight-errors=Mem

  # boiler plate: point kubectl at the admin kubeconfig
  export KUBECONFIG=/etc/kubernetes/admin.conf

  # kubeadm steps (master): flannel pod network
  echo "==> flannel"
  kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml

  # kubeadm steps (master): metrics-server for HPA, patched for insecure kubelet TLS
  echo "==> metrics-server (+ insecure kubelet tls)"
  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
  kubectl -n kube-system patch deployment metrics-server --type=json \
    -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
  kubectl rollout status deployment/metrics-server -n kube-system --timeout=120s || true

  # join orchestration: emit fresh join command between markers for bootstrap-all
  echo "==> JOIN_CMD_START"
  kubeadm token create --print-join-command
  echo "==> JOIN_CMD_END"
else
  # join orchestration (worker): join cluster with master's join command
  [ -n "$JOIN_CMD" ] || { echo "worker requires join command as arg2"; exit 1; }
  echo "==> joining cluster"
  bash -c "$JOIN_CMD"
fi

echo "==> [$ROLE] done"
