# scenario=exp6 run=74
collect_start=1787472921
interval_sec=60
run=74
run_start=1787472925
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787473084
--- events ---
55m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
55m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
55m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
55m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
55m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
55m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
54m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
54m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
54m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
54m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
54m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
54m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
54m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
52m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
52m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
52m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
52m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
52m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
24m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
24m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
24m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
24m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
24m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
24m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
24m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
23m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
23m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
23m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
21m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
21m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
21m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
21m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
21m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
21m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
21m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
20m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
20m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
20m     Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
20m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
18m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
18m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
18m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
18m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
18m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
18m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
17m     Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
17m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
17m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
15m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
15m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
15m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
15m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
15m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
15m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
15m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
15m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
15m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
15m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
15m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
15m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
15m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
15m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
15m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
15m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
14m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
14m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
14m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
14m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
5m8s    Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m8s    Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
5m8s    Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
4m57s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m23s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m23s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
4m23s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
99s     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
99s     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
99s     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
run_end=1787473084
interrupted=0
