# scenario=exp6 run=44
collect_start=1787455886
interval_sec=60
run=44
run_start=1787455890
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787456046
--- events ---
53m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
45m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
41m    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
41m    Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-w29hf
41m    Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container fastapi-proxy
41m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
41m    Normal    Killing             pod/llm-proxy-857bf6d79d-w29hf           Stopping container llama-server
41m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
40m    Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container llama-server
40m    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
40m    Normal    Killing             pod/llm-proxy-857bf6d79d-7gjc5           Stopping container fastapi-proxy
40m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
40m    Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-7gjc5
40m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
2m6s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
2m6s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fgjxr
2m6s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
2m6s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-fgjxr           Successfully assigned default/llm-proxy-857bf6d79d-fgjxr to ip-172-31-35-139.us-west-2.compute.internal
2m5s   Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
2m5s   Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
2m5s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
98s    Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
98s    Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
97s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fgjxr           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
97s    Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
97s    Normal    Created             pod/llm-proxy-857bf6d79d-fgjxr           Container created
97s    Normal    Pulled              pod/llm-proxy-857bf6d79d-fgjxr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 329ms (329ms including waiting). Image size: 64753325 bytes.
97s    Normal    Pulling             pod/llm-proxy-857bf6d79d-fgjxr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
97s    Normal    Started             pod/llm-proxy-857bf6d79d-fgjxr           Container started
run_end=1787456046
interrupted=0
