# scenario=testB run=22
collect_start=1787359468
interval_sec=60
run=22
run_start=1787359471
test=TestB(steady)
level_users=50 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787359867
--- events ---
23m     Normal    Created     pod/llm-proxy-857bf6d79d-9gm2k   Container created
23m     Normal    Started     pod/llm-proxy-857bf6d79d-9gm2k   Container started
23m     Normal    Pulled      pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
23m     Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9gm2k   Readiness probe failed: HTTP probe failed with statuscode: 503
6m36s   Normal    Pulled      pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m36s   Normal    Created     pod/llm-proxy-857bf6d79d-vb4kw   Container created
6m36s   Normal    Started     pod/llm-proxy-857bf6d79d-vb4kw   Container started
5m57s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-vb4kw   Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787359867
interrupted=0
