# scenario=testD run=3
collect_start=1787754366
interval_sec=20
run=3
run_start=1787754368
test=TestD(bursty)
low_users=2 high_users=12 normal_secs=120 burst_secs=60 cycles=2
target=http://3.226.221.138:30080 loadgen=ec2-user@100.31.47.73
runs_total=3
collect_stop=1787754744
--- events ---
35m    Normal    Starting                       node/ip-172-31-33-137.ec2.internal   
38m    Normal    Starting                       node/ip-172-31-40-80.ec2.internal    
35m    Normal    Starting                       node/ip-172-31-15-132.ec2.internal   
38m    Normal    NodeHasSufficientPID           node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasSufficientPID
38m    Normal    NodeHasNoDiskPressure          node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasNoDiskPressure
38m    Normal    NodeHasSufficientMemory        node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasSufficientMemory
38m    Normal    NodeAllocatableEnforced        node/ip-172-31-40-80.ec2.internal    Updated Node Allocatable limit across pods
38m    Warning   InvalidDiskCapacity            node/ip-172-31-40-80.ec2.internal    invalid capacity 0 on image filesystem
38m    Normal    Starting                       node/ip-172-31-40-80.ec2.internal    Starting kubelet.
38m    Normal    RegisteredNode                 node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal event: Registered Node ip-172-31-40-80.ec2.internal in Controller
38m    Normal    NodeReady                      node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeReady
36m    Normal    NodeHasSufficientMemory        node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasSufficientMemory
36m    Normal    NodeAllocatableEnforced        node/ip-172-31-33-137.ec2.internal   Updated Node Allocatable limit across pods
36m    Normal    NodeHasSufficientPID           node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasSufficientPID
36m    Normal    NodeHasNoDiskPressure          node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasNoDiskPressure
36m    Normal    Starting                       node/ip-172-31-33-137.ec2.internal   Starting kubelet.
36m    Normal    RegisteredNode                 node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal event: Registered Node ip-172-31-33-137.ec2.internal in Controller
35m    Normal    NodeReady                      node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeReady
35m    Normal    NodeHasSufficientMemory        node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasSufficientMemory
35m    Normal    NodeAllocatableEnforced        node/ip-172-31-15-132.ec2.internal   Updated Node Allocatable limit across pods
35m    Normal    NodeHasSufficientPID           node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasSufficientPID
35m    Normal    NodeHasNoDiskPressure          node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasNoDiskPressure
35m    Normal    RegisteredNode                 node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal event: Registered Node ip-172-31-15-132.ec2.internal in Controller
35m    Normal    NodeReady                      node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeReady
29m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-l75rs       Successfully assigned default/llm-proxy-7dc458997b-l75rs to ip-172-31-15-132.ec2.internal
29m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-l75rs
29m    Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
29m    Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "curlimages/curl:8.21.0"
29m    Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
29m    Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
29m    Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "curlimages/curl:8.21.0" in 821ms (821ms including waiting). Image size: 10652192 bytes.
27m    Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
27m    Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.67s (12.67s including waiting). Image size: 309684515 bytes.
27m    Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
27m    Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
27m    Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
27m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-l75rs       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
27m    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
27m    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
27m    Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
27m    Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
27m    Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.268s (5.269s including waiting). Image size: 64753325 bytes.
27m    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
27m    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
18m    Normal    Scheduled                      pod/llm-proxy-7dc458997b-45z8b       Successfully assigned default/llm-proxy-7dc458997b-45z8b to ip-172-31-33-137.ec2.internal
18m    Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-45z8b
18m    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
18m    Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
18m    Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "curlimages/curl:8.21.0"
18m    Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "curlimages/curl:8.21.0" in 1.235s (1.235s including waiting). Image size: 10652192 bytes.
18m    Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
18m    Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
16m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-l75rs       Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
16m    Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
15m    Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.516s (14.516s including waiting). Image size: 309684515 bytes.
15m    Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m    Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
15m    Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
15m    Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
15m    Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.029s (6.029s including waiting). Image size: 64753325 bytes.
15m    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-45z8b       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
15m    Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
7m2s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-45z8b       Readiness probe failed: Get "http://10.244.1.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787754744
interrupted=0
