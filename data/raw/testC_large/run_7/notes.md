# scenario=testC_large run=7
collect_start=1787561234
interval_sec=60
run=7
run_start=1787561236
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787561376
--- events ---
45m    Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
45m    Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
45m    Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
44m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
41m    Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
41m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
41m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
41m    Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
41m    Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
41m    Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
41m    Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
41m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
41m    Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
41m    Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
41m    Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
41m    Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
41m    Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
41m    Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
41m    Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
40m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
40m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
40m    Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m    Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
40m    Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
39m    Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
39m    Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m    Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
39m    Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
39m    Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m    Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
39m    Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
39m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
21m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
18m    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
18m    Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
18m    Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
18m    Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
18m    Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
18m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
17m    Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
17m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
17m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
17m    Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
17m    Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
17m    Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
17m    Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
16m    Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
16m    Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
16m    Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
16m    Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
16m    Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
16m    Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
16m    Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
16m    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
16m    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
16m    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
16m    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
15m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
15m    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
15m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
15m    Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
15m    Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
15m    Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
15m    Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
15m    Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
15m    Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
15m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
15m    Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
15m    Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m    Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
15m    Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
15m    Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
118s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787561376
interrupted=0
