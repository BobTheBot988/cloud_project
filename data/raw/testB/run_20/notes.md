# scenario=testB run=20
collect_start=1787358686
interval_sec=60
run=20
run_start=1787358690
test=TestB(steady)
level_users=40 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787359077
--- events ---
11m     Normal    Pulled      pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created     pod/llm-proxy-857bf6d79d-vb4kw   Container created
11m     Normal    Started     pod/llm-proxy-857bf6d79d-vb4kw   Container started
9m54s   Normal    Created     pod/llm-proxy-857bf6d79d-9gm2k   Container created
9m54s   Normal    Started     pod/llm-proxy-857bf6d79d-9gm2k   Container started
9m54s   Normal    Pulled      pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m53s   Warning   Unhealthy   pod/llm-proxy-857bf6d79d-9gm2k   Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787359077
interrupted=0
