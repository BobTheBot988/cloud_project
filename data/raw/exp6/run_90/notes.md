# scenario=exp6 run=90
collect_start=1787475548
interval_sec=60
run=90
run_start=1787475552
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787475712
--- events ---
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
59m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
59m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
59m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
59m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
59m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
59m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
59m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
59m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
59m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
59m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
59m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
58m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
58m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
58m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
58m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
58m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
58m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
58m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
48m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
40m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: HTTP probe failed with statuscode: 503
34m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
26m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: HTTP probe failed with statuscode: 503
19m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
16m     Normal    Pulled              pod/llm-proxy-857bf6d79d-79btg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Normal    Created             pod/llm-proxy-857bf6d79d-79btg           Container created
16m     Normal    Started             pod/llm-proxy-857bf6d79d-79btg           Container started
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
11m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
10m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8m30s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: HTTP probe failed with statuscode: 503
8m30s   Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m30s   Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
8m30s   Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
7m29s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
5m36s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m36s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
5m36s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
80s     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
80s     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
80s     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
79s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787475712
interrupted=0
