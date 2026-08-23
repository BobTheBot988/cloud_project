# scenario=exp6 run=100
collect_start=1787477168
interval_sec=60
run=100
run_start=1787477172
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787477339
--- events ---
53m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
43m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
43m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
34m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
28m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
26m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
17m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m     Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
17m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
17m     Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
11m     Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
11m     Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
11m     Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
11m     Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
11m     Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
6m24s   Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
6m24s   Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
6m24s   Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
33s     Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
33s     Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
33s     Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
run_end=1787477339
interrupted=0
