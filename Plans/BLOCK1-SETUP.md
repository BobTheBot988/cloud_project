# BLOCK 1 — Manual Setup Runbook (AWS Academy Learner Lab)

Step-by-step todo for running the cluster. Do Phases A+B once per session; Phase C is one command; Phase D at session end.

## Prerequisites (once)

- [ ] `aws` CLI v2 installed on this machine
- [ ] repo cloned (`git clone git@github.com:BobTheBot988/cloud_project.git`)
- [ ] `just` + `kubectl` available

## Phase A — AWS Academy portal

1. Login **AWS Academy** → course → **Learner Lab**
2. Click **Start Lab** (session timer starts, sandbox provisions)
3. Click **AWS Details** → copy `Access Key`, `Secret Access Key`, `Session Token`
4. **Download PEM** → save to `~/.ssh/labsuser.pem`
5. `chmod 400 ~/.ssh/labsuser.pem`

## Phase B — local AWS CLI wiring (repeat every session — creds are temporary)

6. `export AWS_PROFILE=aws_academy`
7. ```
   aws configure set aws_access_key_id <Access Key> --profile aws_academy
   aws configure set aws_secret_access_key <Secret Access Key> --profile aws_academy
   aws configure set aws_session_token <Session Token> --profile aws_academy
   aws configure set region us-east-1 --profile aws_academy
   ```
8. **Gate check:** `aws sts get-caller-identity` must print the sandbox account arn. Stop here if it errors.

## Phase C — cluster up (scripts launch the instances)

9. `just cluster-up`
   - `01-launch.sh`: quota guards (≤8 inst, ≤31 vCPU, ≤medium) → Security Group → launch master t3.small + 2x worker t3.medium (`KeyName=vockey`, LabInstanceProfile, tags `cluster=llm-lab`) → Elastic IP on master → wait SSH
   - `bootstrap.sh master`: AL2023 kubeadm setup + init + Flannel + Metrics Server, prints join command
   - `bootstrap.sh worker` x2: deps + join
   - `02-verify.sh`: nodes Ready + `kubectl top node` (Metrics Server proof)
10. Manual confirm: `kubectl get nodes` -> 3x Ready

## Phase D — session end (budget safety)

11. `just cluster-down` -> TERMINATES nodes, releases EIP, deletes SG
12. (Optional) end lab session in portal

## Notes

- Node SSH identity = `~/.ssh/labsuser.pem` (vockey keypair from AWS Details). `00-env.sh` holds `SSH_KEY`.
- Credentials die with the session; Phase B repeats each session.
- Quota guards enforced in `01-launch.sh` — no console clicking needed.
- Budget: AWS Budgets lags 8-12h; always `cluster-down` before ending the session.
