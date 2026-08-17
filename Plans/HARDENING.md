# HARDENING — Learner Lab compliance & account-safety hardening

**Block:** Block 1 (cluster infra) — applied before Block 2 (AWS deploy)
**Context:** the lab instructions (`Plans/Learner Lab instruction.md`) warn that
*"any attempt to exceed a service limit may result in immediate deactivation of
the AWS account and all resources"* and that exceeding the lab **budget disables
the account**. This document explains each change so nobody has to re-derive it
from the scripts.

> Rule of thumb we follow: stay **2 units under** every hard cap (8<9 instances,
> 31<32 vCPU, size <= medium), **terminate** (never just stop), and shut the
> cluster down every session with `just cluster-down`.

---

## 1. Stale-instance sweep (auto-restart trap)

### The problem

The lab instructions say:

- "Running EC2 instances will be stopped and then automatically restarted the
  next time you start a session" (r. 24, 200, 204).
- 20+ running instances at once -> "immediate deactivation" (r. 186).

If a previous session ended **without** `cluster-down`, the lab stops our
instances. On the next session they **auto-start by themselves** -> they burn
budget, count toward the instance/vCPU caps, and can even push us toward the
deactivation threshold without anyone acting.

### What changed

`infra/guards.sh` gains two functions:

- `tagged_ids <states>` — lists our instances (`tag:cluster=llm-lab`) in the
  given states.
- `sweep_stale()` — called by `infra/01-launch.sh` right after the tripwire,
  **before** any quota check / API writes:
  - if a live cluster is running (`running,pending`) -> **aborts** with
    "run `just cluster-down` first";
  - if only `stopped` instances of ours remain -> **terminates** them.

### Why it is safe

- Terminating stale instances loses nothing: the cluster is ephemeral by design
  (bootstrapped fresh every session from `bootstrap.sh`).
- Launching while a live cluster exists is already refused by the quota guard
  (`count + 3 > 8`), but now the error message tells the user exactly what to do.

### Verified by

`infra/tests/guard-test.sh` — new cases mocking `tagged_ids`:
- live running cluster -> sweep aborts;
- stale stopped instances -> sweep allows (and terminates);
- no tagged instances -> sweep allows.

---

## 2. Security group: self-referencing internal rules

### The problem

The old SG opened **all** k8s ports to `0.0.0.0/0`, including internal ones:

| Port | Service |
|---|---|
| 2379-2380 | etcd (master) |
| 10250-10252 | kubelet |
| 8472/udp | Flannel VXLAN |

etcd and kubelet without auth exposed to the whole internet is an invite to
compromise. An attacker who gets in could create/launch resources in the lab
account — the fastest way to exhaust the budget and get the account disabled.

### What changed

`sg_create()` in `infra/01-launch.sh` now uses **two** rule sets:

1. **Public** (still needed for administration + Block 2 tests): `22` (ssh),
   `6443` (k8s API), `30000-32767` (NodePort range for the curl test).
2. **Self-referencing** — internal cluster ports allow traffic **only from the
   same SG** (`UserIdGroupPairs` -> own `GroupId`): etcd, kubelet, Flannel.

### Why it is safe

- Nodes talk to each other through the SG's own rules (all nodes are in `llm-lab-sg`),
  so k8s keeps working exactly as before.
- A compromised node can no longer pivot to arbitrary internet hosts; only the
  three genuinely public ports remain exposed.

---

## 3. EIP leak sweep (cost leak)

### The problem

`01-launch.sh` allocates an Elastic IP for the master. `03-down.sh` releases
EIPs, but only those it captured **pre-terminate** or that were persisted in
`.cluster-ips`. If the state file is missing (e.g. a crash mid-run), a leftover
allocated EIP would keep billing **even when unassociated** (~$0.005/h), silently.

### What changed

`infra/03-down.sh` now runs a **leak guard**: after releasing captured EIPs, it
queries **all** addresses tagged `cluster=llm-lab` and releases any that remain,
independent of `.cluster-ips`.

### Why it is safe

- Idempotent: releasing an already-released EIP is a no-op (failures are ignored
  with `|| true`).
- Guarantees no tagged EIP can survive a teardown, even after a crash.

---

## 4. Explicit EBS volume (compliance guarantee)

### The problem

The lab caps EBS at 100GB and allows only `gp2/gp3/sc1/standard` (no io1/io2
PIOPS). The launch script relied on the AMI default root volume, which is fine
today but not guaranteed forever.

### What changed

`run-instances` in `infra/01-launch.sh` now passes an explicit
`--block-device-mappings`:

```json
[{"DeviceName":"/dev/xvda","Ebs":{"VolumeSize":20,"VolumeType":"gp3","DeleteOnTermination":true}}]
```

20GB gp3 root volume, auto-deleted on termination — well under the 100GB cap,
a compliant type, and no disk leaks between sessions.

---

## 5. Budget sanity check (`just cost`)

### The problem

AWS Budgets in the lab refreshes every **8-12h** (r. 26), so the budget bar is
always stale; overspending disables the account (r. 636).

### What changed

- New `infra/04-cost.sh` + `just cost` recipe:
  - prints the last 14 days of spend via Cost Explorer (daily);
  - prints the estimated cost of one ~4h run (~$0.42: master t3.small +
    2x t3.medium, runtime only).
- Degrades gracefully if Cost Explorer is not permitted by the lab IAM.

### Why it is safe

Cheap-to-run and read-only; gives a quick pre-flight check before each session
that burns real budget. Real protection still comes from the terminate-always
discipline in point 1 + `just cluster-down` every session.

---

## Session discipline (no code, just rules)

1. Start a session: re-fetch creds from AWS Details (`just cluster-up`).
2. Before launching, run `just cost` and eyeball the budget bar.
3. **Never** end a session with the cluster up: `just cluster-down` **terminates**
   (frees quota + budget). Stopping instead of terminating is forbidden — the
   lab will auto-start stopped instances next session.
4. If anything looks off, `just cluster-down` is safe to re-run (idempotent).

## Files touched

| File | Change |
|---|---|
| `infra/guards.sh` | + `tagged_ids()`, + `sweep_stale()` |
| `infra/01-launch.sh` | call `sweep_stale` pre-quota-check; SG self-referencing for internal ports; explicit 20GB gp3 EBS |
| `infra/03-down.sh` | + tagged-EIP leak sweep |
| `infra/04-cost.sh` | **new** — spend + estimated run cost |
| `infra/tests/guard-test.sh` | + sweep_stale cases (abort live cluster / sweep stale / no-op) |
| `justfile` | + `cost` recipe |
