# scenario=testA run=4
collect_start=1787346161
interval_sec=60
run=4
run_start=1787346164
test=TestA(ramp)
u_max=12 size=mix
target=http://172.31.23.142:30080 loadgen=ec2-user@54.200.112.229
runs_total=4
collect_stop=1787347822
--- events ---
59m     Normal    Killing             pod/llm-proxy-857bf6d79d-hxnjt      Stopping container fastapi-proxy
59m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hxnjt
59m     Normal    Killing             pod/llm-proxy-857bf6d79d-hxnjt      Stopping container llama-server
54m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-wpj2x
54m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
54m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
54m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-wpj2x      Successfully assigned default/llm-proxy-857bf6d79d-wpj2x to ip-172-31-45-101.us-west-2.compute.internal
54m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 326ms (326ms including waiting). Image size: 64752814 bytes.
54m     Normal    Pulling             pod/llm-proxy-857bf6d79d-wpj2x      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-wpj2x      Readiness probe failed: Get "http://10.244.2.6:8000/health": dial tcp 10.244.2.6:8000: connect: connection refused
54m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
39m     Normal    Started             pod/llm-proxy-857bf6d79d-wpj2x      Container started
39m     Normal    Created             pod/llm-proxy-857bf6d79d-wpj2x      Container created
39m     Normal    Pulled              pod/llm-proxy-857bf6d79d-wpj2x      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-wpj2x      Stopping container llama-server
32m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-wpj2x
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-wpj2x      Stopping container fastapi-proxy
26m     Normal    Created             pod/llm-proxy-857bf6d79d-8vcwd      Container created
26m     Normal    Started             pod/llm-proxy-857bf6d79d-8vcwd      Container started
26m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-8vcwd      Successfully assigned default/llm-proxy-857bf6d79d-8vcwd to ip-172-31-45-101.us-west-2.compute.internal
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-8vcwd      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
26m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-8vcwd
26m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
26m     Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
26m     Normal    Created             pod/llm-proxy-857bf6d79d-8vcwd      Container created
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-8vcwd      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-8vcwd      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
26m     Normal    Started             pod/llm-proxy-857bf6d79d-8vcwd      Container started
26m     Normal    Pulling             pod/llm-proxy-857bf6d79d-8vcwd      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-8vcwd      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 343ms (343ms including waiting). Image size: 64752814 bytes.
26m     Normal    Created             pod/llm-proxy-857bf6d79d-8vcwd      Container created
26m     Normal    Started             pod/llm-proxy-857bf6d79d-8vcwd      Container started
14m     Normal    Created             pod/llm-proxy-857bf6d79d-jl7zl      Container created
14m     Normal    Started             pod/llm-proxy-857bf6d79d-jl7zl      Container started
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-jl7zl      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m38s   Normal    Killing             pod/llm-proxy-857bf6d79d-jl7zl      Stopping container fastapi-proxy
4m38s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-jl7zl
4m38s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
4m38s   Normal    Killing             pod/llm-proxy-857bf6d79d-jl7zl      Stopping container llama-server
4m38s   Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787347822
interrupted=0
