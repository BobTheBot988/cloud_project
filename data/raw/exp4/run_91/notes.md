# scenario=exp4 run=91
collect_start=1787447218
interval_sec=60
run=91
run_start=1787447222
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787447378
--- events ---
50m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
48m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: HTTP probe failed with statuscode: 503
40m     Normal    Pulled      pod/llm-proxy-857bf6d79d-z8vvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40m     Normal    Started     pod/llm-proxy-857bf6d79d-z8vvr   Container started
40m     Normal    Created     pod/llm-proxy-857bf6d79d-z8vvr   Container created
39m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-z8vvr   Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
31m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
16m     Normal    Pulled      pod/llm-proxy-857bf6d79d-tmxvt   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Normal    Started     pod/llm-proxy-857bf6d79d-tmxvt   Container started
16m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: HTTP probe failed with statuscode: 503
16m     Normal    Created     pod/llm-proxy-857bf6d79d-tmxvt   Container created
10m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-l4sc7   Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m42s   Normal    Created     pod/llm-proxy-857bf6d79d-gbrzg   Container created
2m42s   Normal    Pulled      pod/llm-proxy-857bf6d79d-gbrzg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m42s   Normal    Started     pod/llm-proxy-857bf6d79d-gbrzg   Container started
run_end=1787447378
interrupted=0
