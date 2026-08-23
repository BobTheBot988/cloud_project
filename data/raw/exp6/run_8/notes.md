# scenario=exp6 run=8
collect_start=1787450066
interval_sec=60
run=8
run_start=1787450070
scenario=exp6
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787450227
--- events ---
37m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
37m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
36m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container fastapi-proxy
36m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container llama-server
36m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-gbrzg
36m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
36m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
36m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
30m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
26m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
26m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
26m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container fastapi-proxy
26m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-z8vvr
26m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container llama-server
25m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
22m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
22m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-tmxvt
22m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container llama-server
22m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container fastapi-proxy
22m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-btt2w           Successfully assigned default/llm-proxy-857bf6d79d-btt2w to ip-172-31-35-139.us-west-2.compute.internal
22m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-btt2w
22m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
22m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason:
22m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
22m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
22m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
22m     Normal    Pulling             pod/llm-proxy-857bf6d79d-btt2w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
22m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
22m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
22m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
22m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 312ms (312ms including waiting). Image size: 64753325 bytes.
22m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
21m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
20m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pzkd8
20m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-pzkd8           Successfully assigned default/llm-proxy-857bf6d79d-pzkd8 to ip-172-31-17-227.us-west-2.compute.internal
20m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
20m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
20m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
20m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
20m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m     Normal    Pulling             pod/llm-proxy-857bf6d79d-pzkd8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
19m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
19m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
19m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
17m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-s2k7d           Successfully assigned default/llm-proxy-857bf6d79d-s2k7d to ip-172-31-33-225.us-west-2.compute.internal
17m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
17m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-s2k7d
17m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
17m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
17m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
17m     Normal    Pulling             pod/llm-proxy-857bf6d79d-s2k7d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
17m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
17m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
12m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "curlimages/curl:8.21.0"
12m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-w29hf
12m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-7gjc5
12m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-w29hf           Successfully assigned default/llm-proxy-857bf6d79d-w29hf to ip-172-31-16-197.us-west-2.compute.internal
12m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "curlimages/curl:8.21.0"
12m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
12m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 6
12m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-7gjc5           Successfully assigned default/llm-proxy-857bf6d79d-7gjc5 to ip-172-31-16-97.us-west-2.compute.internal
12m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "curlimages/curl:8.21.0" in 1.658s (1.658s including waiting). Image size: 10652192 bytes.
12m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
12m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
12m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
12m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "curlimages/curl:8.21.0" in 1.689s (1.689s including waiting). Image size: 10652192 bytes.
12m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
12m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
11m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
11m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.707s (19.707s including waiting). Image size: 307683482 bytes.
11m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
11m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
11m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.586s (6.586s including waiting). Image size: 64753325 bytes.
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.525s (18.525s including waiting). Image size: 307683482 bytes.
11m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
11m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
11m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
11m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
11m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.505s (6.505s including waiting). Image size: 64753325 bytes.
11m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
11m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
11m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
4m20s   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
4m20s   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m20s   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
89s     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
89s     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
88s     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
run_end=1787450227
interrupted=0
