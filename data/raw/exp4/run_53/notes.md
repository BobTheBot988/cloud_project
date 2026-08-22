# scenario=exp4 run=53
collect_start=1787429808
interval_sec=60
run=53
run_start=1787429812
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787429972
--- events ---
57m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
57m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
57m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
57m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
57m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
56m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
56m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
29m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
29m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
29m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
29m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
29m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
29m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
29m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
29m     Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
29m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
29m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
29m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
29m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
24m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
24m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
24m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
24m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
24m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
24m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
24m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
23m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
23m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
23m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
23m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
23m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
20m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
20m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
20m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
20m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
20m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
20m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
20m     Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
20m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
20m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
8m17s   Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
8m17s   Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
8m17s   Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m29s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
7m29s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
7m29s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m45s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
3m2s    Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m1s    Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
3m1s    Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
3m      Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787429972
interrupted=0
