# scenario=exp4 run=50
collect_start=1787429314
interval_sec=60
run=50
run_start=1787429318
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787429479
--- events ---
58m   Normal    Pulled              pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
58m   Normal    Started             pod/llm-proxy-857bf6d79d-c9h2m           Container started
58m   Normal    Created             pod/llm-proxy-857bf6d79d-c9h2m           Container created
49m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
49m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
49m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
49m   Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
49m   Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
48m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
48m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
48m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
48m   Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
48m   Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
47m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
47m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
47m   Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
47m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
47m   Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
21m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
21m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
21m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
21m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
21m   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
21m   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
21m   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
21m   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
21m   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
21m   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
21m   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
21m   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m   Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
21m   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
21m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
16m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
16m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
16m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
16m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
16m   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
16m   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
16m   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
15m   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
15m   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
15m   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
15m   Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
15m   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
15m   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
12m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
12m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
12m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
12m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
12m   Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
12m   Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
12m   Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m   Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
12m   Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
12m   Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m   Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
12m   Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
12m   Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m   Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
12m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
5s    Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
5s    Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5s    Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
run_end=1787429479
interrupted=0
