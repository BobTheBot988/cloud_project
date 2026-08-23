# scenario=exp4 run=99
collect_start=1787448500
interval_sec=60
run=99
run_start=1787448504
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787448660
--- events ---
37m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: HTTP probe failed with statuscode: 503
37m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
37m     Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
20m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
11m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
10m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container llama-server
10m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container fastapi-proxy
10m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-gbrzg
10m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
10m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
10m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
4m40s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787448660
interrupted=0
