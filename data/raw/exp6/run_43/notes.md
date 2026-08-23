# scenario=exp6 run=43
collect_start=1787455724
interval_sec=60
run=43
run_start=1787455728
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787455886
--- events ---
60m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
60m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
60m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
60m   Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
60m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
59m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
58m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
58m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
58m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
50m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
42m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
39m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
39m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
39m   Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
39m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
39m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
38m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
37m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
37m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
37m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
37m   Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
37m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
37m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787455886
interrupted=0
