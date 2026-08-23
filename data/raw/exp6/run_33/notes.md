# scenario=exp6 run=33
collect_start=1787454120
interval_sec=60
run=33
run_start=1787454124
scenario=exp6
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787454280
--- events ---
54m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
54m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
54m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
54m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
52m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
52m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
52m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
38m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
38m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
38m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
38m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
38m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
38m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
38m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
38m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
38m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
38m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
37m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
37m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
33m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
33m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
33m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
33m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
33m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
33m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
31m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
31m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
23m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
12m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
12m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
12m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
12m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
12m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
11m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
11m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
11m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
11m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
11m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
11m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
10m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787454280
interrupted=0
