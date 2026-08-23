# scenario=exp6 run=91
collect_start=1787475712
interval_sec=60
run=91
run_start=1787475716
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787475873
--- events ---
51m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-79btg   Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
43m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: HTTP probe failed with statuscode: 503
37m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
29m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
29m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
19m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
19m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
14m     Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m     Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
14m     Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
11m     Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
11m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
11m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
10m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8m17s   Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m17s   Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
8m17s   Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
4m1s    Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
4m1s    Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
4m1s    Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m      Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
118s    Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8s      Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
8s      Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
8s      Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787475873
interrupted=0
