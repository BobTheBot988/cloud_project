# scenario=testB run=18
collect_start=1787357902
interval_sec=60
run=18
run_start=1787357906
test=TestB(steady)
level_users=40 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787358295
--- events ---
60m   Normal   Created   pod/llm-proxy-857bf6d79d-9gm2k   Container created
60m   Normal   Started   pod/llm-proxy-857bf6d79d-9gm2k   Container started
60m   Normal   Pulled    pod/llm-proxy-857bf6d79d-9gm2k   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m   Normal   Pulled    pod/llm-proxy-857bf6d79d-vb4kw   Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m   Normal   Created   pod/llm-proxy-857bf6d79d-vb4kw   Container created
13m   Normal   Started   pod/llm-proxy-857bf6d79d-vb4kw   Container started
run_end=1787358295
interrupted=0
