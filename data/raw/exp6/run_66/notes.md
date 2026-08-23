# scenario=exp6 run=66
collect_start=1787471603
interval_sec=60
run=66
run_start=1787471607
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787471765
--- events ---
60m     Normal    Created             pod/llm-proxy-857bf6d79d-79btg           Container created
60m     Normal    Started             pod/llm-proxy-857bf6d79d-79btg           Container started
60m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-79btg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
58m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
58m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
58m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ccwbz
58m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-r4b5d
58m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ccwbz           Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
58m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-r4b5d           Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "curlimages/curl:8.21.0"
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "curlimages/curl:8.21.0"
58m     Normal    Started             pod/llm-proxy-857bf6d79d-r4b5d           Container started
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
58m     Normal    Started             pod/llm-proxy-857bf6d79d-ccwbz           Container started
58m     Normal    Created             pod/llm-proxy-857bf6d79d-ccwbz           Container created
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
58m     Normal    Created             pod/llm-proxy-857bf6d79d-r4b5d           Container created
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
57m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
57m     Normal    Started             pod/llm-proxy-857bf6d79d-ccwbz           Container started
57m     Normal    Created             pod/llm-proxy-857bf6d79d-ccwbz           Container created
57m     Normal    Pulling             pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
57m     Normal    Started             pod/llm-proxy-857bf6d79d-r4b5d           Container started
57m     Normal    Created             pod/llm-proxy-857bf6d79d-r4b5d           Container created
57m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ccwbz           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
57m     Normal    Created             pod/llm-proxy-857bf6d79d-ccwbz           Container created
57m     Normal    Started             pod/llm-proxy-857bf6d79d-ccwbz           Container started
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
57m     Normal    Created             pod/llm-proxy-857bf6d79d-r4b5d           Container created
57m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-r4b5d           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
57m     Normal    Started             pod/llm-proxy-857bf6d79d-r4b5d           Container started
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
56m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9lnw2           Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
56m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9lnw2
56m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "curlimages/curl:8.21.0"
56m     Normal    Started             pod/llm-proxy-857bf6d79d-9lnw2           Container started
56m     Normal    Created             pod/llm-proxy-857bf6d79d-9lnw2           Container created
56m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
56m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-cmt7h
56m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-cmt7h           Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
56m     Normal    Pulling             pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "curlimages/curl:8.21.0"
55m     Normal    Started             pod/llm-proxy-857bf6d79d-cmt7h           Container started
55m     Normal    Created             pod/llm-proxy-857bf6d79d-cmt7h           Container created
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
55m     Normal    Pulling             pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
55m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
55m     Normal    Created             pod/llm-proxy-857bf6d79d-cmt7h           Container created
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
55m     Normal    Started             pod/llm-proxy-857bf6d79d-cmt7h           Container started
55m     Normal    Pulling             pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Created             pod/llm-proxy-857bf6d79d-9lnw2           Container created
55m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
55m     Normal    Started             pod/llm-proxy-857bf6d79d-9lnw2           Container started
55m     Normal    Created             pod/llm-proxy-857bf6d79d-cmt7h           Container created
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
55m     Normal    Started             pod/llm-proxy-857bf6d79d-cmt7h           Container started
55m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-cmt7h           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
55m     Normal    Created             pod/llm-proxy-857bf6d79d-9lnw2           Container created
55m     Normal    Started             pod/llm-proxy-857bf6d79d-9lnw2           Container started
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
55m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9lnw2           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
43m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pbtz2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Created             pod/llm-proxy-857bf6d79d-pbtz2           Container created
43m     Normal    Started             pod/llm-proxy-857bf6d79d-pbtz2           Container started
33m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
33m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
33m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
33m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
33m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
33m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
32m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
32m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
32m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
32m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
32m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
32m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
32m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
32m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
30m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
30m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
30m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
30m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
30m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
12m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m13s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
2m13s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
2m13s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
2m13s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
2m12s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
2m12s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
2m12s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
112s    Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
112s    Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
112s    Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
112s    Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
111s    Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
111s    Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
111s    Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
111s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
run_end=1787471765
interrupted=0
