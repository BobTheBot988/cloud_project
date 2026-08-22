# scenario=exp4 run=30
collect_start=1787425566
interval_sec=60
run=30
run_start=1787425570
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787425730
--- events ---
49m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl           Container created
49m     Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl           Container started
48m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47           Container started
48m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
48m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47           Container created
48m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47           Readiness probe failed: HTTP probe failed with statuscode: 503
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-4vp47
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container fastapi-proxy
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-4vp47           Stopping container llama-server
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container fastapi-proxy
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-thxs6
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-mb6wl
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 1
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-thxs6           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-857bf6d79d-mb6wl           Stopping container fastapi-proxy
13m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f           Container started
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f           Container created
12m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
12m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
12m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
12m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
12m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-fcpf2           Successfully assigned default/llm-proxy-857bf6d79d-fcpf2 to ip-172-31-45-91.us-west-2.compute.internal
12m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fcpf2
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
11m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
11m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 332ms (332ms including waiting). Image size: 64753325 bytes.
11m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
11m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-fcpf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
11m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: Get "http://10.244.9.4:8000/health": dial tcp 10.244.9.4:8000: connect: connection refused
10m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hz7k2
10m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hz7k2           Successfully assigned default/llm-proxy-857bf6d79d-hz7k2 to ip-172-31-41-64.us-west-2.compute.internal
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hz7k2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 333ms (333ms including waiting). Image size: 64753325 bytes.
10m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-c9h2m           Successfully assigned default/llm-proxy-857bf6d79d-c9h2m to ip-172-31-18-181.us-west-2.compute.internal
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
10m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hz7k2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
10m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-c9h2m
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
9m52s   Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
9m52s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-c9h2m           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
9m52s   Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
9m52s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 317ms (317ms including waiting). Image size: 64753325 bytes.
9m52s   Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
9m52s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m52s   Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
9m51s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-c9h2m           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
2m14s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m14s   Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
2m14s   Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
2m14s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: HTTP probe failed with statuscode: 503
run_end=1787425730
interrupted=0
