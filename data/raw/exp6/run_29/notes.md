# scenario=exp6 run=29
collect_start=1787453461
interval_sec=60
run=29
run_start=1787453465
scenario=exp6
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787453634
--- events ---
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
58m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
58m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
43m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
43m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
43m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
41m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
41m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
41m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
27m     Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
27m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
27m     Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
27m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
27m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
27m     Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
27m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
27m     Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
27m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
27m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
27m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
27m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
22m     Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container fastapi-proxy
22m     Normal    Killing             pod/llm-proxy-857bf6d79d-pzkd8           Stopping container llama-server
22m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
22m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pzkd8
22m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
22m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
21m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
21m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
13m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m56s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
101s    Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
101s    Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
101s    Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
101s    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
101s    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
71s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
26s     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
26s     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
26s     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
26s     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
26s     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
8s      Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787453634
interrupted=0
