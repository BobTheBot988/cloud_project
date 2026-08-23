# scenario=exp6 run=38
collect_start=1787454919
interval_sec=60
run=38
run_start=1787454923
scenario=exp6
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787455083
--- events ---
51m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
51m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
51m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
51m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
51m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
51m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
51m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
51m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
51m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
51m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
51m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
51m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
46m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
46m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
46m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
46m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
46m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
46m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
45m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
45m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
45m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
37m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
29m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
25m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
25m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
25m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
25m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
25m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
25m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
24m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
24m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
24m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
24m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
24m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
24m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787455083
interrupted=0
