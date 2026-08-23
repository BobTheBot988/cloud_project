# scenario=exp4 run=98
collect_start=1787448340
interval_sec=60
run=98
run_start=1787448344
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787448500
--- events ---
59m     Normal    Created             pod/llm-proxy-857bf6d79d-z8vvr           Container created
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-z8vvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
59m     Normal    Started             pod/llm-proxy-857bf6d79d-z8vvr           Container started
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
34m     Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
34m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: HTTP probe failed with statuscode: 503
18m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8m54s   Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
8m54s   Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m54s   Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
7m50s   Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container llama-server
7m50s   Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container fastapi-proxy
7m50s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-gbrzg
7m50s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
7m50s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
7m28s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
2m      Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787448500
interrupted=0
