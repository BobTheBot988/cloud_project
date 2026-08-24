# scenario=testC_large run=3
collect_start=1787560659
interval_sec=60
run=3
run_start=1787560661
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=2 size=large
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787560805
--- events ---
59m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
59m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
59m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
59m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
59m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
59m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
59m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
59m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
59m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
59m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
59m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
59m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
59m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
59m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
58m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
58m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
58m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
58m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
58m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
58m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
58m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
58m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
57m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
57m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
57m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
57m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
57m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
57m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
57m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
55m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
55m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
55m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
55m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
54m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
54m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
54m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
54m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
54m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
54m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
54m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
53m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
35m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
35m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
35m     Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
32m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-q65tb
32m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb       Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
32m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container llama-server
32m     Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container fastapi-proxy
32m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
32m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
32m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
32m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
31m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
30m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f       Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
30m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-x227f
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
30m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f       Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
12m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
8m58s   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container llama-server
8m58s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
8m58s   Normal    Killing                        pod/llm-proxy-7dc458997b-q65tb       Stopping container fastapi-proxy
8m58s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-q65tb
8m58s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
8m32s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
7m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-x227f       Stopping container fastapi-proxy
7m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-x227f       Stopping container llama-server
7m49s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-rcvws       Successfully assigned default/llm-proxy-7dc458997b-rcvws to ip-172-31-39-185.ec2.internal
7m49s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rcvws
7m48s   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
7m48s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m48s   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
7m23s   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
7m23s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m23s   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
7m23s   Normal    Started                        pod/llm-proxy-7dc458997b-rcvws       Container started
7m23s   Normal    Pulling                        pod/llm-proxy-7dc458997b-rcvws       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m23s   Normal    Pulled                         pod/llm-proxy-7dc458997b-rcvws       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 313ms (313ms including waiting). Image size: 64753325 bytes.
7m23s   Normal    Created                        pod/llm-proxy-7dc458997b-rcvws       Container created
7m22s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rcvws       Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
7m13s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m13s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6m58s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
6m58s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
6m28s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-c67bx
6m28s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
6m28s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
6m28s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-c67bx       Successfully assigned default/llm-proxy-7dc458997b-c67bx to ip-172-31-13-209.ec2.internal
6m27s   Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
6m27s   Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
6m27s   Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
6m6s    Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m6s    Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
6m5s    Normal    Created                        pod/llm-proxy-7dc458997b-c67bx       Container created
6m5s    Normal    Pulled                         pod/llm-proxy-7dc458997b-c67bx       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
6m5s    Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
6m5s    Normal    Pulling                        pod/llm-proxy-7dc458997b-c67bx       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m5s    Normal    Started                        pod/llm-proxy-7dc458997b-c67bx       Container started
6m5s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c67bx       Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
run_end=1787560805
interrupted=0
