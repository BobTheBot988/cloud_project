# scenario=exp6 run=45
collect_start=1787456046
interval_sec=60
run=45
run_start=1787456050
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787456207
--- events ---
55m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
47m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
44m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
44m     Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
44m     Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
44m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
44m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
44m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
43m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
43m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
43m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
43m     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
43m     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
42m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
4m47s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
4m47s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
4m47s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-fgjxr           Successfully assigned default/llm-proxy-857bf6d79d-fgjxr to ip-172-31-35-139.us-west-2.compute.internal
4m47s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fgjxr
4m46s   Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
4m46s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m46s   Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
4m19s   Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
4m19s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m18s   Normal    Pulling             pod/llm-proxy-857bf6d79d-fgjxr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m18s   Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
4m18s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 329ms (329ms including waiting). Image size: 64753325 bytes.
4m18s   Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
4m18s   Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
4m18s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fgjxr           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
107s    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hffpj
107s    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
107s    Normal    Scheduled           pod/llm-proxy-857bf6d79d-hffpj           Successfully assigned default/llm-proxy-857bf6d79d-hffpj to ip-172-31-17-227.us-west-2.compute.internal
107s    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
106s    Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
106s    Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
106s    Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
96s     Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
96s     Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
96s     Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
96s     Normal    Pulling             pod/llm-proxy-857bf6d79d-hffpj           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
95s     Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 350ms (350ms including waiting). Image size: 64753325 bytes.
95s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-hffpj           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
95s     Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
95s     Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
run_end=1787456207
interrupted=0
