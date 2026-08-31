set shell := ["bash", "-c"]

# Run proxy tests
test:
	.venv/bin/python -m pytest tests/ -q

# Stream one generation through the proxy with a custom prompt
# Usage: just test-prompt "your question here"
test-prompt prompt:
	curl -s http://127.0.0.1:8000/generate -H 'Content-Type: application/json' \
		-d '{"messages":[{"role":"user","content":"{{prompt}}"}],"max_tokens":1000,"stream":true}' \
		| grep --line-buffered -v '^data: \[DONE\]' \
		| sed -u 's/^data: //' \
		| jq --unbuffered -r -j 'select(.choices[0]?.delta?.content != null) | .choices[0].delta.content'

# Validate compose config
compose-config:
	podman-compose -f compose.yaml config

# Up the local stack (k8s dry run)
up:
	podman-compose -f compose.yaml up -d --build

# Tear down the local stack
down:
	podman-compose -f compose.yaml down

# Launch EC2 cluster (quota-guarded), run 01-launch.sh
launch:
	bash infra/01-launch.sh

# Full cluster bring-up: launch -> bootstrap master+workers -> verify
cluster-up: launch
	bash infra/bootstrap-all.sh
	bash infra/02-verify.sh

# Verify cluster health via master
cluster-verify:
	bash infra/02-verify.sh

# Terminate cluster, release EIP, delete SG (budget safety)
cluster-down:
	bash infra/03-down.sh

# Show recent account spend + estimated run cost (budget sanity check)
cost:
	bash infra/04-cost.sh

# Create local kind cluster (validates deploy/ manifests, needs stable net)
kind-up:
	kind create cluster --config kind-config.yaml

# Build proxy image + load into all kind nodes
kind-load:
	docker build -t ghcr.io/bobthebot988/llm-proxy:latest .
	kind load docker-image ghcr.io/bobthebot988/llm-proxy:latest --name llm-lab

# Fast offline kind run: reuses local images + GGUF (no re-downloads)
kind-fast:
	bash infra/kind-fast.sh

# Install metrics-server in kind (HPA needs it)
kind-metrics:
	kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
	kubectl -n kube-system patch deployment metrics-server --type=json -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
	kubectl -n kube-system rollout status deployment/metrics-server --timeout=120s

# Apply deploy/ manifests in kind
kind-deploy:
	kubectl apply -f deploy/

# Full kind test: up -> metrics -> load -> deploy -> wait ready -> curl NodePort
kind-test: kind-up kind-metrics kind-load kind-deploy
	kubectl rollout status deployment/llm-proxy --timeout=900s
	kubectl get pods -o wide
	curl -s http://127.0.0.1:30080/health

# Tear down kind cluster
kind-down:
	kind delete cluster --name llm-lab

# Guard trigger tests (mock inventory, no AWS)

# case 0: max 1 instance
case-0: case-1-instance

# case 1: max 2 vcpus
case-1: case-2-vcpus

# case 2: max 1 instance + 2 vcpus
case-2: case-3-mixed

# alias: max 1 instance (fall0)
case-1-instance:
	bash infra/tests/guard-test.sh fall0

# alias: max 2 vcpus (fall1)
case-2-vcpus:
	bash infra/tests/guard-test.sh fall1

# alias: mixed (fall2)
case-3-mixed:
	bash infra/tests/guard-test.sh fall2

# sanity: default 8/31 must allow + reject oversized
guard-default:
	bash infra/tests/guard-test.sh default

# run all guard cases
case-all: case-0 case-1 case-2
	@echo "all guard cases passed"

# Block 3 experiments (Person A: scaling & intensity)

# Test A: continuous ramp (warm-up->ramp->steady->ramp-down->drain), N runs
# Env: RUNS, U_MAX, SIZE, TARGET, LOADGEN (required for AWS, in-AWS load-gen)
exp-a:
	bash infra/exp-a.sh

# Test B: fixed-intensity sweep, N runs per level
# Env: RUNS, LEVELS (users), STEADY_MIN, SIZE, TARGET, LOADGEN
exp-b:
	bash infra/exp-b.sh

# Start the kubectl metric collector (foreground loop; write to data/raw)
# Usage: just collect <scenario> <run>
collect scenario run:
	bash infra/collect.sh start {{scenario}} {{run}}

# Stop the metric collector + snapshot events
# Usage: just collect-stop <scenario> <run>
collect-stop scenario run:
	bash infra/collect.sh stop {{scenario}} {{run}}

# Phase 0 smoke: compose up -> size-bucket burst test -> non-empty gen -> down
exp-smoke:
	bash infra/exp-smoke.sh

# exp4 variant: 4-worker cluster + HPA max 4 + Test B sweep (N=20/level, 2min steady)
# Env: LEVELS SIZE TARGET LOADGEN RUN_START
# Setup: WORKERS=4 just cluster-up, then deploy with deploy/hpa-exp4.yaml
exp4:
	SCENARIO=exp4 RUNS=20 STEADY_MIN=2 bash infra/exp-b.sh

# exp6 variant: 6-worker cluster + HPA max 6 + Test B sweep (N=20/level, 2min steady)
exp6:
	SCENARIO=exp6 RUNS=20 STEADY_MIN=2 bash infra/exp-b.sh

# Test C: request-size comparison — same-size sweep per class (small/medium/large)
# Isolated per-size delay (no cross-size interference); data/raw/testC_<size>/
exp-c:
	bash infra/exp-c.sh

# Test D: bursty workload (normal -> burst, repeated), N runs.
# Env: RUNS, LOW_USERS, HIGH_USERS, NORMAL_SECS, BURST_SECS, CYCLES,
#      COLLECT_INTERVAL, TARGET, LOADGEN
exp-d:
	bash infra/exp-d.sh

# Launch the in-AWS Locust load-gen node (t3.micro, quota-guarded +1/+2).
# Prints LOADGEN=ec2-user@<ip> to export for the exp-* scripts.
loadgen-up:
	bash infra/loadgen-up.sh

# Person B one-shot AWS session: cluster-up -> deploy -> loadgen-up -> Test C
# @20 users (small/medium/large/mix, RUNS=10, STEADY_MIN=2, fresh pod between
# classes) -> commit -> teardown. Needs a ~4h session (SESSION_HOURS=4).
# Env: REGION AZ1 AZ2 SESSION_HOURS START_AT LEVELS_C RUNS_C STEADY_MIN_C
#      TESTC_SCENARIOS RUNS_D (0 = Test D off) NO_TEARDOWN
# Run unattended with: setsid nohup just day-run > /tmp/day-run.log 2>&1 &
day-run:
	bash infra/day-run.sh

# switch active variant HPA on a live cluster (exp4|exp6)
variant-hpa v:
	bash infra/swap-hpa.sh {{v}}

# Test C @20 users su 6 POD FISSI: pin HPA exp6 min=max=6 + scale a 6 + wait Ready
# (12 slot paralleli: 6 pod x --parallel 2 — il vero collo di bottiglia era il
# numero di slot, non la CPU). `down` ripristina l'autoscaling (min=1/max=6).
# Da eseguire DOPO cluster-up+deploy, PRIMA di `day-run` / `exp-c`.
testc-6pod-up:
	bash infra/testc-6pod.sh up

testc-6pod-down:
	bash infra/testc-6pod.sh down

# 4-worker cluster bring-up (exp4); quota guard enforces 6 inst/12 vCPU
exp4-up: launch4
	bash infra/bootstrap-all.sh
	bash infra/02-verify.sh

# 6-worker cluster bring-up (exp6); quota guard enforces 8 inst/16 vCPU
exp6-up: launch6
	bash infra/bootstrap-all.sh
	bash infra/02-verify.sh

# launch 4-worker cluster (WORKERS=4)
launch4:
	WORKERS=4 bash infra/01-launch.sh

# launch 6-worker cluster (WORKERS=6)
launch6:
	WORKERS=6 bash infra/01-launch.sh

# analysis: variant plots + tables from data/raw -> artifacts/
plots:
	.venv/bin/python plots/analyze.py

# Block 3 offline pipeline (Person B, Test A/B -> report figures).
# Uses distinct names so `plots` (variant analysis) stays untouched.

# sanity checks on the raw Test A/B data (exit 1 on structural ERROR)
sanity:
	.venv/bin/python infra/plots.py sanity

# raw CSVs -> processed avgs -> Test A/B report figures + R3 table
plots-b:
	.venv/bin/python infra/plots.py all

# common-mistakes sanity report (tables/)
report:
	.venv/bin/python infra/plots.py report

# 6-month cost estimate: EC2 stack vs single EC2 vs Lambda (tables/)
r4:
	.venv/bin/python infra/r4_cost.py
