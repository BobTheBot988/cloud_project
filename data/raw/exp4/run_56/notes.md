# scenario=exp4 run=56
collect_start=1787430300
interval_sec=60
run=56
run_start=1787430305
scenario=exp4
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787430463
--- events ---
37m    Normal    Scheduled           pod/llm-proxy-857bf6d79d-d577b           Successfully assigned default/llm-proxy-857bf6d79d-d577b to ip-172-31-45-91.us-west-2.compute.internal
37m    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
37m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
37m    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-d577b
37m    Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
37m    Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
37m    Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m    Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
37m    Normal    Pulling             pod/llm-proxy-857bf6d79d-d577b           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m    Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
37m    Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
37m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-d577b           Readiness probe failed: Get "http://10.244.9.5:8000/health": dial tcp 10.244.9.5:8000: connect: connection refused
32m    Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
32m    Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
32m    Normal    Scheduled           pod/llm-proxy-857bf6d79d-kjg95           Successfully assigned default/llm-proxy-857bf6d79d-kjg95 to ip-172-31-41-64.us-west-2.compute.internal
32m    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kjg95
32m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
32m    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
32m    Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
31m    Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
31m    Normal    Pulling             pod/llm-proxy-857bf6d79d-kjg95           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m    Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
31m    Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
31m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kjg95           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
29m    Normal    Scheduled           pod/llm-proxy-857bf6d79d-968zr           Successfully assigned default/llm-proxy-857bf6d79d-968zr to ip-172-31-18-181.us-west-2.compute.internal
29m    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
29m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
29m    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-968zr
28m    Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
28m    Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
28m    Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
28m    Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
28m    Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
28m    Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
28m    Normal    Pulling             pod/llm-proxy-857bf6d79d-968zr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
28m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
16m    Normal    Pulled              pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m    Normal    Started             pod/llm-proxy-857bf6d79d-jlz5f           Container started
16m    Normal    Created             pod/llm-proxy-857bf6d79d-jlz5f           Container created
12m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: Get "http://10.244.4.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
11m    Normal    Pulled              pod/llm-proxy-857bf6d79d-968zr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m    Normal    Started             pod/llm-proxy-857bf6d79d-968zr           Container started
11m    Normal    Created             pod/llm-proxy-857bf6d79d-968zr           Container created
11m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-968zr           Readiness probe failed: HTTP probe failed with statuscode: 503
8m9s   Normal    Started             pod/llm-proxy-857bf6d79d-kjg95           Container started
8m9s   Normal    Created             pod/llm-proxy-857bf6d79d-kjg95           Container created
8m9s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kjg95           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40s    Normal    Started             pod/llm-proxy-857bf6d79d-d577b           Container started
40s    Normal    Pulled              pod/llm-proxy-857bf6d79d-d577b           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40s    Normal    Created             pod/llm-proxy-857bf6d79d-d577b           Container created
run_end=1787430463
interrupted=0
