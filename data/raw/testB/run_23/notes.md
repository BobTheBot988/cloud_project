# scenario=testB run=23
collect_start=1787359867
interval_sec=60
run=23
run_start=1787359871
test=TestB(steady)
level_users=50 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787360257
--- events ---
29m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9gm2k   Readiness probe failed: HTTP probe failed with statuscode: 503
13m     Normal    Pulled      pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Created     pod/llm-proxy-857bf6d79d-vb4kw   Container created
13m     Normal    Started     pod/llm-proxy-857bf6d79d-vb4kw   Container started
12m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-vb4kw   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m41s   Normal    Created     pod/llm-proxy-857bf6d79d-9gm2k   Container created
2m41s   Normal    Started     pod/llm-proxy-857bf6d79d-9gm2k   Container started
2m41s   Normal    Pulled      pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787360257
interrupted=0
