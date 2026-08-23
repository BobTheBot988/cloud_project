# scenario=exp6 run=71
collect_start=1787472425
interval_sec=60
run=71
run_start=1787472430
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787472591
--- events ---
57m     Normal    Created             pod/llm-proxy-857bf6d79d-pbtz2           Container created
57m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pbtz2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
57m     Normal    Started             pod/llm-proxy-857bf6d79d-pbtz2           Container started
47m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
47m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
47m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
47m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
47m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
47m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
46m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
46m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
46m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
46m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
46m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
46m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
46m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
46m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
43m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
43m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
43m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
43m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
15m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
15m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
15m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
15m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
15m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
15m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
15m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
15m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
15m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
15m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
12m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
12m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
12m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
12m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
12m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
12m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
12m     Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
12m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
12m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
9m58s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
9m58s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
9m58s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
9m58s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
9m58s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
9m58s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
9m58s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
9m33s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
9m33s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
9m33s   Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
9m33s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m32s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
9m32s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
9m32s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
9m32s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
7m28s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
7m28s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
7m28s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
7m28s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
7m27s   Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
7m27s   Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
7m27s   Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
6m59s   Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
6m59s   Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
6m59s   Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m59s   Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
6m59s   Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
6m59s   Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m59s   Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
6m58s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
6m58s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
6m58s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
6m58s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
6m58s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
6m57s   Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
6m57s   Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
6m57s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
6m41s   Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
6m41s   Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
6m41s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m41s   Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m40s   Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
6m40s   Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
6m40s   Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
6m40s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
run_end=1787472591
interrupted=0
