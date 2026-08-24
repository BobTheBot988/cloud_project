# scenario=testC_mix run=8
collect_start=1787562865
interval_sec=60
run=8
run_start=1787562867
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787563007
--- events ---
49m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
45m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
45m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
45m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
45m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
44m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
44m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
44m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
44m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
44m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
44m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
43m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
43m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
43m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
43m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
43m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
42m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
42m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
42m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
42m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
42m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
29m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
19m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-9crjj      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container llama-server
19m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9crjj
19m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-w4zrb
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container fastapi-proxy
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container fastapi-proxy
19m     Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container llama-server
19m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-w4zrb      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
19m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
19m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-w4zrb      Successfully assigned default/llm-proxy-7dc458997b-w4zrb to ip-172-31-39-185.ec2.internal
19m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-9crjj      Successfully assigned default/llm-proxy-7dc458997b-9crjj to ip-172-31-13-209.ec2.internal
19m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
19m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m     Normal    Pulling                        pod/llm-proxy-7dc458997b-9crjj      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
19m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 123ms (123ms including waiting). Image size: 64753325 bytes.
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
19m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
19m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
19m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
19m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
19m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
19m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m     Normal    Pulling                        pod/llm-proxy-7dc458997b-w4zrb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
19m     Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
19m     Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
19m     Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 103ms (103ms including waiting). Image size: 64753325 bytes.
13m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
6m37s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787563007
interrupted=0
