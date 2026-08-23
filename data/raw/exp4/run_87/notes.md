# scenario=exp4 run=87
collect_start=1787446574
interval_sec=60
run=87
run_start=1787446578
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787446736
--- events ---
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
60m     Normal    Pulling             pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
60m     Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
60m     Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
60m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-tmxvt
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
59m     Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "curlimages/curl:8.21.0"
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-tmxvt           Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
58m     Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
58m     Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
58m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-gbrzg
58m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
58m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-gbrzg           Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
58m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "curlimages/curl:8.21.0"
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
58m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
58m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
58m     Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
58m     Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
57m     Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
57m     Normal    Pulling             pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
57m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
57m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
57m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
39m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
37m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: HTTP probe failed with statuscode: 503
29m     Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
29m     Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
29m     Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
29m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
20m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
19m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
5m20s   Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m20s   Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
5m20s   Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
5m20s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: HTTP probe failed with statuscode: 503
2m7s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787446736
interrupted=0
