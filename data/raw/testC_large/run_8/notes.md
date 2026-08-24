# scenario=testC_large run=8
collect_start=1787561376
interval_sec=60
run=8
run_start=1787561378
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787561519
--- events ---
47m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
47m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
47m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
47m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
44m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
44m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
44m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
43m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
43m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
43m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
43m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
43m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
42m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
42m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
42m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
42m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
42m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
42m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
42m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
42m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
42m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
24m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
20m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
20m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
20m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
20m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
20m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
20m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
19m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
19m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
19m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
19m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
19m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
19m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
19m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
18m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
18m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
18m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
18m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
18m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
18m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
18m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
18m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
18m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
18m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
18m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
18m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
18m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
4m22s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787561519
interrupted=0
