# scenario=exp4 run=38
collect_start=1787427359
interval_sec=60
run=38
run_start=1787427363
scenario=exp4
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787427523
--- events ---
43m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f           Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
42m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f           Container created
42m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f           Container started
42m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
42m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
42m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
42m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-fcpf2           Successfully assigned default/llm-proxy-857bf6d79d-fcpf2 to ip-172-31-45-91.us-west-2.compute.internal
42m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: cpu resource utilization (percentage of request) above target
42m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
42m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-fcpf2
42m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
42m   Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
42m   Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
41m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-fcpf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
41m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: Get "http://10.244.9.4:8000/health": dial tcp 10.244.9.4:8000: connect: connection refused
41m   Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
41m   Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
41m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 332ms (332ms including waiting). Image size: 64753325 bytes.
40m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-hz7k2
40m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: cpu resource utilization (percentage of request) above target
40m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hz7k2           Successfully assigned default/llm-proxy-857bf6d79d-hz7k2 to ip-172-31-41-64.us-west-2.compute.internal
40m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
40m   Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
40m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m   Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
40m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-hz7k2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m   Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
40m   Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
40m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
40m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hz7k2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
40m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
40m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hz7k2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 333ms (333ms including waiting). Image size: 64753325 bytes.
40m   Normal    Created                        pod/llm-proxy-857bf6d79d-hz7k2           Container created
40m   Normal    Started                        pod/llm-proxy-857bf6d79d-hz7k2           Container started
40m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 4; reason: cpu resource utilization (percentage of request) above target
40m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-c9h2m           Successfully assigned default/llm-proxy-857bf6d79d-c9h2m to ip-172-31-18-181.us-west-2.compute.internal
40m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-c9h2m
40m   Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
40m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m   Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
39m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-c9h2m           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m   Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
39m   Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
39m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 317ms (317ms including waiting). Image size: 64753325 bytes.
39m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-c9h2m           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
32m   Normal    Started                        pod/llm-proxy-857bf6d79d-fcpf2           Container started
32m   Normal    Created                        pod/llm-proxy-857bf6d79d-fcpf2           Container created
32m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-fcpf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
32m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-fcpf2           Readiness probe failed: HTTP probe failed with statuscode: 503
25m   Normal    Started                        pod/llm-proxy-857bf6d79d-c9h2m           Container started
25m   Normal    Created                        pod/llm-proxy-857bf6d79d-c9h2m           Container created
25m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-c9h2m           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-fcpf2
16m   Normal    Killing                        pod/llm-proxy-857bf6d79d-fcpf2           Stopping container llama-server
16m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
16m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 3; reason: All metrics below target
16m   Normal    Killing                        pod/llm-proxy-857bf6d79d-fcpf2           Stopping container fastapi-proxy
15m   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-c9h2m
15m   Normal    Killing                        pod/llm-proxy-857bf6d79d-c9h2m           Stopping container fastapi-proxy
15m   Normal    Killing                        pod/llm-proxy-857bf6d79d-c9h2m           Stopping container llama-server
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 3 to 2
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 2; reason: All metrics below target
15m   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-hz7k2
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4   New size: 1; reason: All metrics below target
15m   Normal    Killing                        pod/llm-proxy-857bf6d79d-hz7k2           Stopping container fastapi-proxy
15m   Normal    Killing                        pod/llm-proxy-857bf6d79d-hz7k2           Stopping container llama-server
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787427523
interrupted=0
