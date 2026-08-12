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

# Create local kind cluster (validates deploy/ manifests, needs stable net)
kind-up:
	kind create cluster --config kind-config.yaml

# Build proxy image + load into all kind nodes
kind-load:
	podman build -t ghcr.io/llm-proxy:latest .
	kind load docker-image ghcr.io/llm-proxy:latest --name llm-lab

# Install metrics-server in kind (HPA needs it)
kind-metrics:
	kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
	kubectl -n kube-system patch deployment metrics-server --type=json -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
	kubectl -n kube-system rollout status deployment/metrics-server --timeout=120s

# Apply deploy/ manifests in kind
kind-deploy:
	kubectl apply -f deploy/

# Full kind test: up -> metrics -> load -> deploy -> wait ready -> curl NodePort
kind-test: kind-up kind-metrics kind-deploy kind-load
	kubectl rollout status deployment/llm-proxy --timeout=900s
	kubectl get pods -o wide
	curl -s http://127.0.0.1:30080/health

# Tear down kind cluster
kind-down:
	kind delete cluster --name llm-lab
