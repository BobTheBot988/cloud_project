# scenario=testC_medium run=10
collect_start=1787560190
interval_sec=60
run=10
run_start=1787560192
scenario=testC_medium
test=TestB(steady)
level_users=20 steady_min=2 size=medium
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787560333
--- events ---
54m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
51m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
51m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
54m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
54m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
54m     Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
54m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
54m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
54m     Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
54m     Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
52m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
52m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
52m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
52m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
52m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
51m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
51m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
51m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
51m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
51m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
50m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
50m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
50m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
50m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
50m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
50m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
50m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
50m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
50m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
50m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
50m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
50m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
49m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
49m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
47m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
47m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
47m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
47m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
47m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
46m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
46m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
46m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
46m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
46m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
46m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
46m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
45m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
27m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
27m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
27m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
27m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
24m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb       Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
24m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container fastapi-proxy
24m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container llama-server
24m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-q65tb
24m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
24m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
24m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
24m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
24m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
24m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
24m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
24m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
24m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
24m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
24m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
23m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
23m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
23m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
23m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
22m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-x227f
22m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f       Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
22m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
22m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
22m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
22m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
22m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
22m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
22m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
22m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
22m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
22m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
22m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
22m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
22m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f       Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
4m26s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
67s     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container fastapi-proxy
67s     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-q65tb
67s     Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container llama-server
67s     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
67s     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
41s     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
run_end=1787560333
interrupted=0
