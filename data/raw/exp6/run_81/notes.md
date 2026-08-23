# scenario=exp6 run=81
collect_start=1787474074
interval_sec=60
run=81
run_start=1787474078
scenario=exp6
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787474237
--- events ---
43m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
43m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
43m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
43m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
43m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
43m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
43m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
43m     Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
43m     Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
43m     Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
43m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
40m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
40m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
40m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
40m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
40m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
40m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
39m     Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
39m     Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
39m     Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
39m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
37m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
37m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
37m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
37m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
37m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
37m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
36m     Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
36m     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
36m     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
36m     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
34m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9hsvr
34m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
34m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-9hsvr           Successfully assigned default/llm-proxy-857bf6d79d-9hsvr to ip-172-31-27-126.us-west-2.compute.internal
34m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
34m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
34m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9hsvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
34m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
34m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
34m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
34m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-kj8vp
34m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-kj8vp           Successfully assigned default/llm-proxy-857bf6d79d-kj8vp to ip-172-31-29-57.us-west-2.compute.internal
34m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
34m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
34m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
34m     Normal    Pulling             pod/llm-proxy-857bf6d79d-kj8vp           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
34m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
34m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
34m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
24m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
17m     Normal    Created             pod/llm-proxy-857bf6d79d-9hsvr           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-9hsvr           Container started
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9hsvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-kj8vp           Readiness probe failed: HTTP probe failed with statuscode: 503
16m     Normal    Pulled              pod/llm-proxy-857bf6d79d-kj8vp           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Normal    Started             pod/llm-proxy-857bf6d79d-kj8vp           Container started
16m     Normal    Created             pod/llm-proxy-857bf6d79d-kj8vp           Container created
10m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9hsvr           Readiness probe failed: Get "http://10.244.6.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
5m58s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
5m58s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m58s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
5m52s   Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
5m52s   Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
5m52s   Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m8s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
107s    Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
107s    Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
107s    Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
106s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787474237
interrupted=0
