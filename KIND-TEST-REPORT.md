# Kind Test Report — Block 2 manifests validated locally

Date: 2026-08-12. Host: Fedora (x86_64), rootless podman 5.8.4, kind v0.32.0 (experimental podman provider), kubectl v1.36.3.

## Objective

Validate `deploy/` manifests (sidecar deployment, NodePort service, HPA) on a local kind cluster before the AWS run — including the GGUF prefetch initContainer, GHCR image pulls, metrics-server, and HPA scale-out.

## Setup

- Cluster config: `kind-config.yaml` (control-plane + 2 workers, NodePort 30080 mapped to host).
- Commands: `just kind-up` → `kind-metrics` → `kind-load` → `kind-deploy` → `kind-test`.

## Cluster creation

First attempt failed transiently (kubelet not healthy after 4m — rootless podman warmup). Retry with `--retain` succeeded:

```
kind create cluster --config kind-config.yaml --retain
kubectl cluster-info --context kind-llm-lab
Have a nice day! 👋
```

```
$ kind get clusters
llm-lab
```

```
$ kubectl get nodes -o wide
NAME                    STATUS   ROLES           AGE     VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                       KERNEL-VERSION                  CONTAINER-RUNTIME
llm-lab-control-plane   Ready    control-plane   4m24s   v1.36.1   10.89.3.9     <none>        Debian GNU/Linux 13 (trixie)   7.1.7-200.fc44.x86_64 (amd64)   containerd://2.3.1
llm-lab-worker          Ready    <none>          4m10s   v1.36.1   10.89.3.8     <none>        Debian GNU/Linux 13 (trixie)   7.1.7-200.fc44.x86_64 (amd64)   containerd://2.3.1
llm-lab-worker2         Ready    <none>          23s     v1.36.1   10.89.3.10    <none>        Debian GNU/Linux 13 (trixie)   7.1.7-200.fc44.x86_64 (amd64)   containerd://2.3.1
```

System pods healthy (coredns x2, kindnet x3, etcd, apiserver, controller-manager, kube-proxy all Running).

## Metrics Server

```
$ kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
service/metrics-server created
deployment.apps/metrics-server created
apiservice.apiregistration.k8s.io/v1beta1.metrics.k8s.io created

$ kubectl -n kube-system patch deployment metrics-server --type=json -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
deployment.apps/metrics-server patched

$ kubectl top node
NAME                    CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)
llm-lab-control-plane   153m         0%       723Mi           5%
llm-lab-worker          28m          0%       158Mi           1%
llm-lab-worker2         61m          0%       141Mi           1%
```

## Image build + load

```
$ podman build -t ghcr.io/bobthebot988/llm-proxy:latest .
Successfully tagged ghcr.io/bobthebot988/llm-proxy:latest
Successfully tagged ghcr.io/llm-proxy:latest
Successfully tagged localhost/cloud_project_proxy:latest
72bd3715e0b8e1c452c84c61a51c413fe452acd9c9dd84f090290093f98c68ad

$ kind load docker-image ghcr.io/bobthebot988/llm-proxy:latest --name llm-lab
Image: "ghcr.io/bobthebot988/llm-proxy:latest" with ID "72bd3715e0b8e1c452c84c61a51c413fe452acd9c9dd84f090290093f98c68ad" not yet present on node "llm-lab-worker", loading...
Image: "ghcr.io/bobthebot988/llm-proxy:latest" with ID "72bd3715e0b8e1c452c84c61a51c413fe452acd9c9dd84f090290093f98c68ad" not yet present on node "llm-lab-worker2", loading...
Image: "ghcr.io/bobthebot988/llm-proxy:latest" with ID "72bd3715e0b8e1c452c84c61a51c413fe452acd9c9dd84f090290093f98c68ad" not yet present on node "llm-lab-control-plane", loading...
```

Proxy image also pushed to GHCR: `ghcr.io/bobthebot988/llm-proxy:latest` — since made **public** (anonymous pull, no `imagePullSecrets` needed on AWS).

## Deploy

```
$ kubectl apply -f deploy/
deployment.apps/llm-proxy created
horizontalpodautoscaler.autoscaling/llm-proxy created
service/llm-proxy created
```

Pod lifecycle: Init (GGUF 791MB download from HuggingFace ~8 min) → llama-server image pull (~2m) → proxy container.

```
$ kubectl get pods -o wide | grep llm-proxy
llm-proxy-bccbf58cf-2m9j5   2/2     Running   0    5m25s   10.244.2.3   llm-lab-worker2   <none>   <none>
```

Container pull evidence:
```
Normal  Pulling    kubelet  spec.initContainers{model-prefetch}: Pulling image "curlimages/curl:8.21.0"
Normal  Pulled     kubelet  ... Successfully pulled image "curlimages/curl:8.21.0" in 11.344s. Image size: 10652192 bytes.
Normal  Pulling    kubelet  spec.containers{llama-server}: Pulling image "ghcr.io/ggml-org/llama.cpp:server"
Normal  Pulled     kubelet  ... Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 2m5s. Image size: 310658622 bytes.
```

## End-to-end smoke (NodePort 30080)

```
$ curl -s http://127.0.0.1:30080/health
{"status":"ok"}

$ curl -s http://127.0.0.1:30080/generate -H 'Content-Type: application/json' \
    -d '{"messages":[{"role":"user","content":"Say hi in one short sentence."}],"max_tokens":128,"stream":false}' | jq -r '.choices[0].message.content'
Hello! How can I help? 😊
```

## HPA — metrics live + scale-out verified

Idle:
```
$ kubectl get hpa
NAME        REFERENCE              TARGETS       MINPODS   MAXPODS   REPLICAS   AGE
llm-proxy   Deployment/llm-proxy   cpu: 8%/60%   1         2         1          16m

$ kubectl top pods
NAME                        CPU(cores)   MEMORY(bytes)
llm-proxy-bccbf58cf-2m9j5   4m           268Mi
```

Under Locust load (4 users, 100s, headless):
```
$ .venv/bin/locust -f locustfile.py --host http://127.0.0.1:30080 --headless -u 4 -r 1 --run-time 100s

POST /generate ... 32 req, 0 failures; med 9.2s, p95 19s, p100 20s

$ kubectl get hpa
NAME        REFERENCE              TARGETS        MINPODS   MAXPODS   REPLICAS   AGE
llm-proxy   Deployment/llm-proxy   cpu: 91%/60%   1         2         2          18m

$ kubectl get pods -o wide | grep llm-proxy
llm-proxy-bccbf58cf-2m9j5   2/2   Running   0   7m36s   10.244.2.3   llm-lab-worker2
llm-proxy-bccbf58cf-s9zd7   0/2   Init:0/1   0   70s     10.244.1.4   llm-lab-worker
```

**Result:** CPU 91% > 60% target → HPA scaled replicas 1→2. Scale-out mechanism confirmed end-to-end.

## Issues found & fixed during the test

1. `curlimages/curl:8` tag does not exist (404 on Docker Hub) → pinned `curlimages/curl:8.21.0`.
2. YAML boolean trap: unquoted `off` in `--reasoning off` args parsed as bool → quoted `"off"`.
3. Proxy image was not public → GHCR anonymous pull 401 (`ghcr-cred` secret workaround) → resolved by making the package **public** on GitHub Packages; `imagePullSecrets` removed from the deployment.
4. Stale ReplicaSet after manifest edit (old `curl:8` pod looped ImagePullBackOff) → deleted old RS.
5. HPA `maxReplicas` 3 → 2 (2000m/pod on 2x t3.medium).

## Post-test follow-ups

- `infra/kind-fast.sh` + `deploy/deployment-kind-fast.yaml`: offline fast path — reuses the local llama-server image + GGUF (copied into kind nodes, hostPath mount, no initContainer download). Pod Ready in ~8s vs ~8min.
- Guard trigger tests: `infra/tests/` + just recipes `case-0/1/2`, `guard-default`, `case-all` (mocked inventory, no AWS).

## Conclusion

All Block 2 artifacts validated locally: sidecar deployment with GGUF prefetch, NodePort access, metrics-server, and HPA-driven scale-out under real LLM load. Ready for AWS (`just cluster-up`).
