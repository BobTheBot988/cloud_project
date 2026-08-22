# scenario=exp4 run=26
collect_start=1787424892
interval_sec=60
run=26
run_start=1787424896
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787425055
--- events ---
60m     Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl           Container created
60m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-mb6wl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
60m     Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl           Container started
60m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-mb6wl           Readiness probe failed: Get "http://10.244.9.3:8000/health": dial tcp 10.244.9.3:8000: connect: connection refused
38m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl           Container created
38m     Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl           Container started
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47           Container started
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47           Container created
37m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: HTTP probe failed with statuscode: 503
26m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container fastapi-proxy
26m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-4vp47
26m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
26m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
26m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container llama-server
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container llama-server
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container fastapi-proxy
25m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 1
25m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
25m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-thxs6
25m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-mb6wl
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container fastapi-proxy
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container llama-server
2m11s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
94s     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f           Container started
94s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
94s     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f           Container created
86s     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
86s     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
71s     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fcpf2
71s     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-fcpf2           Successfully assigned default/llm-proxy-857bf6d79d-fcpf2 to ip-172-31-45-91.us-west-2.compute.internal
71s     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
71s     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
70s     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
70s     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
70s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
41s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 332ms (332ms including waiting). Image size: 64753325 bytes.
40s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-fcpf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40s     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
40s     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
40s     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
40s     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
40s     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: Get "http://10.244.9.4:8000/health": dial tcp 10.244.9.4:8000: connect: connection refused
run_end=1787425055
interrupted=0
