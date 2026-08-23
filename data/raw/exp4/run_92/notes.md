# scenario=exp4 run=92
collect_start=1787447378
interval_sec=60
run=92
run_start=1787447382
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787447538
--- events ---
53m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
51m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: HTTP probe failed with statuscode: 503
43m     Normal    Pulled      pod/llm-proxy-857bf6d79d-z8vvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Started     pod/llm-proxy-857bf6d79d-z8vvr   Container started
43m     Normal    Created     pod/llm-proxy-857bf6d79d-z8vvr   Container created
42m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-z8vvr   Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
34m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
18m     Normal    Pulled      pod/llm-proxy-857bf6d79d-tmxvt   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m     Normal    Started     pod/llm-proxy-857bf6d79d-tmxvt   Container started
18m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: HTTP probe failed with statuscode: 503
18m     Normal    Created     pod/llm-proxy-857bf6d79d-tmxvt   Container created
5m22s   Normal    Created     pod/llm-proxy-857bf6d79d-gbrzg   Container created
5m22s   Normal    Pulled      pod/llm-proxy-857bf6d79d-gbrzg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m22s   Normal    Started     pod/llm-proxy-857bf6d79d-gbrzg   Container started
2m      Warning   Unhealthy   pod/llm-proxy-857bf6d79d-l4sc7   Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787447538
interrupted=0
