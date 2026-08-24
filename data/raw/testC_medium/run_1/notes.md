# scenario=testC_medium run=1
collect_start=1787558902
interval_sec=60
run=1
run_start=1787558904
scenario=testC_medium
test=TestB(steady)
level_users=20 steady_min=2 size=medium
target=http://52.72.252.177:30080 loadgen=ec2-user@3.90.17.85
runs_total=10
collect_stop=1787559045
--- events ---
33m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    
29m     Normal    Starting                       node/ip-172-31-13-209.ec2.internal   
30m     Normal    Starting                       node/ip-172-31-39-185.ec2.internal   
33m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-87.ec2.internal    Updated Node Allocatable limit across pods
33m     Normal    Starting                       node/ip-172-31-44-87.ec2.internal    Starting kubelet.
33m     Normal    NodeHasSufficientPID           node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientPID
33m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasNoDiskPressure
33m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeHasSufficientMemory
33m     Normal    RegisteredNode                 node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal event: Registered Node ip-172-31-44-87.ec2.internal in Controller
33m     Normal    NodeReady                      node/ip-172-31-44-87.ec2.internal    Node ip-172-31-44-87.ec2.internal status is now: NodeReady
30m     Normal    RegisteredNode                 node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal event: Registered Node ip-172-31-39-185.ec2.internal in Controller
30m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientMemory
30m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-185.ec2.internal   Updated Node Allocatable limit across pods
30m     Normal    NodeHasSufficientPID           node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasSufficientPID
30m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeHasNoDiskPressure
30m     Normal    NodeReady                      node/ip-172-31-39-185.ec2.internal   Node ip-172-31-39-185.ec2.internal status is now: NodeReady
29m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasNoDiskPressure
29m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-209.ec2.internal   Updated Node Allocatable limit across pods
29m     Normal    NodeHasSufficientPID           node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientPID
29m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeHasSufficientMemory
29m     Normal    RegisteredNode                 node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal event: Registered Node ip-172-31-13-209.ec2.internal in Controller
29m     Normal    NodeReady                      node/ip-172-31-13-209.ec2.internal   Node ip-172-31-13-209.ec2.internal status is now: NodeReady
29m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-j829t
29m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
29m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j829t       Successfully assigned default/llm-proxy-7dc458997b-j829t to ip-172-31-13-209.ec2.internal
29m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "curlimages/curl:8.21.0"
29m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "curlimages/curl:8.21.0" in 809ms (809ms including waiting). Image size: 10652192 bytes.
29m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
29m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
28m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
28m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.687s (14.687s including waiting). Image size: 307240416 bytes.
28m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
28m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
28m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j829t       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
28m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j829t       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.065s (6.065s including waiting). Image size: 64753325 bytes.
28m     Normal    Created                        pod/llm-proxy-7dc458997b-j829t       Container created
28m     Normal    Started                        pod/llm-proxy-7dc458997b-j829t       Container started
26m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rfwgl       Successfully assigned default/llm-proxy-7dc458997b-rfwgl to ip-172-31-39-185.ec2.internal
26m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-rfwgl
26m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "curlimages/curl:8.21.0"
26m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
26m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
26m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "curlimages/curl:8.21.0" in 784ms (784ms including waiting). Image size: 10652192 bytes.
25m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
25m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.306s (13.306s including waiting). Image size: 307240416 bytes.
25m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
25m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
25m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rfwgl       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
25m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rfwgl       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.101s (5.101s including waiting). Image size: 64753325 bytes.
25m     Normal    Created                        pod/llm-proxy-7dc458997b-rfwgl       Container created
25m     Normal    Started                        pod/llm-proxy-7dc458997b-rfwgl       Container started
23m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
6m15s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled down replica set llm-proxy-7dc458997b from 2 to 1
6m15s   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container fastapi-proxy
6m15s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b      Deleted pod: llm-proxy-7dc458997b-rfwgl
6m15s   Normal    Killing                        pod/llm-proxy-7dc458997b-rfwgl       Stopping container llama-server
6m15s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 1; reason: All metrics below target
5m53s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rfwgl       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
2m57s   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container fastapi-proxy
2m57s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-q65tb       Successfully assigned default/llm-proxy-7dc458997b-q65tb to ip-172-31-39-185.ec2.internal
2m57s   Normal    Killing                        pod/llm-proxy-7dc458997b-j829t       Stopping container llama-server
2m57s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-q65tb
2m56s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
2m56s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
2m56s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
2m55s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j829t       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
2m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 117ms (117ms including waiting). Image size: 64753325 bytes.
2m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-q65tb       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m34s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
2m34s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
2m34s   Normal    Pulling                        pod/llm-proxy-7dc458997b-q65tb       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
2m34s   Normal    Created                        pod/llm-proxy-7dc458997b-q65tb       Container created
2m34s   Normal    Started                        pod/llm-proxy-7dc458997b-q65tb       Container started
2m33s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-q65tb       Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
2m15s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m15s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
2m      Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
2m      Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
90s     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-x227f
90s     Normal    Scheduled                      pod/llm-proxy-7dc458997b-x227f       Successfully assigned default/llm-proxy-7dc458997b-x227f to ip-172-31-13-209.ec2.internal
90s     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
90s     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
89s     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
89s     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
89s     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
56s     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
56s     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
56s     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
56s     Normal    Pulled                         pod/llm-proxy-7dc458997b-x227f       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 137ms (137ms including waiting). Image size: 64753325 bytes.
56s     Normal    Pulling                        pod/llm-proxy-7dc458997b-x227f       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
56s     Normal    Created                        pod/llm-proxy-7dc458997b-x227f       Container created
56s     Normal    Started                        pod/llm-proxy-7dc458997b-x227f       Container started
55s     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-x227f       Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
run_end=1787559045
interrupted=0
