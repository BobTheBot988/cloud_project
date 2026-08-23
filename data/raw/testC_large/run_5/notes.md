# scenario=testC_large run=5
collect_start=1787496449
interval_sec=60
run=5
run_start=1787496451
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787496586
--- events ---
58m    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-j679m
58m    Normal    Scheduled           pod/llm-proxy-857bf6d79d-j679m      Successfully assigned default/llm-proxy-857bf6d79d-j679m to ip-172-31-38-68.ec2.internal
58m    Normal    Pulling             pod/llm-proxy-857bf6d79d-j679m      Pulling image "curlimages/curl:8.21.0"
58m    Normal    Pulled              pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "curlimages/curl:8.21.0" in 766ms (766ms including waiting). Image size: 10652192 bytes.
58m    Normal    Created             pod/llm-proxy-857bf6d79d-j679m      Container created
58m    Normal    Started             pod/llm-proxy-857bf6d79d-j679m      Container started
57m    Normal    Pulling             pod/llm-proxy-857bf6d79d-j679m      Pulling image "ghcr.io/ggml-org/llama.cpp:server"
56m    Normal    Created             pod/llm-proxy-857bf6d79d-j679m      Container created
56m    Normal    Pulled              pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 11.804s (11.804s including waiting). Image size: 307230405 bytes.
56m    Normal    Started             pod/llm-proxy-857bf6d79d-j679m      Container started
56m    Normal    Pulling             pod/llm-proxy-857bf6d79d-j679m      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
56m    Normal    Pulled              pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.532s (5.532s including waiting). Image size: 64753325 bytes.
56m    Normal    Created             pod/llm-proxy-857bf6d79d-j679m      Container created
56m    Normal    Started             pod/llm-proxy-857bf6d79d-j679m      Container started
56m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-j679m      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
51m    Normal    SuccessfulDelete    replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-j679m
51m    Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
51m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
51m    Normal    Killing             pod/llm-proxy-857bf6d79d-j679m      Stopping container llama-server
51m    Normal    Killing             pod/llm-proxy-857bf6d79d-j679m      Stopping container fastapi-proxy
35m    Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
35m    Normal    SuccessfulCreate    replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-bdpqw
35m    Normal    ScalingReplicaSet   deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
35m    Normal    Scheduled           pod/llm-proxy-857bf6d79d-bdpqw      Successfully assigned default/llm-proxy-857bf6d79d-bdpqw to ip-172-31-38-68.ec2.internal
35m    Normal    Pulled              pod/llm-proxy-857bf6d79d-bdpqw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m    Normal    Started             pod/llm-proxy-857bf6d79d-bdpqw      Container started
35m    Normal    Created             pod/llm-proxy-857bf6d79d-bdpqw      Container created
33m    Normal    Started             pod/llm-proxy-857bf6d79d-bdpqw      Container started
33m    Normal    Created             pod/llm-proxy-857bf6d79d-bdpqw      Container created
33m    Normal    Pulled              pod/llm-proxy-857bf6d79d-bdpqw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 106ms (106ms including waiting). Image size: 64753325 bytes.
33m    Normal    Pulling             pod/llm-proxy-857bf6d79d-bdpqw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
19m    Normal    Pulled              pod/llm-proxy-857bf6d79d-br2vp      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m    Normal    Started             pod/llm-proxy-857bf6d79d-br2vp      Container started
19m    Normal    Created             pod/llm-proxy-857bf6d79d-br2vp      Container created
15m    Warning   BackOff             pod/llm-proxy-857bf6d79d-bdpqw      Back-off restarting failed container llama-server in pod llm-proxy-857bf6d79d-bdpqw_default(2ab8dea2-6e63-4ea6-bee3-369477584638)
15m    Normal    Pulled              pod/llm-proxy-857bf6d79d-bdpqw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m    Normal    Created             pod/llm-proxy-857bf6d79d-bdpqw      Container created
15m    Normal    Started             pod/llm-proxy-857bf6d79d-bdpqw      Container started
15m    Warning   Unhealthy           pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: HTTP probe failed with statuscode: 503
9m3s   Warning   Unhealthy           pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787496586
interrupted=0
