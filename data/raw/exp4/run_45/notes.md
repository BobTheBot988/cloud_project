# scenario=exp4 run=45
collect_start=1787428497
interval_sec=60
run=45
run_start=1787428501
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787428660
--- events ---
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-hz7k2           Successfully assigned default/llm-proxy-857bf6d79d-hz7k2 to ip-172-31-41-64.us-west-2.compute.internal
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hz7k2
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hz7k2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
59m     Normal    Created             pod/llm-proxy-857bf6d79d-hz7k2           Container created
59m     Normal    Started             pod/llm-proxy-857bf6d79d-hz7k2           Container started
59m     Normal    Pulling             pod/llm-proxy-857bf6d79d-hz7k2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hz7k2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
59m     Normal    Created             pod/llm-proxy-857bf6d79d-hz7k2           Container created
59m     Normal    Started             pod/llm-proxy-857bf6d79d-hz7k2           Container started
59m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-hz7k2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-c9h2m           Successfully assigned default/llm-proxy-857bf6d79d-c9h2m to ip-172-31-18-181.us-west-2.compute.internal
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
59m     Normal    Started             pod/llm-proxy-857bf6d79d-hz7k2           Container started
59m     Normal    Created             pod/llm-proxy-857bf6d79d-hz7k2           Container created
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hz7k2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 333ms (333ms including waiting). Image size: 64753325 bytes.
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-c9h2m
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
59m     Normal    Started             pod/llm-proxy-857bf6d79d-c9h2m           Container started
59m     Normal    Created             pod/llm-proxy-857bf6d79d-c9h2m           Container created
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-c9h2m           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-c9h2m           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-c9h2m           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 317ms (317ms including waiting). Image size: 64753325 bytes.
58m     Normal    Started             pod/llm-proxy-857bf6d79d-c9h2m           Container started
58m     Normal    Created             pod/llm-proxy-857bf6d79d-c9h2m           Container created
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-c9h2m           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
51m     Normal    Created             pod/llm-proxy-857bf6d79d-fcpf2           Container created
51m     Normal    Started             pod/llm-proxy-857bf6d79d-fcpf2           Container started
51m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: HTTP probe failed with statuscode: 503
51m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m     Normal    Started             pod/llm-proxy-857bf6d79d-c9h2m           Container started
44m     Normal    Created             pod/llm-proxy-857bf6d79d-c9h2m           Container created
35m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
35m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
35m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
35m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
35m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
34m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
34m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
34m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
34m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
34m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
34m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
34m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
34m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
34m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
34m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
7m43s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
7m43s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
7m43s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
7m43s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
7m42s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m42s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
7m42s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
7m31s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
7m31s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m31s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
7m31s   Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m31s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
7m31s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
7m31s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
7m30s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
2m27s   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
2m27s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
2m27s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
2m27s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
2m27s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
2m27s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
2m26s   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
109s    Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
109s    Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
109s    Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
109s    Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
109s    Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
109s    Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
109s    Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
108s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
run_end=1787428660
interrupted=0
