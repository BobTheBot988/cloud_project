# scenario=testC_large run=5
collect_start=1787560949
interval_sec=60
run=5
run_start=1787560951
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787561092
--- events ---
60m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rfwgl
60m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl      Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
60m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl      Container started
60m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl      Container created
60m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl      Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
60m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl      Pulling image "curlimages/curl:8.21.0"
59m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl      Pulling image "ghcr.io/ggml-org/llama.cpp:server"
59m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
59m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
59m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl      Container created
59m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl      Container started
59m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl      Container created
59m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
59m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl      Container started
57m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
40m   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container llama-server
40m   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl      Stopping container fastapi-proxy
40m   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-rfwgl
40m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
37m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb      Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
37m   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container fastapi-proxy
37m   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t      Stopping container llama-server
37m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-q65tb
37m   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
37m   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
37m   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
36m   Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
36m   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
36m   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
36m   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb      Container created
36m   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb      Container started
36m   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-x227f
35m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f      Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
35m   Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
35m   Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
35m   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m   Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
35m   Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
35m   Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
35m   Normal    Created                        pod/llm-proxy-7dc458997b-x227f      Container created
35m   Normal    Started                        pod/llm-proxy-7dc458997b-x227f      Container started
35m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f      Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
17m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
13m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
13m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
13m   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-q65tb
13m   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container fastapi-proxy
13m   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb      Stopping container llama-server
13m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
12m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-rcvws
12m   Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container fastapi-proxy
12m   Normal    Killing                        pod/llm-proxy-7dc458997b-x227f      Stopping container llama-server
12m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws      Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
12m   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
12m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
12m   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
12m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
12m   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
12m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
12m   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws      Container started
12m   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
12m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws      Container created
12m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
12m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
12m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
11m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
11m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
11m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx      Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
11m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-c67bx
11m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
11m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
11m   Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
11m   Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
11m   Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
10m   Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
10m   Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
10m   Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
10m   Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m   Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
10m   Normal    Created                        pod/llm-proxy-7dc458997b-c67bx      Container created
10m   Normal    Started                        pod/llm-proxy-7dc458997b-c67bx      Container started
10m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx      Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
run_end=1787561092
interrupted=0
