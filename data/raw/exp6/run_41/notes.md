# scenario=exp6 run=41
collect_start=1787455405
interval_sec=60
run=41
run_start=1787455409
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787455565
--- events ---
59m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
59m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
59m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
59m   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
59m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
59m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
59m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
59m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
59m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
59m   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
59m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
59m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
54m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
54m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
54m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
54m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
54m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
54m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
53m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
53m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
53m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
45m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
37m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
33m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
33m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
33m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
33m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
33m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
33m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
32m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
32m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
32m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
32m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
32m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
32m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787455565
interrupted=0
