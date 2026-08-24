# scenario=testC_mix run=5
collect_start=1787562436
interval_sec=60
run=5
run_start=1787562438
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787562580
--- events ---
60m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
60m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
60m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
60m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
60m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
59m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
59m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
59m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
59m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
59m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
59m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
59m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
59m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
41m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
38m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
38m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
38m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
38m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
37m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
36m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
36m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
36m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
36m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
36m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
35m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
35m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
22m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
12m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-9crjj      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
12m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9crjj
12m     Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container fastapi-proxy
12m     Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container llama-server
12m     Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container llama-server
12m     Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container fastapi-proxy
12m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-w4zrb
12m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-w4zrb      Successfully assigned default/llm-proxy-7dc458997b-w4zrb to ip-172-31-39-185.ec2.internal
12m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-9crjj      Successfully assigned default/llm-proxy-7dc458997b-9crjj to ip-172-31-13-209.ec2.internal
12m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
12m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-w4zrb      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
12m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
12m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
12m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
12m     Normal    Pulling                        pod/llm-proxy-7dc458997b-9crjj      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 123ms (123ms including waiting). Image size: 64753325 bytes.
12m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
12m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
12m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
12m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
12m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
12m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
12m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
12m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
12m     Normal    Pulling                        pod/llm-proxy-7dc458997b-w4zrb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 103ms (103ms including waiting). Image size: 64753325 bytes.
12m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
12m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
6m49s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
6m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787562580
interrupted=0
