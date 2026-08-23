# scenario=exp6 run=7
collect_start=1787449904
interval_sec=60
run=7
run_start=1787449908
scenario=exp6
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787450066
--- events ---
60m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: HTTP probe failed with statuscode: 503
60m     Normal    Started             pod/llm-proxy-857bf6d79d-tmxvt           Container started
60m     Normal    Created             pod/llm-proxy-857bf6d79d-tmxvt           Container created
60m     Normal    Pulled              pod/llm-proxy-857bf6d79d-tmxvt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Started             pod/llm-proxy-857bf6d79d-gbrzg           Container started
35m     Normal    Pulled              pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Created             pod/llm-proxy-857bf6d79d-gbrzg           Container created
33m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container fastapi-proxy
33m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
33m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
33m     Normal    Killing             pod/llm-proxy-857bf6d79d-gbrzg           Stopping container llama-server
33m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-gbrzg
33m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
28m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
23m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-z8vvr
23m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container fastapi-proxy
23m     Normal    Killing             pod/llm-proxy-857bf6d79d-z8vvr           Stopping container llama-server
23m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
23m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
22m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
19m     Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-tmxvt
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container fastapi-proxy
19m     Normal    Killing             pod/llm-proxy-857bf6d79d-tmxvt           Stopping container llama-server
19m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
19m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-btt2w           Successfully assigned default/llm-proxy-857bf6d79d-btt2w to ip-172-31-35-139.us-west-2.compute.internal
19m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason:
19m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
19m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-btt2w
19m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
19m     Normal    Pulling             pod/llm-proxy-857bf6d79d-btt2w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 312ms (312ms including waiting). Image size: 64753325 bytes.
19m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-btt2w           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
19m     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
19m     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
19m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
18m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
17m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-pzkd8           Successfully assigned default/llm-proxy-857bf6d79d-pzkd8 to ip-172-31-17-227.us-west-2.compute.internal
17m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pzkd8
17m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
17m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
17m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
17m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
17m     Normal    Pulling             pod/llm-proxy-857bf6d79d-pzkd8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 308ms (308ms including waiting). Image size: 64753325 bytes.
17m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
17m     Normal    Pulled              pod/llm-proxy-857bf6d79d-pzkd8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m     Normal    Created             pod/llm-proxy-857bf6d79d-pzkd8           Container created
17m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-pzkd8           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
17m     Normal    Started             pod/llm-proxy-857bf6d79d-pzkd8           Container started
14m     Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-s2k7d
14m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
14m     Normal    Scheduled           pod/llm-proxy-857bf6d79d-s2k7d           Successfully assigned default/llm-proxy-857bf6d79d-s2k7d to ip-172-31-33-225.us-west-2.compute.internal
14m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
14m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
14m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
14m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
14m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
14m     Normal    Created             pod/llm-proxy-857bf6d79d-s2k7d           Container created
14m     Normal    Pulled              pod/llm-proxy-857bf6d79d-s2k7d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
14m     Normal    Pulling             pod/llm-proxy-857bf6d79d-s2k7d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Normal    Started             pod/llm-proxy-857bf6d79d-s2k7d           Container started
14m     Warning   Unhealthy           pod/llm-proxy-857bf6d79d-s2k7d           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
9m49s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-w29hf
9m49s   Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-7gjc5
9m49s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
9m49s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 6
9m49s   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "curlimages/curl:8.21.0"
9m49s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-7gjc5           Successfully assigned default/llm-proxy-857bf6d79d-7gjc5 to ip-172-31-16-97.us-west-2.compute.internal
9m49s   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "curlimages/curl:8.21.0"
9m49s   Normal    Scheduled           pod/llm-proxy-857bf6d79d-w29hf           Successfully assigned default/llm-proxy-857bf6d79d-w29hf to ip-172-31-16-197.us-west-2.compute.internal
9m47s   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "curlimages/curl:8.21.0" in 1.689s (1.689s including waiting). Image size: 10652192 bytes.
9m47s   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
9m47s   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
9m47s   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "curlimages/curl:8.21.0" in 1.658s (1.658s including waiting). Image size: 10652192 bytes.
9m47s   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
9m47s   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
9m37s   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
9m29s   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
9m18s   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.707s (19.707s including waiting). Image size: 307683482 bytes.
9m18s   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
9m18s   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
9m18s   Normal    Pulling             pod/llm-proxy-857bf6d79d-7gjc5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
9m11s   Normal    Pulled              pod/llm-proxy-857bf6d79d-7gjc5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.586s (6.586s including waiting). Image size: 64753325 bytes.
9m11s   Normal    Started             pod/llm-proxy-857bf6d79d-7gjc5           Container started
9m11s   Normal    Created             pod/llm-proxy-857bf6d79d-7gjc5           Container created
9m10s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-7gjc5           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
9m10s   Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.525s (18.525s including waiting). Image size: 307683482 bytes.
9m10s   Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
9m10s   Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
9m10s   Normal    Pulling             pod/llm-proxy-857bf6d79d-w29hf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
9m4s    Normal    Pulled              pod/llm-proxy-857bf6d79d-w29hf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.505s (6.505s including waiting). Image size: 64753325 bytes.
9m4s    Normal    Created             pod/llm-proxy-857bf6d79d-w29hf           Container created
9m4s    Normal    Started             pod/llm-proxy-857bf6d79d-w29hf           Container started
9m4s    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-w29hf           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
99s     Normal    Started             pod/llm-proxy-857bf6d79d-btt2w           Container started
99s     Normal    Created             pod/llm-proxy-857bf6d79d-btt2w           Container created
99s     Normal    Pulled              pod/llm-proxy-857bf6d79d-btt2w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787450066
interrupted=0
