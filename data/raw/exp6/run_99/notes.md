# scenario=exp6 run=99
collect_start=1787477005
interval_sec=60
run=99
run_start=1787477008
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787477168
--- events ---
59m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
51m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
40m     Normal    Created     pod/llm-proxy-857bf6d79d-79btg   Container created
40m     Normal    Started     pod/llm-proxy-857bf6d79d-79btg   Container started
40m     Normal    Pulled      pod/llm-proxy-857bf6d79d-79btg   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-n29qk   Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
25m     Normal    Started     pod/llm-proxy-857bf6d79d-ncklk   Container started
25m     Normal    Pulled      pod/llm-proxy-857bf6d79d-ncklk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
25m     Normal    Created     pod/llm-proxy-857bf6d79d-ncklk   Container created
25m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-ncklk   Readiness probe failed: HTTP probe failed with statuscode: 503
23m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-kj8vp   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m     Normal    Created     pod/llm-proxy-857bf6d79d-9hsvr   Container created
15m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9hsvr   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9hsvr   Readiness probe failed: HTTP probe failed with statuscode: 503
15m     Normal    Started     pod/llm-proxy-857bf6d79d-9hsvr   Container started
9m1s    Normal    Pulled      pod/llm-proxy-857bf6d79d-kj8vp   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m      Normal    Started     pod/llm-proxy-857bf6d79d-kj8vp   Container started
9m      Normal    Created     pod/llm-proxy-857bf6d79d-kj8vp   Container created
8m49s   Normal    Started     pod/llm-proxy-857bf6d79d-fhbgs   Container started
8m49s   Normal    Created     pod/llm-proxy-857bf6d79d-fhbgs   Container created
8m49s   Normal    Pulled      pod/llm-proxy-857bf6d79d-fhbgs   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m48s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-fhbgs   Readiness probe failed: HTTP probe failed with statuscode: 503
3m33s   Normal    Pulled      pod/llm-proxy-857bf6d79d-n29qk   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m33s   Normal    Created     pod/llm-proxy-857bf6d79d-n29qk   Container created
3m33s   Normal    Started     pod/llm-proxy-857bf6d79d-n29qk   Container started
run_end=1787477168
interrupted=0
