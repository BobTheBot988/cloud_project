# scenario=exp6 run=95
collect_start=1787476357
interval_sec=60
run=95
run_start=1787476360
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787476519
--- events ---
54m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: HTTP probe failed with statuscode: 503
48m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
40m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
39m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
29m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
29m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
29m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
20m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
19m     Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
19m     Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
14m     Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
14m     Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
14m     Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
12m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m     Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
10m     Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
10m     Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
9m5s    Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m5s    Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
9m5s    Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
4m18s   Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
4m18s   Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m17s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
4m17s   Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
run_end=1787476519
interrupted=0
