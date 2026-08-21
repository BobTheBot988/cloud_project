# scenario=testA run=3
collect_start=1787344506
interval_sec=60
run=3
run_start=1787344509
test=TestA(ramp)
u_max=12 size=mix
target=http://172.31.23.142:30080 loadgen=ec2-user@54.200.112.229
runs_total=4
collect_stop=1787346161
--- events ---
54m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-hxnjt      Successfully assigned default/llm-proxy-857bf6d79d-hxnjt to ip-172-31-45-101.us-west-2.compute.internal
54m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-hxnjt
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hxnjt      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
54m     Normal    Created             pod/llm-proxy-857bf6d79d-hxnjt      Container created
54m     Normal    Started             pod/llm-proxy-857bf6d79d-hxnjt      Container started
54m     Normal    Started             pod/llm-proxy-857bf6d79d-hxnjt      Container started
54m     Normal    Pulling             pod/llm-proxy-857bf6d79d-hxnjt      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hxnjt      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 377ms (377ms including waiting). Image size: 64752814 bytes.
54m     Normal    Created             pod/llm-proxy-857bf6d79d-hxnjt      Container created
54m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-hxnjt      Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-hxnjt      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40m     Normal    Started             pod/llm-proxy-857bf6d79d-hxnjt      Container started
40m     Normal    Created             pod/llm-proxy-857bf6d79d-hxnjt      Container created
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-hxnjt      Stopping container fastapi-proxy
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-hxnjt      Stopping container llama-server
32m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hxnjt
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
26m     Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
26m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
26m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
26m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
26m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-wpj2x
26m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-wpj2x      Successfully assigned default/llm-proxy-857bf6d79d-wpj2x to ip-172-31-45-101.us-west-2.compute.internal
26m     Normal    Pulling             pod/llm-proxy-857bf6d79d-wpj2x      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 326ms (326ms including waiting). Image size: 64752814 bytes.
26m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-wpj2x      Readiness probe failed: Get "http://10.244.2.6:8000/health": dial tcp 10.244.2.6:8000: connect: connection refused
26m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-jl7zl      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m     Normal    Created             pod/llm-proxy-857bf6d79d-jl7zl      Container created
14m     Normal    Started             pod/llm-proxy-857bf6d79d-jl7zl      Container started
11m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
11m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m59s   Normal    Killing             pod/llm-proxy-857bf6d79d-wpj2x      Stopping container fastapi-proxy
4m59s   Normal    Killing             pod/llm-proxy-857bf6d79d-wpj2x      Stopping container llama-server
4m59s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-wpj2x
4m59s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
4m59s   Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787346161
interrupted=0
