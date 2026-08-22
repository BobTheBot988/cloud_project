# scenario=exp4 run=21
collect_start=1787422510
interval_sec=60
run=21
run_start=1787422514
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787422675
--- events ---
57m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "curlimages/curl:8.21.0"
57m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
57m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
57m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-thxs6           Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
57m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-thxs6
57m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
57m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
57m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
56m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
56m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
56m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
56m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
56m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
56m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-thxs6           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
56m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
55m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
55m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-4vp47
55m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "curlimages/curl:8.21.0"
55m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
55m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-4vp47           Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
55m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
55m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
55m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
54m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "curlimages/curl:8.21.0"
54m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-jlz5f
54m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-jlz5f           Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
54m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
54m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
54m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
54m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
54m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
54m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
54m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
54m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
53m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
53m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
53m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
36m   Normal    Pulled              pod/llm-proxy-857bf6d79d-lzjc4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m   Normal    Created             pod/llm-proxy-857bf6d79d-lzjc4           Container created
36m   Normal    Started             pod/llm-proxy-857bf6d79d-lzjc4           Container started
27m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-lzjc4
27m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
27m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container llama-server
27m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container fastapi-proxy
27m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
26m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-lzjc4           Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
25m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
25m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
25m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: HTTP probe failed with statuscode: 503
25m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
21m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
21m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-mb6wl
21m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
21m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-mb6wl           Successfully assigned default/llm-proxy-857bf6d79d-mb6wl to ip-172-31-45-91.us-west-2.compute.internal
21m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
21m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
21m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
21m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
20m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
20m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
20m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
20m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20m   Normal    Pulling             pod/llm-proxy-857bf6d79d-mb6wl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
20m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
20m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-mb6wl           Readiness probe failed: Get "http://10.244.9.3:8000/health": dial tcp 10.244.9.3:8000: connect: connection refused
run_end=1787422675
interrupted=0
