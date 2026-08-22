# scenario=exp4 run=20
collect_start=1787422345
interval_sec=60
run=20
run_start=1787422349
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787422510
--- events ---
54m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "curlimages/curl:8.21.0"
54m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
54m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
54m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-thxs6           Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
54m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-thxs6
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
54m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
54m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
53m   Normal    Pulling             pod/llm-proxy-857bf6d79d-thxs6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
53m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
53m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
53m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-thxs6           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
52m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
52m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-4vp47
52m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "curlimages/curl:8.21.0"
52m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
52m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-4vp47           Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
52m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
52m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
52m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "curlimages/curl:8.21.0"
52m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-jlz5f
52m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-jlz5f           Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
52m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
52m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
51m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
51m   Normal    Pulling             pod/llm-proxy-857bf6d79d-4vp47           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
51m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
51m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
51m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
51m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
51m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
51m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
51m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
50m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
50m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
50m   Normal    Pulling             pod/llm-proxy-857bf6d79d-jlz5f           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
50m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
50m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
50m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
50m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
33m   Normal    Pulled              pod/llm-proxy-857bf6d79d-lzjc4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
33m   Normal    Created             pod/llm-proxy-857bf6d79d-lzjc4           Container created
33m   Normal    Started             pod/llm-proxy-857bf6d79d-lzjc4           Container started
24m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-lzjc4
24m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
24m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container llama-server
24m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container fastapi-proxy
24m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
23m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-lzjc4           Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
22m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
22m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
22m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: HTTP probe failed with statuscode: 503
22m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
18m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
18m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-mb6wl
18m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
18m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-mb6wl           Successfully assigned default/llm-proxy-857bf6d79d-mb6wl to ip-172-31-45-91.us-west-2.compute.internal
18m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
18m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
18m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
18m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
17m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
17m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
17m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
17m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m   Normal    Pulling             pod/llm-proxy-857bf6d79d-mb6wl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
17m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-mb6wl           Readiness probe failed: Get "http://10.244.9.3:8000/health": dial tcp 10.244.9.3:8000: connect: connection refused
run_end=1787422510
interrupted=0
