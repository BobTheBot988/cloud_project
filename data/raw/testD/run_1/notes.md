# scenario=testD run=1
collect_start=1787753609
interval_sec=20
run=1
run_start=1787753611
test=TestD(bursty)
low_users=2 high_users=12 normal_secs=120 burst_secs=60 cycles=2
target=http://3.226.221.138:30080 loadgen=ec2-user@100.31.47.73
runs_total=3
collect_stop=1787753988
--- events ---
23m     Normal    Starting                       node/ip-172-31-33-137.ec2.internal   
26m     Normal    Starting                       node/ip-172-31-40-80.ec2.internal    
22m     Normal    Starting                       node/ip-172-31-15-132.ec2.internal   
26m     Normal    NodeHasSufficientPID           node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasSufficientPID
26m     Normal    NodeHasNoDiskPressure          node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasNoDiskPressure
26m     Normal    NodeHasSufficientMemory        node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeHasSufficientMemory
26m     Normal    NodeAllocatableEnforced        node/ip-172-31-40-80.ec2.internal    Updated Node Allocatable limit across pods
26m     Warning   InvalidDiskCapacity            node/ip-172-31-40-80.ec2.internal    invalid capacity 0 on image filesystem
26m     Normal    Starting                       node/ip-172-31-40-80.ec2.internal    Starting kubelet.
26m     Normal    RegisteredNode                 node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal event: Registered Node ip-172-31-40-80.ec2.internal in Controller
26m     Normal    NodeReady                      node/ip-172-31-40-80.ec2.internal    Node ip-172-31-40-80.ec2.internal status is now: NodeReady
23m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasSufficientMemory
23m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-137.ec2.internal   Updated Node Allocatable limit across pods
23m     Normal    NodeHasSufficientPID           node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasSufficientPID
23m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeHasNoDiskPressure
23m     Normal    Starting                       node/ip-172-31-33-137.ec2.internal   Starting kubelet.
23m     Normal    RegisteredNode                 node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal event: Registered Node ip-172-31-33-137.ec2.internal in Controller
23m     Normal    NodeReady                      node/ip-172-31-33-137.ec2.internal   Node ip-172-31-33-137.ec2.internal status is now: NodeReady
22m     Normal    NodeHasSufficientMemory        node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasSufficientMemory
22m     Normal    NodeAllocatableEnforced        node/ip-172-31-15-132.ec2.internal   Updated Node Allocatable limit across pods
22m     Normal    NodeHasSufficientPID           node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasSufficientPID
22m     Normal    NodeHasNoDiskPressure          node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeHasNoDiskPressure
22m     Normal    RegisteredNode                 node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal event: Registered Node ip-172-31-15-132.ec2.internal in Controller
22m     Normal    NodeReady                      node/ip-172-31-15-132.ec2.internal   Node ip-172-31-15-132.ec2.internal status is now: NodeReady
17m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-l75rs       Successfully assigned default/llm-proxy-7dc458997b-l75rs to ip-172-31-15-132.ec2.internal
17m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-l75rs
17m     Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 0 to 1
17m     Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "curlimages/curl:8.21.0"
17m     Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
17m     Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
17m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "curlimages/curl:8.21.0" in 821ms (821ms including waiting). Image size: 10652192 bytes.
15m     Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
14m     Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
14m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.67s (12.67s including waiting). Image size: 309684515 bytes.
14m     Normal    Pulling                        pod/llm-proxy-7dc458997b-l75rs       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
14m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
14m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
14m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-l75rs       Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
14m     Normal    Started                        pod/llm-proxy-7dc458997b-l75rs       Container started
14m     Normal    Created                        pod/llm-proxy-7dc458997b-l75rs       Container created
14m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l75rs       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.268s (5.269s including waiting). Image size: 64753325 bytes.
14m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy    invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
14m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy    failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
5m47s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b      Created pod: llm-proxy-7dc458997b-45z8b
5m47s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-45z8b       Successfully assigned default/llm-proxy-7dc458997b-45z8b to ip-172-31-33-137.ec2.internal
5m47s   Normal    ScalingReplicaSet              deployment/llm-proxy                 Scaled up replica set llm-proxy-7dc458997b from 1 to 2
5m47s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy    New size: 2; reason: cpu resource utilization (percentage of request) above target
5m46s   Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "curlimages/curl:8.21.0"
5m44s   Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
5m44s   Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
5m44s   Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "curlimages/curl:8.21.0" in 1.235s (1.235s including waiting). Image size: 10652192 bytes.
3m52s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-l75rs       Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
3m33s   Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "ghcr.io/ggml-org/llama.cpp:server"
3m19s   Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.516s (14.516s including waiting). Image size: 309684515 bytes.
3m19s   Normal    Pulling                        pod/llm-proxy-7dc458997b-45z8b       Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m19s   Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
3m19s   Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
3m13s   Normal    Created                        pod/llm-proxy-7dc458997b-45z8b       Container created
3m13s   Normal    Pulled                         pod/llm-proxy-7dc458997b-45z8b       Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.029s (6.029s including waiting). Image size: 64753325 bytes.
3m12s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-45z8b       Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
3m12s   Normal    Started                        pod/llm-proxy-7dc458997b-45z8b       Container started
run_end=1787753988
interrupted=0
