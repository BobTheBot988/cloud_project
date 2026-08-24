# scenario=testC_small run=9
collect_start=1787558580
interval_sec=60
run=9
run_start=1787558583
scenario=testC_small
test=TestB(steady)
level_users=20 steady_min=2 size=small
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787558723
--- events ---
27m   Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
24m   Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
25m   Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
27m   Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
27m   Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
27m   Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
27m   Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
27m   Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
27m   Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
27m   Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
25m   Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
25m   Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
25m   Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
25m   Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
25m   Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
25m   Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
24m   Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
24m   Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
24m   Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
24m   Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
24m   Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
24m   Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
24m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
24m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
24m   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
24m   Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
24m   Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
24m   Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
24m   Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
23m   Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
23m   Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
23m   Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
23m   Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
23m   Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
23m   Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
23m   Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
23m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
23m   Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
22m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
22m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
22m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
22m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
20m   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
20m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
20m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
20m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
20m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
20m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
19m   Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
53s   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
53s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
53s   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
53s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
53s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
31s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787558723
interrupted=0
