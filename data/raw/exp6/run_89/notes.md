# scenario=exp6 run=89
collect_start=1787475384
interval_sec=60
run=89
run_start=1787475387
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787475548
--- events ---
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
59m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
59m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
58m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
58m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
56m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
56m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
56m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
56m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
56m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
56m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
56m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
56m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
56m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
56m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
56m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
56m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
56m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
56m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
56m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
56m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
56m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
55m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
55m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
55m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
55m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
46m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
37m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: HTTP probe failed with statuscode: 503
32m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
23m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: HTTP probe failed with statuscode: 503
17m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
13m     Normal    Pulled              pod/llm-proxy-857bf6d79d-79btg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Created             pod/llm-proxy-857bf6d79d-79btg           Container created
13m     Normal    Started             pod/llm-proxy-857bf6d79d-79btg           Container started
10m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
10m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
10m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
9m12s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
9m12s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m12s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
7m32s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
5m45s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: HTTP probe failed with statuscode: 503
5m45s   Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m45s   Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
5m45s   Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
4m44s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m51s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
2m51s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m51s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
run_end=1787475548
interrupted=0
