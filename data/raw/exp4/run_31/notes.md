# scenario=exp4 run=31
collect_start=1787425730
interval_sec=60
run=31
run_start=1787425734
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787425894
--- events ---
52m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
52m     Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl           Container created
52m     Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl           Container started
51m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47           Container started
51m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
51m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47           Container created
50m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: HTTP probe failed with statuscode: 503
40m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-4vp47
40m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container fastapi-proxy
40m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container llama-server
40m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
40m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
39m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container fastapi-proxy
39m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
39m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-thxs6
39m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-mb6wl
39m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 1
39m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container llama-server
39m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container llama-server
39m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container fastapi-proxy
16m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
15m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f           Container started
15m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f           Container created
15m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
15m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
15m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
15m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
15m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-fcpf2           Successfully assigned default/llm-proxy-857bf6d79d-fcpf2 to ip-172-31-45-91.us-west-2.compute.internal
15m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fcpf2
15m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
15m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
15m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 332ms (332ms including waiting). Image size: 64753325 bytes.
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-fcpf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: Get "http://10.244.9.4:8000/health": dial tcp 10.244.9.4:8000: connect: connection refused
13m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hz7k2
13m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hz7k2           Successfully assigned default/llm-proxy-857bf6d79d-hz7k2 to ip-172-31-41-64.us-west-2.compute.internal
13m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
13m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
13m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
13m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
13m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hz7k2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
12m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 333ms (333ms including waiting). Image size: 64753325 bytes.
12m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-c9h2m           Successfully assigned default/llm-proxy-857bf6d79d-c9h2m to ip-172-31-18-181.us-west-2.compute.internal
12m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
12m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hz7k2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
12m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-c9h2m
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
12m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-c9h2m           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 317ms (317ms including waiting). Image size: 64753325 bytes.
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
12m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-c9h2m           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
4m59s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m59s   Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
4m59s   Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
4m59s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787425894
interrupted=0
