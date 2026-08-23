# scenario=exp6 run=69
collect_start=1787472095
interval_sec=60
run=69
run_start=1787472099
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787472259
--- events ---
51m     Normal    Created             pod/llm-proxy-857bf6d79d-pbtz2           Container created
51m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pbtz2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
51m     Normal    Started             pod/llm-proxy-857bf6d79d-pbtz2           Container started
41m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
41m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
41m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
41m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
41m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
41m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
40m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
40m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
40m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
40m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
40m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
40m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
40m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
40m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
38m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
38m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
38m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
38m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
38m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
21m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
10m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
10m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
10m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
10m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
10m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
10m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
10m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
10m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
10m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
7m27s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
7m27s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
7m26s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
7m26s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
7m26s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
7m26s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m26s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
6m59s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
6m59s   Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m59s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
6m59s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m59s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
6m59s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
6m59s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
6m58s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
4m26s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m26s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
4m26s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
4m26s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
4m26s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
4m26s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
4m26s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
4m1s    Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
4m1s    Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
4m1s    Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m1s    Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m      Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
4m      Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
4m      Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
4m      Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
116s    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
116s    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
116s    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
116s    Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
115s    Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
115s    Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
115s    Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
87s     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
87s     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
87s     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
87s     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
87s     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
87s     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
87s     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
86s     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
86s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
86s     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
86s     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
86s     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
85s     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
85s     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
85s     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
69s     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
69s     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
69s     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
69s     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
68s     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
68s     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
68s     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
68s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
run_end=1787472259
interrupted=0
