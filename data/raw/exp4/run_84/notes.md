# scenario=exp4 run=84
collect_start=1787446091
interval_sec=60
run=84
run_start=1787446095
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787446253
--- events ---
60m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-l4sc7
60m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
60m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7           Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
60m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7           Pulling image "curlimages/curl:8.21.0"
60m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7           Container started
60m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7           Container created
60m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7           Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
59m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
59m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
59m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
59m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7           Container started
59m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7           Container created
59m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
59m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7           Container started
59m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7           Container created
59m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
59m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
59m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
53m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
53m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
53m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr           Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
53m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "curlimages/curl:8.21.0"
53m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-z8vvr
53m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
53m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr           Container created
53m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr           Container started
52m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
52m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
52m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
52m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr           Container started
52m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr           Container created
52m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
50m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
50m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-tmxvt           Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
50m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "curlimages/curl:8.21.0"
50m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
50m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-tmxvt
50m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
50m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt           Container started
50m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt           Container created
50m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-gbrzg           Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
50m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-gbrzg
50m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
50m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
50m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "curlimages/curl:8.21.0"
50m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg           Container started
50m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg           Container created
50m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
50m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
50m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
50m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt           Container started
50m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt           Container created
50m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
49m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt           Container created
49m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
49m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
49m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt           Container started
49m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
49m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
49m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
49m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg           Container created
49m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
49m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg           Container started
31m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
29m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg           Readiness probe failed: HTTP probe failed with statuscode: 503
21m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr           Container created
21m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr           Container started
21m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
12m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt           Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
11m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg           Container started
11m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg           Container created
11m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787446253
interrupted=0
