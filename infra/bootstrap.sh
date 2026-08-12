#!/usr/bin/env bash
set -euo pipefail

ROLE="${1:-}"
[ "$ROLE" = master ] || [ "$ROLE" = worker ] || { echo "usage: bootstrap.sh master|worker [join-cmd]"; exit 1; }
JOIN_CMD="${2:-}"
K8S_VERSION=1.31

echo "==> [$ROLE] AL2023 kubeadm node setup"

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

echo "==> install kubelet kubeadm kubectl"
dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
systemctl enable --now kubelet

echo "==> install + configure containerd (systemd cgroup)"
dnf install -y containerd
mkdir -p /etc/containerd
containerd config default > /etc/containerd/config.toml
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
systemctl enable --now containerd

echo "==> disable SELinux"
setenforce 0 || true
sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

echo "==> disable swap"
swapoff -a
sed -i '/swap/s/^/#/' /etc/fstab

echo "==> sysctl + iptables"
modprobe br_netfilter 2>/dev/null || true
cat > /etc/sysctl.d/99-k8s.conf <<'EOF'
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
sysctl --system >/dev/null
iptables -P FORWARD ACCEPT

echo "==> disable firewalld (SG handles firewalling)"
systemctl disable --now firewalld || true

PRIVATE_IP=$(hostname -I | awk '{print $1}')

if [ "$ROLE" = master ]; then
  echo "==> kubeadm init"
  kubeadm init \
    --pod-network-cidr 10.244.0.0/16 \
    --apiserver-advertise-address "$PRIVATE_IP" \
    --ignore-preflight-errors=Mem

  export KUBECONFIG=/etc/kubernetes/admin.conf

  echo "==> flannel"
  kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml

  echo "==> metrics-server (+ insecure kubelet tls)"
  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
  kubectl -n kube-system patch deployment metrics-server --type=json \
    -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
  kubectl rollout status deployment/metrics-server -n kube-system --timeout=120s || true

  echo "==> JOIN_CMD_START"
  kubeadm token create --print-join-command
  echo "==> JOIN_CMD_END"
else
  [ -n "$JOIN_CMD" ] || { echo "worker requires join command as arg2"; exit 1; }
  echo "==> joining cluster"
  bash -c "$JOIN_CMD"
fi

echo "==> [$ROLE] done"
