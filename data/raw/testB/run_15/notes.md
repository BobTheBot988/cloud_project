# scenario=testB run=15
collect_start=1787356724
interval_sec=60
run=15
run_start=1787356727
test=TestB(steady)
level_users=30 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787357119
--- events ---
58m   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-vb4kw   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
41m   Normal    Created     pod/llm-proxy-857bf6d79d-9gm2k   Container created
41m   Normal    Started     pod/llm-proxy-857bf6d79d-9gm2k   Container started
41m   Normal    Pulled      pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m   Normal    Pulled      pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m   Normal    Created     pod/llm-proxy-857bf6d79d-vb4kw   Container created
12m   Normal    Started     pod/llm-proxy-857bf6d79d-vb4kw   Container started
run_end=1787357119
interrupted=0
