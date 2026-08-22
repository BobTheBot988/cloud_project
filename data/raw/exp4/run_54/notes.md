# scenario=exp4 run=54
collect_start=1787429972
interval_sec=60
run=54
run_start=1787429977
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787430136
--- events ---
60m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
60m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
60m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
60m     Normal    Killing             pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
60m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
59m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
59m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
59m     Normal    Killing             pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
58m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
58m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
58m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
32m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
32m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
32m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
32m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
32m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
32m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
32m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
32m     Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
32m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
32m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
32m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
32m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
27m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
27m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
27m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
27m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
27m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
27m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
27m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
26m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
26m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
26m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
23m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
23m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
23m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
23m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
23m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
23m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
23m     Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
23m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
23m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
11m     Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
10m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
10m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m30s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
5m47s   Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m46s   Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
5m46s   Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
5m45s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: HTTP probe failed with statuscode: 503
2m42s   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
2m42s   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
2m42s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787430136
interrupted=0
