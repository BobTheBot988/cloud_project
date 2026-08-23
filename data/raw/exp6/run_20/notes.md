# scenario=exp6 run=20
collect_start=1787452003
interval_sec=60
run=20
run_start=1787452007
scenario=exp6
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787452164
--- events ---
58m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container llama-server
58m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container fastapi-proxy
58m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-z8vvr
58m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
57m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
54m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container fastapi-proxy
54m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container llama-server
54m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-tmxvt
54m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
54m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-btt2w
54m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason:
54m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-btt2w           Successfully assigned default/llm-proxy-857bf6d79d-btt2w to ip-172-31-35-139.us-west-2.compute.internal
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
54m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
54m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
54m     Normal    Pulling             pod/llm-proxy-857bf6d79d-btt2w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
54m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
54m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 312ms (312ms including waiting). Image size: 64753325 bytes.
54m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
53m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
52m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-pzkd8           Successfully assigned default/llm-proxy-857bf6d79d-pzkd8 to ip-172-31-17-227.us-west-2.compute.internal
52m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
52m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pzkd8
52m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
52m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
52m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
52m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
52m     Normal    Pulling             pod/llm-proxy-857bf6d79d-pzkd8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
52m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
52m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
52m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
49m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-s2k7d           Successfully assigned default/llm-proxy-857bf6d79d-s2k7d to ip-172-31-33-225.us-west-2.compute.internal
49m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-s2k7d
49m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
49m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
49m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
49m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
49m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
49m     Normal    Pulling             pod/llm-proxy-857bf6d79d-s2k7d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
49m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
44m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-w29hf
44m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-7gjc5
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "curlimages/curl:8.21.0"
44m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-w29hf           Successfully assigned default/llm-proxy-857bf6d79d-w29hf to ip-172-31-16-197.us-west-2.compute.internal
44m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-7gjc5           Successfully assigned default/llm-proxy-857bf6d79d-7gjc5 to ip-172-31-16-97.us-west-2.compute.internal
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "curlimages/curl:8.21.0"
44m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 6
44m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "curlimages/curl:8.21.0" in 1.689s (1.689s including waiting). Image size: 10652192 bytes.
44m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
44m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
44m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "curlimages/curl:8.21.0" in 1.658s (1.658s including waiting). Image size: 10652192 bytes.
44m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
44m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.707s (19.707s including waiting). Image size: 307683482 bytes.
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.586s (6.586s including waiting). Image size: 64753325 bytes.
44m     Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
44m     Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
44m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.525s (18.525s including waiting). Image size: 307683482 bytes.
44m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
44m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
44m     Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m     Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
44m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
44m     Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
44m     Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.505s (6.505s including waiting). Image size: 64753325 bytes.
33m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
33m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
33m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
19m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: HTTP probe failed with statuscode: 503
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
19m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
17m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m13s   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container llama-server
3m13s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
3m13s   Normal    Killing             pod/llm-proxy-857bf6d79d-btt2w           Stopping container fastapi-proxy
3m13s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
3m13s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-btt2w
2m58s   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container fastapi-proxy
2m58s   Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-s2k7d
2m58s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
2m58s   Normal    Killing             pod/llm-proxy-857bf6d79d-s2k7d           Stopping container llama-server
2m58s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
2m43s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
2m34s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
run_end=1787452164
interrupted=0
