#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
CLUSTER=llm-lab
SNAP="$HOME/.cache/huggingface/hub/models--unsloth--Qwen3.5-0.8B-MTP-GGUF/snapshots/cf8a611f6ed2c2060046219a19f12cd3d5ecd67c/Qwen3.5-0.8B-UD-Q6_K_XL.gguf"
LLAMA_IMG=ghcr.io/ggml-org/llama.cpp:server
PROXY_IMG=ghcr.io/bobthebot988/llm-proxy:latest

if ! kind get clusters | grep -q "$CLUSTER"; then
  echo "==> creating kind cluster"
  kind create cluster --config "$REPO/kind-config.yaml"
else
  echo "==> reusing cluster $CLUSTER"
fi

if [ ! -f "$SNAP" ]; then
  echo "==> model not cached, downloading via hf"
  hf download hf://unsloth/Qwen3.5-0.8B-MTP-GGUF/Qwen3.5-0.8B-UD-Q6_K_XL.gguf
fi
BLOB="$(readlink -f "$SNAP")"
echo "    GGUF: $BLOB"

if ! docker image inspect "$LLAMA_IMG" >/dev/null 2>&1; then
  echo "==> llama-server image missing, pulling"
  docker pull "$LLAMA_IMG"
fi
if ! docker image inspect "$PROXY_IMG" >/dev/null 2>&1; then
  echo "==> proxy image missing, building"
  docker build -t "$PROXY_IMG" "$REPO"
fi

echo "==> loading images into kind nodes"
kind load docker-image "$PROXY_IMG" --name "$CLUSTER"
kind load docker-image "$LLAMA_IMG" --name "$CLUSTER"

echo "==> copying GGUF into node filesystems"
for n in "$CLUSTER-control-plane" "$CLUSTER-worker" "$CLUSTER-worker2"; do
  docker exec "$n" mkdir -p /models
  docker cp "$BLOB" "$n:/models/Qwen3.5-0.8B-UD-Q6_K_XL.gguf"
done

echo "==> metrics-server (HPA dependency)"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml >/dev/null
kubectl -n kube-system patch deployment metrics-server --type=json \
  -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]' >/dev/null
kubectl -n kube-system rollout status deployment/metrics-server --timeout=120s >/dev/null

echo "==> swapping to fast deployment (hostPath GGUF, no download)"
kubectl delete -f "$REPO/deploy/deployment.yaml" --ignore-not-found
kubectl apply -f "$REPO/deploy/deployment-kind-fast.yaml"
kubectl apply -f "$REPO/deploy/service.yaml"
kubectl apply -f "$REPO/deploy/hpa.yaml"
kubectl rollout status deployment/llm-proxy --timeout=300s
kubectl get pods -o wide
curl -s -m 5 http://127.0.0.1:30080/health
