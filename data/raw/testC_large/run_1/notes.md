# scenario=testC_large run=1
collect_start=1787560372
interval_sec=60
run=1
run_start=1787560374
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787560516
--- events ---
54m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
57m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
54m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
57m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
57m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
57m     Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
57m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
57m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
57m     Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
57m     Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
55m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
55m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
55m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
55m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
55m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
54m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
54m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
54m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
54m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
54m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
54m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
54m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
53m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
53m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
53m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
53m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
53m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
53m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
53m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
53m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
53m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
53m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
53m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
53m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
52m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
52m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
52m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
50m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
50m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
50m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
50m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
50m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
50m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
49m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
49m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
49m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
49m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
49m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
49m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
48m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
30m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
30m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
30m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
27m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb       Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
27m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container fastapi-proxy
27m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-q65tb
27m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container llama-server
27m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
27m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
27m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
27m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
27m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
27m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
27m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
27m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
27m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
27m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
27m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
26m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-x227f
26m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f       Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
26m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
26m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
26m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
25m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
25m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
25m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
25m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
25m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
25m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
25m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
25m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f       Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
7m29s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m10s   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container llama-server
4m10s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
4m10s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
4m10s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-q65tb
4m10s   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container fastapi-proxy
3m44s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
3m1s    Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws       Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
3m1s    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rcvws
3m1s    Normal    Killing                        pod/llm-proxy-7dc458997b-x227f       Stopping container fastapi-proxy
3m1s    Normal    Killing                        pod/llm-proxy-7dc458997b-x227f       Stopping container llama-server
3m      Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
3m      Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
3m      Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
2m35s   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
2m35s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m35s   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
2m35s   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
2m35s   Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
2m35s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
2m35s   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
2m34s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws       Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
2m25s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m25s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m10s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
2m10s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
100s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
100s    Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx       Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
100s    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-c67bx
100s    Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
99s     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
99s     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
99s     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
78s     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
78s     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
77s     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
77s     Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
77s     Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
77s     Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
77s     Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
77s     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx       Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
run_end=1787560516
interrupted=0
