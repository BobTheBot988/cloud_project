# scenario=testC_mix run=2
collect_start=1787562009
interval_sec=60
run=2
run_start=1787562012
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=2 size=mix
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787562152
--- events ---
58m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
58m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
58m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
57m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
54m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
54m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
54m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
54m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
54m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
54m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
54m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
54m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
54m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
54m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
54m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
54m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
54m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
54m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
53m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
53m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
53m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
53m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
53m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
52m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
52m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
52m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
52m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
52m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
52m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
52m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
31m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
31m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
31m     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
30m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
30m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
30m     Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
30m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
30m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
29m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
29m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
29m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
29m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
29m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
29m     Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
29m     Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
28m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
28m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
28m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
28m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
28m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
28m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
28m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
28m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
28m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
28m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
28m     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
28m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
28m     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
28m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
28m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
14m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
5m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container fastapi-proxy
5m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container fastapi-proxy
5m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-9crjj      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
5m41s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-w4zrb
5m41s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9crjj
5m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-c67bx      Stopping container llama-server
5m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-rcvws      Stopping container llama-server
5m39s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
5m39s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9crjj      Successfully assigned default/llm-proxy-7dc458997b-9crjj to ip-172-31-13-209.ec2.internal
5m39s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-w4zrb      Successfully assigned default/llm-proxy-7dc458997b-w4zrb to ip-172-31-39-185.ec2.internal
5m39s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-w4zrb      0/3 nodes are available: 1 node(s) had untolerated taint(s), 2 Insufficient cpu. no new claims to deallocate, preemption: 0/3 nodes are available: 1 Preemption is not helpful for scheduling, 2 No preemption victims found for incoming pod.
5m38s   Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
5m38s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m38s   Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
5m38s   Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
5m38s   Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m38s   Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
5m24s   Normal    Pulling                        pod/llm-proxy-7dc458997b-9crjj      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m24s   Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
5m24s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 123ms (123ms including waiting). Image size: 64753325 bytes.
5m24s   Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
5m24s   Normal    Started                        pod/llm-proxy-7dc458997b-9crjj      Container started
5m24s   Normal    Created                        pod/llm-proxy-7dc458997b-9crjj      Container created
5m24s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9crjj      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m23s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9crjj      Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
5m21s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
5m21s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
5m6s    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
5m6s    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
4m57s   Normal    Pulling                        pod/llm-proxy-7dc458997b-w4zrb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m57s   Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
4m57s   Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
4m57s   Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m56s   Normal    Started                        pod/llm-proxy-7dc458997b-w4zrb      Container started
4m56s   Normal    Created                        pod/llm-proxy-7dc458997b-w4zrb      Container created
4m56s   Normal    Pulled                         pod/llm-proxy-7dc458997b-w4zrb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 103ms (103ms including waiting). Image size: 64753325 bytes.
4m56s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-w4zrb      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787562152
interrupted=0
