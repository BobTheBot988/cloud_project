# Block 1 — Cluster setup (1 session) — Amazon Linux 2

## Goal

3-node k8s cluster (kubeadm) Ready + Metrics Server installed. All via committed `infra/` scripts. Budget-frugal: instances terminated at session end.

## Topology

- master `t3.small` (2GB RAM, control plane; OOM risk, fallback -> t3.medium)
- 2x worker `t3.medium` (2 vCPU / 4GB, llama-server `--threads 2`)
- Region us-east-1, AZs us-east-1a/1b
- LabInstanceProfile, <=9 inst / <=32 vCPU guard
- Elastic IP on master (stable ssh + kubeconfig address)
- OS: Amazon Linux 2 (latest `amazon-linux-2` AMI)

## Execution gate (before anything)

- `aws` CLI on PATH (user installed)
- `aws sts get-caller-identity` succeeds (Learner Lab creds configured)
- If `aws` still missing from PATH -> reinstall v2 bundle

## Security Group ports

`22` (ssh), `6443` (API), `2379-2380` (etcd, master), `10250-10252` (kubelet), `8472/udp` (Flannel VXLAN), `30000-32767` (NodePort range — needed for Block 2 curl test)

## infra/ scripts

| File | Purpose |
|---|---|
| `00-env.sh` | vars: region, AZs, instance types, AMI lookup, SSH pubkey, instance-count guard |
| `01-launch.sh` | SG + launch master + 2 workers (LabInstanceProfile + user-data pubkey), EIP -> master, wait SSH, print IPs |
| `bootstrap.sh master` | AL2 kubeadm setup + init + Flannel + Metrics Server; prints join token+hash |
| `bootstrap.sh worker` | AL2 deps + `kubeadm join` |
| `02-verify.sh` | `kubectl get nodes -o wide` all Ready; `kubectl get pods -A` Running; `kubectl top node` (Metrics Server proof) |
| `03-down.sh` | terminate instances (session-end teardown) |

## bootstrap.sh master (AL2 recipe)

1. Add k8s yum repo (pkgs.k8s.io v1.31 rpm)
2. `yum install -y kubelet kubeadm kubectl` (pin version), `systemctl enable --now kubelet`
3. **SELinux:** `setenforce 0` + `/etc/selinux/config` -> `disabled` (AL2 enforces by default; required for kubelet)
4. `swapoff -a` + comment swap in fstab
5. sysctl: `net.bridge.bridge-nf-call-iptables=1`, `net.ipv4.ip_forward=1`
6. `iptables -P FORWARD ACCEPT`
7. containerd: install, patch `/etc/containerd/config.toml` -> `systemd_cgroup = true` (AL2 default cgroupfs)
8. `kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address <master-ip>` (or node-private IP)
9. kubeconfig for user + `kubectl taint nodes --all node-role.kubernetes.io/control-plane-` NOT removed (workers run pods)
10. Flannel: `kubectl apply -f kube-flannel.yml` (10.244.0.0/16)
11. Metrics Server: `components.yaml` + patch `--kubelet-insecure-tls`
12. Print: `kubeadm token create --print-join-command`

## Risks / notes

- **t3.small 2GB OOM** during `kubeadm init` -> fallback: master to t3.medium.
- **IP change after restart** -> `kubeadm reset` on affected node + re-init/join.
- AL2 nftables vs iptables-legacy: set bridge-nf-call + FORWARD ACCEPT.
- Metrics Server `--kubelet-insecure-tls` needed (no kubelet CA bootstrap on AL2 default).
- Off between sessions via `03-down.sh`.

## Session budget

~$0.02 + 2x ~$0.042 = ~$0.10/h running. Tear down when done.

## Verify (done criteria)

- `kubectl get nodes` -> 3x Ready
- `kubectl get pods -A` -> flannel + coredns + metrics-server Running
- `kubectl top node` -> numbers present (HPA dependency proven)
