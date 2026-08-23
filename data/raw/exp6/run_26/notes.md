# scenario=exp6 run=26
collect_start=1787452974
interval_sec=60
run=26
run_start=1787452978
scenario=exp6
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787453138
--- events ---
49m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
49m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
35m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
35m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
35m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
33m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
33m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
33m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
19m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
19m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
19m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
19m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
19m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
19m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
18m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
18m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
14m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
14m     Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
14m     Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
14m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
14m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
14m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
12m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
4m46s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787453138
interrupted=0
