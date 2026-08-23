# scenario=exp6 run=46
collect_start=1787456207
interval_sec=60
run=46
run_start=1787456211
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787456368
--- events ---
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
50m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
47m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
47m     Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
47m     Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
47m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
47m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
46m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
46m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
46m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
46m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
45m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
7m29s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
7m29s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fgjxr
7m29s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
7m29s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-fgjxr           Successfully assigned default/llm-proxy-857bf6d79d-fgjxr to ip-172-31-35-139.us-west-2.compute.internal
7m28s   Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
7m28s   Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
7m28s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m1s    Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
7m1s    Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m      Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
7m      Normal    Pulling             pod/llm-proxy-857bf6d79d-fgjxr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m      Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fgjxr           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
7m      Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
7m      Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 329ms (329ms including waiting). Image size: 64753325 bytes.
7m      Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
4m29s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-hffpj           Successfully assigned default/llm-proxy-857bf6d79d-hffpj to ip-172-31-17-227.us-west-2.compute.internal
4m29s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
4m29s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
4m29s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hffpj
4m28s   Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
4m28s   Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m28s   Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
4m18s   Normal    Pulling             pod/llm-proxy-857bf6d79d-hffpj           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m18s   Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m18s   Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
4m18s   Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
4m17s   Normal    Created             pod/llm-proxy-857bf6d79d-hffpj           Container created
4m17s   Normal    Pulled              pod/llm-proxy-857bf6d79d-hffpj           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 350ms (350ms including waiting). Image size: 64753325 bytes.
4m17s   Normal    Started             pod/llm-proxy-857bf6d79d-hffpj           Container started
4m17s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-hffpj           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
104s    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-l228q
104s    Normal    Scheduled           pod/llm-proxy-857bf6d79d-l228q           Successfully assigned default/llm-proxy-857bf6d79d-l228q to ip-172-31-33-225.us-west-2.compute.internal
104s    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
104s    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
103s    Normal    Started             pod/llm-proxy-857bf6d79d-l228q           Container started
103s    Normal    Pulled              pod/llm-proxy-857bf6d79d-l228q           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
103s    Normal    Created             pod/llm-proxy-857bf6d79d-l228q           Container created
85s     Normal    Started             pod/llm-proxy-857bf6d79d-l228q           Container started
85s     Normal    Created             pod/llm-proxy-857bf6d79d-l228q           Container created
85s     Normal    Pulled              pod/llm-proxy-857bf6d79d-l228q           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
85s     Normal    Pulling             pod/llm-proxy-857bf6d79d-l228q           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
84s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l228q           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
84s     Normal    Pulled              pod/llm-proxy-857bf6d79d-l228q           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 361ms (361ms including waiting). Image size: 64753325 bytes.
84s     Normal    Created             pod/llm-proxy-857bf6d79d-l228q           Container created
84s     Normal    Started             pod/llm-proxy-857bf6d79d-l228q           Container started
run_end=1787456368
interrupted=0
