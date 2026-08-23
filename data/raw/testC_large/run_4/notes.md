# scenario=testC_large run=4
collect_start=1787496310
interval_sec=60
run=4
run_start=1787496313
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787496449
--- events ---
60m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-br2vp      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.884s (13.884s including waiting). Image size: 307230405 bytes.
60m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-br2vp      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-br2vp      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
60m     Normal    Started                        pod/llm-proxy-857bf6d79d-br2vp      Container started
60m     Normal    Created                        pod/llm-proxy-857bf6d79d-br2vp      Container created
60m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-br2vp      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.402s (5.402s including waiting). Image size: 64753325 bytes.
60m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
60m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
60m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
60m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
56m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-j679m
56m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-j679m      Successfully assigned default/llm-proxy-857bf6d79d-j679m to ip-172-31-38-68.ec2.internal
56m     Normal    Created                        pod/llm-proxy-857bf6d79d-j679m      Container created
56m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "curlimages/curl:8.21.0" in 766ms (766ms including waiting). Image size: 10652192 bytes.
56m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-j679m      Pulling image "curlimages/curl:8.21.0"
56m     Normal    Started                        pod/llm-proxy-857bf6d79d-j679m      Container started
54m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-j679m      Pulling image "ghcr.io/ggml-org/llama.cpp:server"
54m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 11.804s (11.804s including waiting). Image size: 307230405 bytes.
54m     Normal    Created                        pod/llm-proxy-857bf6d79d-j679m      Container created
54m     Normal    Started                        pod/llm-proxy-857bf6d79d-j679m      Container started
54m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-j679m      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-j679m      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.532s (5.532s including waiting). Image size: 64753325 bytes.
54m     Normal    Created                        pod/llm-proxy-857bf6d79d-j679m      Container created
54m     Normal    Started                        pod/llm-proxy-857bf6d79d-j679m      Container started
54m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-j679m      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
49m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
49m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
49m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-j679m
49m     Normal    Killing                        pod/llm-proxy-857bf6d79d-j679m      Stopping container fastapi-proxy
49m     Normal    Killing                        pod/llm-proxy-857bf6d79d-j679m      Stopping container llama-server
33m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-bdpqw
33m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-bdpqw      Successfully assigned default/llm-proxy-857bf6d79d-bdpqw to ip-172-31-38-68.ec2.internal
33m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
33m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-bdpqw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-bdpqw      Container started
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-bdpqw      Container created
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-bdpqw      Container started
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-bdpqw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-bdpqw      Container created
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-bdpqw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 106ms (106ms including waiting). Image size: 64753325 bytes.
31m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-br2vp      Container started
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-br2vp      Container created
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-br2vp      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Warning   BackOff                        pod/llm-proxy-857bf6d79d-bdpqw      Back-off restarting failed container llama-server in pod llm-proxy-857bf6d79d-bdpqw_default(2ab8dea2-6e63-4ea6-bee3-369477584638)
12m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: HTTP probe failed with statuscode: 503
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-bdpqw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-bdpqw      Container created
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-bdpqw      Container started
6m46s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-bdpqw      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787496449
interrupted=0
