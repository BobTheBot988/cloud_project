# scenario=testC_small run=4
collect_start=1787557867
interval_sec=60
run=4
run_start=1787557869
scenario=testC_small
test=TestB(steady)
level_users=20 steady_min=2 size=small
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787558010
--- events ---
15m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
12m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
13m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
15m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
15m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
15m     Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
15m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
15m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
15m     Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
15m     Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
13m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
13m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
13m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
13m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
13m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
13m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
12m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
12m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
12m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
12m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
12m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
12m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
12m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
12m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
12m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
11m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
11m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
11m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
11m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
11m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
11m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
11m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
11m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
11m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
11m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
11m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
10m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
10m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
8m49s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
8m49s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
8m49s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
8m49s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
8m48s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
8m48s   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
8m48s   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
8m48s   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
8m7s    Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
7m53s   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
7m53s   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m53s   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
7m53s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
7m48s   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
7m48s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
7m48s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
7m48s   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
6m33s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787558010
interrupted=0
