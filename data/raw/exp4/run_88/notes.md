# scenario=exp4 run=88
collect_start=1787446736
interval_sec=60
run=88
run_start=1787446739
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787446896
--- events ---
60m    Normal    Pulling     pod/llm-proxy-857bf6d79d-gbrzg   Pulling image "ghcr.io/ggml-org/llama.cpp:server"
60m    Normal    Pulled      pod/llm-proxy-857bf6d79d-gbrzg   Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
60m    Normal    Pulling     pod/llm-proxy-857bf6d79d-gbrzg   Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m    Normal    Started     pod/llm-proxy-857bf6d79d-gbrzg   Container started
60m    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
60m    Normal    Pulled      pod/llm-proxy-857bf6d79d-gbrzg   Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
60m    Normal    Created     pod/llm-proxy-857bf6d79d-gbrzg   Container created
42m    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
40m    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-gbrzg   Readiness probe failed: HTTP probe failed with statuscode: 503
32m    Normal    Pulled      pod/llm-proxy-857bf6d79d-z8vvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
32m    Normal    Started     pod/llm-proxy-857bf6d79d-z8vvr   Container started
32m    Normal    Created     pod/llm-proxy-857bf6d79d-z8vvr   Container created
31m    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-z8vvr   Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
23m    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
22m    Normal    Pulled      pod/llm-proxy-857bf6d79d-gbrzg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
22m    Normal    Started     pod/llm-proxy-857bf6d79d-gbrzg   Container started
22m    Normal    Created     pod/llm-proxy-857bf6d79d-gbrzg   Container created
8m1s   Normal    Started     pod/llm-proxy-857bf6d79d-tmxvt   Container started
8m1s   Normal    Created     pod/llm-proxy-857bf6d79d-tmxvt   Container created
8m1s   Normal    Pulled      pod/llm-proxy-857bf6d79d-tmxvt   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m1s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-tmxvt   Readiness probe failed: HTTP probe failed with statuscode: 503
2m8s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-l4sc7   Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787446896
interrupted=0
