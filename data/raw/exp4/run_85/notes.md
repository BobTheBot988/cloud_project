# scenario=exp4 run=85
collect_start=1787446253
interval_sec=60
run=85
run_start=1787446256
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787446414
--- events ---
56m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
56m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-z8vvr
56m   Normal    Pulling             pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "curlimages/curl:8.21.0"
56m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-z8vvr           Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
56m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
56m   Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
56m   Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
56m   Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
55m   Normal    Pulling             pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
55m   Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
55m   Normal    Pulling             pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m   Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
55m   Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
55m   Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
55m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
53m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-tmxvt           Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
53m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
53m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-tmxvt
53m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "curlimages/curl:8.21.0"
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
53m   Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
53m   Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
53m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
53m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-gbrzg           Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
53m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
53m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-gbrzg
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "curlimages/curl:8.21.0"
53m   Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
53m   Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
52m   Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
52m   Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
52m   Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
52m   Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
52m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
52m   Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
52m   Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
52m   Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
52m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
52m   Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
52m   Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
34m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
32m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: HTTP probe failed with statuscode: 503
24m   Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
24m   Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
24m   Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
23m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
18m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
14m   Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m   Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
14m   Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
run_end=1787446414
interrupted=0
