# scenario=exp4 run=59
collect_start=1787430789
interval_sec=60
run=59
run_start=1787430793
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787430953
--- events ---
45m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
45m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
45m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
45m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
45m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
45m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
45m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m     Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
45m     Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
45m     Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
45m     Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
45m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
40m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
40m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
40m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
40m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
40m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
40m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
40m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
40m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
37m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
37m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
37m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
37m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
37m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
36m     Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
36m     Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
36m     Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
36m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
24m     Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
24m     Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
24m     Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
21m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
19m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: HTTP probe failed with statuscode: 503
16m     Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
16m     Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
16m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m50s   Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
8m50s   Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m50s   Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
4m17s   Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
4m17s   Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
4m17s   Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787430953
interrupted=0
