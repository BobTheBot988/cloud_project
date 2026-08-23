# scenario=exp6 run=75
collect_start=1787473084
interval_sec=60
run=75
run_start=1787473088
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787473247
--- events ---
58m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
58m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
58m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
57m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
57m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
57m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
57m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
57m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
56m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
56m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
56m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
54m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
54m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
54m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
26m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
26m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
26m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
26m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
26m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
26m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
26m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
26m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
26m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
26m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
23m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
23m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
23m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
23m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
23m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
23m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
23m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
23m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
23m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
23m     Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
20m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
20m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
20m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
20m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
20m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
20m     Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
20m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
20m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
20m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
18m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
18m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
18m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
18m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
18m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
18m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
18m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
17m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
17m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
17m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
17m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
17m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
17m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
17m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
17m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
17m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
17m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
7m50s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
7m50s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
7m50s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m39s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
7m5s    Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
7m5s    Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
7m5s    Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m21s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m21s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
4m21s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
82s     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
82s     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
82s     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787473247
interrupted=0
