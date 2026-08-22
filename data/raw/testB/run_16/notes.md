# scenario=testB run=16
collect_start=1787357119
interval_sec=60
run=16
run_start=1787357122
test=TestB(steady)
level_users=40 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787357511
--- events ---
47m   Normal   Created   pod/llm-proxy-857bf6d79d-9gm2k   Container created
47m   Normal   Started   pod/llm-proxy-857bf6d79d-9gm2k   Container started
47m   Normal   Pulled    pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20s   Normal   Pulled    pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20s   Normal   Created   pod/llm-proxy-857bf6d79d-vb4kw   Container created
20s   Normal   Started   pod/llm-proxy-857bf6d79d-vb4kw   Container started
run_end=1787357511
interrupted=0
