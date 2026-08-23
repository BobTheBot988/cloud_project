# scenario=exp6 run=98
collect_start=1787476843
interval_sec=60
run=98
run_start=1787476847
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787477004
--- events ---
56m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
48m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
38m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
38m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
38m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
29m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
22m     Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
22m     Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
22m     Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
22m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
20m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
12m     Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
12m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
12m     Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
6m17s   Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m16s   Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
6m16s   Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
6m5s    Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
6m5s    Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
6m5s    Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m4s    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
49s     Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49s     Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
49s     Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
run_end=1787477004
interrupted=0
