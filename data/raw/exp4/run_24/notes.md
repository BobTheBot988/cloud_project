# scenario=exp4 run=24
collect_start=1787423001
interval_sec=60
run=24
run_start=1787423005
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787424679
--- events ---
60m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container llama-server
60m   Normal    Killing             pod/llm-proxy-857bf6d79d-lzjc4           Stopping container fastapi-proxy
60m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-lzjc4
59m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-lzjc4           Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
58m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: HTTP probe failed with statuscode: 503
58m   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
58m   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
58m   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
55m   Normal    Pulled              pod/llm-proxy-857bf6d79d-thxs6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m   Normal    Created             pod/llm-proxy-857bf6d79d-thxs6           Container created
55m   Normal    Started             pod/llm-proxy-857bf6d79d-thxs6           Container started
54m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
54m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-mb6wl
54m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
54m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-mb6wl           Successfully assigned default/llm-proxy-857bf6d79d-mb6wl to ip-172-31-45-91.us-west-2.compute.internal
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
54m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
54m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
54m   Normal    Pulling             pod/llm-proxy-857bf6d79d-mb6wl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
54m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
54m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-mb6wl           Readiness probe failed: Get "http://10.244.9.3:8000/health": dial tcp 10.244.9.3:8000: connect: connection refused
31m   Normal    Created             pod/llm-proxy-857bf6d79d-mb6wl           Container created
31m   Normal    Started             pod/llm-proxy-857bf6d79d-mb6wl           Container started
31m   Normal    Pulled              pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m   Normal    Created             pod/llm-proxy-857bf6d79d-4vp47           Container created
30m   Normal    Pulled              pod/llm-proxy-857bf6d79d-4vp47           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m   Normal    Started             pod/llm-proxy-857bf6d79d-4vp47           Container started
30m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: HTTP probe failed with statuscode: 503
19m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-4vp47           Stopping container llama-server
19m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-4vp47           Stopping container fastapi-proxy
19m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-4vp47
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-mb6wl           Stopping container fastapi-proxy
19m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-thxs6
19m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-mb6wl
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-thxs6           Stopping container llama-server
19m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-thxs6           Stopping container fastapi-proxy
19m   Normal    Killing             pod/llm-proxy-857bf6d79d-mb6wl           Stopping container llama-server
19m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 1
interrupted=1
run_end=1787424679
run_end=1787424729
interrupted=0 (ssh hang; CSVs pulled manually)
locust_total=29 locust_failures=0
