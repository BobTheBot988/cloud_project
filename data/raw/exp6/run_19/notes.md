# scenario=exp6 run=19
collect_start=1787451843
interval_sec=60
run=19
run_start=1787451847
scenario=exp6
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787452003
--- events ---
60m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
55m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-z8vvr
55m   Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container llama-server
55m   Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container fastapi-proxy
55m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
55m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
55m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
52m   Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container fastapi-proxy
52m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
52m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-tmxvt
52m   Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container llama-server
51m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
51m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
51m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason:
51m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-btt2w           Successfully assigned default/llm-proxy-857bf6d79d-btt2w to ip-172-31-35-139.us-west-2.compute.internal
51m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
51m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-btt2w
51m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
51m   Normal    Pulling             pod/llm-proxy-857bf6d79d-btt2w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
51m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
51m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 312ms (312ms including waiting). Image size: 64753325 bytes.
51m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
51m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
50m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
49m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-pzkd8           Successfully assigned default/llm-proxy-857bf6d79d-pzkd8 to ip-172-31-17-227.us-west-2.compute.internal
49m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
49m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pzkd8
49m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
49m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
49m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
49m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
49m   Normal    Pulling             pod/llm-proxy-857bf6d79d-pzkd8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
49m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
49m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
47m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-s2k7d
47m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
47m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
47m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-s2k7d           Successfully assigned default/llm-proxy-857bf6d79d-s2k7d to ip-172-31-33-225.us-west-2.compute.internal
47m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
47m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
47m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
46m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
46m   Normal    Pulling             pod/llm-proxy-857bf6d79d-s2k7d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
46m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
42m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-w29hf
42m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-7gjc5
42m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "curlimages/curl:8.21.0"
42m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-7gjc5           Successfully assigned default/llm-proxy-857bf6d79d-7gjc5 to ip-172-31-16-97.us-west-2.compute.internal
42m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "curlimages/curl:8.21.0"
42m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 6
42m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-w29hf           Successfully assigned default/llm-proxy-857bf6d79d-w29hf to ip-172-31-16-197.us-west-2.compute.internal
42m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
42m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "curlimages/curl:8.21.0" in 1.689s (1.689s including waiting). Image size: 10652192 bytes.
42m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
42m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
42m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
42m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
42m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "curlimages/curl:8.21.0" in 1.658s (1.658s including waiting). Image size: 10652192 bytes.
41m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
41m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
41m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
41m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
41m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
41m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.707s (19.707s including waiting). Image size: 307683482 bytes.
41m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.586s (6.586s including waiting). Image size: 64753325 bytes.
41m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
41m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
41m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
41m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.525s (18.525s including waiting). Image size: 307683482 bytes.
41m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
41m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
41m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
41m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
41m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
41m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.505s (6.505s including waiting). Image size: 64753325 bytes.
41m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
31m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
31m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
16m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
16m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
16m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
14m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
14m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
32s   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
32s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
32s   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
32s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
32s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
17s   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
17s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
17s   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
17s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
17s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
3s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
2s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
run_end=1787452003
interrupted=0
