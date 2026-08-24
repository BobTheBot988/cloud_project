# scenario=testC_large run=9
collect_start=1787561519
interval_sec=60
run=9
run_start=1787561522
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787561663
--- events ---
49m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
49m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
49m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
49m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
46m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
46m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
46m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
46m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
46m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
46m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
46m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
46m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
46m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
46m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
46m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
46m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
45m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
45m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
45m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
45m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
44m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
44m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
26m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
23m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
23m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
23m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
23m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
23m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
22m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
22m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
22m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
22m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
22m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
22m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
22m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
22m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
21m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
21m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
21m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
21m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
21m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
21m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
21m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
21m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
21m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
21m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
21m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
20m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
20m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
20m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
20m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
20m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
20m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
20m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
20m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
20m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
20m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
20m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
20m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
20m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
6m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787561663
interrupted=0
