# Block 1 — Cluster setup (1 session) — Amazon Linux 2

## Goal

3-node k8s cluster (kubeadm) Ready + Metrics Server installed. All via committed `infra/` scripts, driven by `just`. Budget-frugal: instances TERMINATED at session end.

## Decisions

- OS: Amazon Linux 2023 (`al2023-ami-*-x86_64` Quick Start AMI, us-east-1). AL2 rejected (EOL June 2025). NixOS evaluated, rejected — kubeadm runtime glue + rebuild cost on t3.small > reproducibility benefit for a teardown-between-sessions lab.
- No `run.sh` — cluster lifecycle via `just` recipes calling `infra/` scripts.
- AWS Academy Learner Lab account (temporary credentials per session).

## Topology

- master `t3.small` (2GB RAM, control plane; OOM risk, fallback -> t3.medium)
- 2x worker `t3.medium` (2 vCPU / 4GB, llama-server `--threads 2`)
- Region us-east-1 (Learner Lab allows us-east-1 + us-west-2 only; one `REGION` var)
- AZs us-east-1a / us-east-1b
- LabInstanceProfile (pre-created in lab) attached to every node
- Elastic IP on master (stable ssh + kubeconfig); `USE_EIP=false` fallback = public IP (changes on stop/start)

## Learner Lab constraints (enforced in code)

- Regions: us-east-1 / us-west-2 only.
- Instance types: nano, micro, small, medium, large (larger => terminated). We use small/medium.
- Concurrent instances: max 9 (hard), >=20 => account deactivation. **Our cap: 8.**
- vCPU: max 32. **Our cap: 31.**
- Stopped instances persist across sessions and AUTO-START next session -> count against quota + burn budget. Guard counts `stopped` + `running`; `cluster-down` TERMINATES (not stops).
- Budget: AWS Budgets lags 8-12h. Over budget = account disabled + data loss. `cluster-down` at every session end.
- Credentials temporary: re-fetch Access Key / Secret / Session Token from `AWS Details` each session.

## Execution gate (before anything)

1. `aws` CLI on PATH + creds configured:
   ```
   export AWS_PROFILE=aws_academy
   aws configure set aws_access_key_id <from AWS Details>
   aws configure set aws_secret_access_key <...>
   aws configure set aws_session_token <...>
   aws configure set region us-east-1 --profile aws_academy
   aws sts get-caller-identity   # must print sandbox account arn
   ```

## Security Group ports

`22` (ssh), `6443` (API), `2379-2380` (etcd, master), `10250-10252` (kubelet), `8472/udp` (Flannel VXLAN), `30000-32767` (NodePort range — needed for Block 2 curl test)

## Hard quota guards (in `00-env.sh` + `01-launch.sh`)

Constants:
- `MAX_INSTANCES=8`, `MAX_VCPU=31`, `MAX_TYPE=medium`
- t3 vCPU map: nano=2 micro=2 small=2 medium=2 large=2

Before ANY `run-instances`, abort with printed inventory if:
1. existing instances (state running/stopped/pending, tag `cluster=llm-lab`) + 3 > 8
2. sum vCPU existing + projected (2 + 2x2 = 6) > 31
3. any existing instance type size > medium (account at risk)
4. `MASTER_TYPE`/`WORKER_TYPE` size not in {nano,micro,small,medium}

Tripwire: refuse to run if `MAX_INSTANCES != 8` or `MAX_VCPU != 31` (no silent weakening).

## infra/ scripts

| File | Purpose |
|---|---|
| `00-env.sh` | vars: PROFILE, REGION, AZs, instance types, AMI lookup, SSH pubkey, quota constants + vCPU map |
| `01-launch.sh` | quota guards -> SG -> launch master + 2 workers (LabInstanceProfile + user-data pubkey, tags `cluster=llm-lab`, `role=`) -> EIP -> wait SSH -> print IP table |
| `bootstrap.sh master` | AL2 kubeadm setup + init + Flannel + Metrics Server; prints join token+hash |
| `bootstrap.sh worker` | AL2 deps + `kubeadm join` |
| `02-verify.sh` | `kubectl get nodes -o wide` Ready; `kubectl get pods -A` Running; `kubectl top node` (Metrics Server proof) |
| `03-down.sh` | quota-guarded TERMINATE by tag; release EIP; delete SG |

## just recipes (replace run.sh)

```
just cluster-up       # 01-launch -> bootstrap master -> bootstrap workers -> 02-verify
just launch           # 01-launch.sh only
just cluster-verify   # 02-verify.sh
just cluster-down     # 03-down.sh
```

## bootstrap.sh master (AL2023 recipe)

1. Add k8s dnf repo (pkgs.k8s.io, `el9` path, v1.31)
2. `dnf install -y kubelet kubeadm kubectl` (pin version), `systemctl enable --now kubelet`
3. `dnf install -y containerd` (bundled in AL2023 repos), patch `/etc/containerd/config.toml` -> `systemd_cgroup = true`, `systemctl enable --now containerd`
4. **SELinux:** `setenforce 0` + `/etc/selinux/config` -> `disabled` (AL2023 enforces by default; required for kubelet)
5. `swapoff -a` + comment swap in fstab
6. sysctl: `net.bridge.bridge-nf-call-iptables=1`, `net.ipv4.ip_forward=1`
7. `iptables -P FORWARD ACCEPT`
8. `systemctl disable --now firewalld` (SG does the firewalling)
9. `kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address <node-private-ip>` (cgroup driver = systemd, AL2023 unified cgroup v2)
10. kubeconfig for user; control-plane taint stays (workers run pods)
11. Flannel: `kubectl apply -f kube-flannel.yml` (10.244.0.0/16)
12. Metrics Server: `components.yaml` + patch `--kubelet-insecure-tls`
13. Print: `kubeadm token create --print-join-command`

Fallback if el9 rpm set fails on AL2023: download static kubeadm/kubelet/kubectl binaries from kubernetes-releases (no repo), same init/join flow.

## Risks / notes

- **t3.small 2GB OOM** during `kubeadm init` -> fallback: master to t3.medium (still within quota/type caps).
- **el9 k8s rpm on AL2023**: AL2023 is not RHEL9 but accepts the el9 rpm set (widely used). On dependency failure -> static binaries fallback.
- **IP change after restart / new session** -> EIP on master avoids it; else refresh IP in `00-env.sh` + kubeconfig.
- AL2023 nftables vs iptables-legacy: set bridge-nf-call + FORWARD ACCEPT; firewalld disabled.
- Metrics Server `--kubelet-insecure-tls` needed (no kubelet CA bootstrap on AL2 default).
- **Account deactivation risk** if limits exceeded -> guards are mandatory, never bypass.
- Off between sessions: `just cluster-down` (TERMINATE, frees quota + budget).

## Session budget

~$0.02 + 2x ~$0.042 = ~$0.10/h running. Terminate when done.

## Verify (done criteria)

- `kubectl get nodes` -> 3x Ready
- `kubectl get pods -A` -> flannel + coredns + metrics-server Running
- `kubectl top node` -> numbers present (HPA dependency proven)
