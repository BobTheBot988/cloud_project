# scenario=exp4 run=57
collect_start=1787430463
interval_sec=60
run=57
run_start=1787430467
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787430626
--- events ---
40m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
40m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
40m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
40m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
40m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
40m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
40m     Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
40m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
35m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
35m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
35m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
35m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
35m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
35m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
34m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
34m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
34m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
31m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
31m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
31m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
31m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
31m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
31m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
31m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
31m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
31m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
31m     Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
19m     Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
15m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
13m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
13m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
13m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: HTTP probe failed with statuscode: 503
10m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
10m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m23s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
3m23s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m23s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
run_end=1787430626
interrupted=0
