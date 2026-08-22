# scenario=exp4 run=36
collect_start=1787427033
interval_sec=60
run=36
run_start=1787427037
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787427196
--- events ---
37m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f           Container created
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f           Container started
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
37m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
36m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-fcpf2           Successfully assigned default/llm-proxy-857bf6d79d-fcpf2 to ip-172-31-45-91.us-west-2.compute.internal
36m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
36m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
36m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fcpf2
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-fcpf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: Get "http://10.244.9.4:8000/health": dial tcp 10.244.9.4:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 332ms (332ms including waiting). Image size: 64753325 bytes.
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hz7k2
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hz7k2           Successfully assigned default/llm-proxy-857bf6d79d-hz7k2 to ip-172-31-41-64.us-west-2.compute.internal
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hz7k2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hz7k2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 333ms (333ms including waiting). Image size: 64753325 bytes.
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-c9h2m           Successfully assigned default/llm-proxy-857bf6d79d-c9h2m to ip-172-31-18-181.us-west-2.compute.internal
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-c9h2m
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-c9h2m           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 317ms (317ms including waiting). Image size: 64753325 bytes.
34m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-c9h2m           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
26m     Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
26m     Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
26m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
26m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: HTTP probe failed with statuscode: 503
20m     Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
20m     Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
20m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
11m     Normal    Killing                        pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
11m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
11m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
11m     Normal    Killing                        pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
9m50s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
9m50s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
9m50s   Normal    Killing                        pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
9m50s   Normal    Killing                        pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
9m50s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787427196
interrupted=0
