# scenario=exp6 run=18
collect_start=1787451683
interval_sec=60
run=18
run_start=1787451687
scenario=exp6
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787451843
--- events ---
57m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
53m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
53m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-z8vvr
53m   Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container fastapi-proxy
53m   Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container llama-server
53m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
52m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
49m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
49m   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-tmxvt
49m   Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container llama-server
49m   Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container fastapi-proxy
49m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
49m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-btt2w
49m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason:
49m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-btt2w           Successfully assigned default/llm-proxy-857bf6d79d-btt2w to ip-172-31-35-139.us-west-2.compute.internal
49m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
49m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
49m   Normal    Pulling             pod/llm-proxy-857bf6d79d-btt2w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 312ms (312ms including waiting). Image size: 64753325 bytes.
49m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
49m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
49m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
48m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
48m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
47m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pzkd8
47m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
47m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
47m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-pzkd8           Successfully assigned default/llm-proxy-857bf6d79d-pzkd8 to ip-172-31-17-227.us-west-2.compute.internal
47m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
47m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
47m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
46m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
46m   Normal    Pulling             pod/llm-proxy-857bf6d79d-pzkd8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
46m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
46m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
44m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
44m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
44m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-s2k7d
44m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-s2k7d           Successfully assigned default/llm-proxy-857bf6d79d-s2k7d to ip-172-31-33-225.us-west-2.compute.internal
44m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
44m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
44m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
44m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
44m   Normal    Pulling             pod/llm-proxy-857bf6d79d-s2k7d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
44m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
39m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-7gjc5           Successfully assigned default/llm-proxy-857bf6d79d-7gjc5 to ip-172-31-16-97.us-west-2.compute.internal
39m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-7gjc5
39m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 6
39m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "curlimages/curl:8.21.0"
39m   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-w29hf
39m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
39m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "curlimages/curl:8.21.0"
39m   Normal    Scheduled           pod/llm-proxy-857bf6d79d-w29hf           Successfully assigned default/llm-proxy-857bf6d79d-w29hf to ip-172-31-16-197.us-west-2.compute.internal
39m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "curlimages/curl:8.21.0" in 1.689s (1.689s including waiting). Image size: 10652192 bytes.
39m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
39m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
39m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "curlimages/curl:8.21.0" in 1.658s (1.658s including waiting). Image size: 10652192 bytes.
39m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
39m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
39m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
39m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
38m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
38m   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
38m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.707s (19.707s including waiting). Image size: 307683482 bytes.
38m   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.586s (6.586s including waiting). Image size: 64753325 bytes.
38m   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
38m   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
38m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
38m   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
38m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
38m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.525s (18.525s including waiting). Image size: 307683482 bytes.
38m   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.505s (6.505s including waiting). Image size: 64753325 bytes.
38m   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
38m   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
38m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
28m   Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
28m   Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
28m   Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
13m   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
13m   Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
13m   Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
13m   Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m   Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m   Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
11m   Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
run_end=1787451843
interrupted=0
