# scenario=testC_medium run=3
collect_start=1787559188
interval_sec=60
run=3
run_start=1787559190
scenario=testC_medium
test=TestB(steady)
level_users=20 steady_min=2 size=medium
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787559331
--- events ---
37m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
34m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
35m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
37m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
37m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
37m     Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
37m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
37m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
37m     Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
37m     Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
35m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
35m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
35m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
35m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
35m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
35m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
34m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
34m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
34m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
34m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
34m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
34m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
34m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
33m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
33m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
33m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
33m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
33m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
30m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
30m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
30m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
29m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
29m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
29m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
29m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
29m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
29m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
29m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
28m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
11m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
11m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
11m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
11m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
11m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
10m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
7m43s   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container fastapi-proxy
7m43s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb       Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
7m43s   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container llama-server
7m43s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-q65tb
7m42s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
7m42s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m42s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
7m41s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
7m20s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
7m20s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m20s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
7m20s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
7m20s   Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m20s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
7m20s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
7m19s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
7m1s    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m1s    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6m46s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
6m46s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
6m16s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-x227f
6m16s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f       Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
6m16s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
6m16s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
6m15s   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
6m15s   Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
6m15s   Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
5m42s   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m42s   Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
5m42s   Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
5m42s   Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
5m42s   Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m42s   Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
5m42s   Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
5m41s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f       Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
run_end=1787559331
interrupted=0
