# scenario=exp6 run=92
collect_start=1787475873
interval_sec=60
run=92
run_start=1787475877
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787476035
--- events ---
54m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-79btg   Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
46m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: HTTP probe failed with statuscode: 503
40m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
32m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
31m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
21m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
21m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
13m     Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
13m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
13m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
12m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m     Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
10m     Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
10m     Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m43s   Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
6m43s   Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
6m43s   Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m42s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
4m40s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m50s   Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
2m50s   Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
2m50s   Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
61s     Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
61s     Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
61s     Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787476035
interrupted=0
