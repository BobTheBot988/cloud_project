# scenario=testC_mix run=3
collect_start=1787562152
interval_sec=60
run=3
run_start=1787562154
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787562295
--- events ---
60m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
60m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
60m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
60m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
57m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
57m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
57m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
57m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
57m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
57m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
57m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
57m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
56m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
56m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
56m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
56m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
56m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
56m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
56m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
55m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
55m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
33m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
33m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
33m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
33m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
33m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
33m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
32m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
32m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
32m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
32m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
32m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
32m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
32m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
32m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
32m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
32m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
32m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
32m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
32m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
32m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
31m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
30m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
17m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8m4s    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9crjj
8m4s    Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container llama-server
8m4s    Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container llama-server
8m4s    Warning   FailedScheduling               pod/llm-proxy-7dc458997b-9crjj      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
8m4s    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-w4zrb
8m4s    Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container fastapi-proxy
8m4s    Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container fastapi-proxy
8m2s    Normal    Scheduled                      pod/llm-proxy-7dc458997b-w4zrb      Successfully assigned default/llm-proxy-7dc458997b-w4zrb to ip-172-31-39-185.ec2.internal
8m2s    Warning   FailedScheduling               pod/llm-proxy-7dc458997b-w4zrb      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
8m2s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
8m2s    Normal    Scheduled                      pod/llm-proxy-7dc458997b-9crjj      Successfully assigned default/llm-proxy-7dc458997b-9crjj to ip-172-31-13-209.ec2.internal
8m1s    Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
8m1s    Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
8m1s    Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m1s    Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
8m1s    Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m1s    Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
7m47s   Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
7m47s   Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
7m47s   Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
7m47s   Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
7m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 123ms (123ms including waiting). Image size: 64753325 bytes.
7m47s   Normal    Pulling                        pod/llm-proxy-7dc458997b-9crjj      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
7m44s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m44s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m29s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
7m29s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
7m20s   Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m20s   Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
7m20s   Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
7m20s   Normal    Pulling                        pod/llm-proxy-7dc458997b-w4zrb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m19s   Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
7m19s   Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 103ms (103ms including waiting). Image size: 64753325 bytes.
7m19s   Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
7m19s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
2m4s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m1s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787562295
interrupted=0
