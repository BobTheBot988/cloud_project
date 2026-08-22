# scenario=testB run=11
collect_start=1787355155
interval_sec=60
run=11
run_start=1787355159
test=TestB(steady)
level_users=30 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787355547
--- events ---
32m   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-vb4kw   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
14m   Normal    Created     pod/llm-proxy-857bf6d79d-9gm2k   Container created
14m   Normal    Started     pod/llm-proxy-857bf6d79d-9gm2k   Container started
14m   Normal    Pulled      pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7s    Normal    Pulled      pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7s    Normal    Created     pod/llm-proxy-857bf6d79d-vb4kw   Container created
6s    Normal    Started     pod/llm-proxy-857bf6d79d-vb4kw   Container started
run_end=1787355547
interrupted=0
