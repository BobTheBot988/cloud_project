# scenario=exp6 run=68
collect_start=1787471930
interval_sec=60
run=68
run_start=1787471934
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787472095
--- events ---
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
60m     Normal    Created             pod/llm-proxy-857bf6d79d-9lnw2           Container created
60m     Normal    Started             pod/llm-proxy-857bf6d79d-9lnw2           Container started
60m     Normal    Pulling             pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m     Normal    Created             pod/llm-proxy-857bf6d79d-cmt7h           Container created
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
60m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-cmt7h           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
60m     Normal    Started             pod/llm-proxy-857bf6d79d-cmt7h           Container started
60m     Normal    Created             pod/llm-proxy-857bf6d79d-9lnw2           Container created
60m     Normal    Started             pod/llm-proxy-857bf6d79d-9lnw2           Container started
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
60m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-9lnw2           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
48m     Normal    Created             pod/llm-proxy-857bf6d79d-pbtz2           Container created
48m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pbtz2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
48m     Normal    Started             pod/llm-proxy-857bf6d79d-pbtz2           Container started
39m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
39m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
39m     Normal    Killing             pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
39m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
39m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
38m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
38m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
38m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
38m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
38m     Normal    Killing             pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
38m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
37m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
37m     Normal    Killing             pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
37m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
37m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
37m     Normal    Killing             pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
37m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
37m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
37m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
35m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
35m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
35m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
35m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
35m     Normal    Killing             pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
18m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
7m44s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ncklk
7m44s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
7m44s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
7m44s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-ncklk           Successfully assigned default/llm-proxy-857bf6d79d-ncklk to ip-172-31-41-114.us-west-2.compute.internal
7m43s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
7m43s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
7m43s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m23s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m23s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
7m23s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
7m23s   Normal    Pulling             pod/llm-proxy-857bf6d79d-ncklk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m22s   Normal    Pulled              pod/llm-proxy-857bf6d79d-ncklk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
7m22s   Normal    Created             pod/llm-proxy-857bf6d79d-ncklk           Container created
7m22s   Normal    Started             pod/llm-proxy-857bf6d79d-ncklk           Container started
7m22s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-ncklk           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
4m44s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
4m44s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
4m43s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
4m43s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-fhbgs           Successfully assigned default/llm-proxy-857bf6d79d-fhbgs to ip-172-31-19-200.us-west-2.compute.internal
4m43s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m43s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
4m43s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fhbgs
4m16s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m16s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
4m16s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
4m16s   Normal    Pulling             pod/llm-proxy-857bf6d79d-fhbgs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m16s   Normal    Pulled              pod/llm-proxy-857bf6d79d-fhbgs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
4m16s   Normal    Created             pod/llm-proxy-857bf6d79d-fhbgs           Container created
4m16s   Normal    Started             pod/llm-proxy-857bf6d79d-fhbgs           Container started
4m15s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-fhbgs           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
103s    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-n29qk
103s    Normal    Scheduled           pod/llm-proxy-857bf6d79d-n29qk           Successfully assigned default/llm-proxy-857bf6d79d-n29qk to ip-172-31-46-207.us-west-2.compute.internal
103s    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
103s    Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
103s    Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
103s    Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
103s    Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
78s     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
78s     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
78s     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
78s     Normal    Pulling             pod/llm-proxy-857bf6d79d-n29qk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
77s     Normal    Pulled              pod/llm-proxy-857bf6d79d-n29qk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 373ms (373ms including waiting). Image size: 64753325 bytes.
77s     Normal    Created             pod/llm-proxy-857bf6d79d-n29qk           Container created
77s     Normal    Started             pod/llm-proxy-857bf6d79d-n29qk           Container started
77s     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-n29qk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
run_end=1787472095
interrupted=0
