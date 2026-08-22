# scenario=testB run=24
collect_start=1787394495
interval_sec=60
run=24
run_start=1787394498
test=TestB(steady)
level_users=50 steady_min=6 size=mix
target=http://172.31.19.238:30080 loadgen=ec2-user@35.89.244.187
runs_total=5
collect_stop=1787394884
--- events ---
15m     Normal    Starting                       node/ip-172-31-19-238.us-west-2.compute.internal   
12m     Normal    Starting                       node/ip-172-31-24-181.us-west-2.compute.internal   
12m     Normal    Starting                       node/ip-172-31-36-43.us-west-2.compute.internal    
15m     Normal    Starting                       node/ip-172-31-19-238.us-west-2.compute.internal   Starting kubelet.
15m     Warning   InvalidDiskCapacity            node/ip-172-31-19-238.us-west-2.compute.internal   invalid capacity 0 on image filesystem
15m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasSufficientMemory
15m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
15m     Normal    NodeHasSufficientPID           node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasSufficientPID
15m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-238.us-west-2.compute.internal   Updated Node Allocatable limit across pods
15m     Normal    Starting                       node/ip-172-31-19-238.us-west-2.compute.internal   Starting kubelet.
15m     Warning   InvalidDiskCapacity            node/ip-172-31-19-238.us-west-2.compute.internal   invalid capacity 0 on image filesystem
15m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-238.us-west-2.compute.internal   Updated Node Allocatable limit across pods
15m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasSufficientMemory
15m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
15m     Normal    NodeHasSufficientPID           node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeHasSufficientPID
15m     Normal    RegisteredNode                 node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal event: Registered Node ip-172-31-19-238.us-west-2.compute.internal in Controller
15m     Normal    NodeReady                      node/ip-172-31-19-238.us-west-2.compute.internal   Node ip-172-31-19-238.us-west-2.compute.internal status is now: NodeReady
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-24-181.us-west-2.compute.internal   Node ip-172-31-24-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-24-181.us-west-2.compute.internal   Node ip-172-31-24-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientPID           node/ip-172-31-24-181.us-west-2.compute.internal   Node ip-172-31-24-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-24-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
12m     Normal    RegisteredNode                 node/ip-172-31-24-181.us-west-2.compute.internal   Node ip-172-31-24-181.us-west-2.compute.internal event: Registered Node ip-172-31-24-181.us-west-2.compute.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-24-181.us-west-2.compute.internal   Node ip-172-31-24-181.us-west-2.compute.internal status is now: NodeReady
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-36-43.us-west-2.compute.internal    Updated Node Allocatable limit across pods
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-36-43.us-west-2.compute.internal    Node ip-172-31-36-43.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-36-43.us-west-2.compute.internal    Node ip-172-31-36-43.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Normal    NodeHasSufficientPID           node/ip-172-31-36-43.us-west-2.compute.internal    Node ip-172-31-36-43.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    RegisteredNode                 node/ip-172-31-36-43.us-west-2.compute.internal    Node ip-172-31-36-43.us-west-2.compute.internal event: Registered Node ip-172-31-36-43.us-west-2.compute.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-36-43.us-west-2.compute.internal    Node ip-172-31-36-43.us-west-2.compute.internal status is now: NodeReady
11m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-df2r7                     Successfully assigned default/llm-proxy-857bf6d79d-df2r7 to ip-172-31-36-43.us-west-2.compute.internal
11m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-df2r7                     Pulling image "curlimages/curl:8.21.0"
11m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-df2r7
11m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
11m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-df2r7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.621s (1.621s including waiting). Image size: 10652192 bytes.
11m     Normal    Started                        pod/llm-proxy-857bf6d79d-df2r7                     Container started
11m     Normal    Created                        pod/llm-proxy-857bf6d79d-df2r7                     Container created
10m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-df2r7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-df2r7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.63s (17.63s including waiting). Image size: 307683482 bytes.
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-df2r7                     Container created
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-df2r7                     Container started
10m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-df2r7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-df2r7                     Container started
10m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-df2r7                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-df2r7                     Container created
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-df2r7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64752814 bytes.
10m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy                  invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
10m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
5m47s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-kfbwq
5m47s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-kfbwq                     Successfully assigned default/llm-proxy-857bf6d79d-kfbwq to ip-172-31-24-181.us-west-2.compute.internal
5m47s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
5m47s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy                  New size: 2; reason: cpu resource utilization (percentage of request) above target
5m46s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-kfbwq                     Pulling image "curlimages/curl:8.21.0"
5m44s   Normal    Started                        pod/llm-proxy-857bf6d79d-kfbwq                     Container started
5m44s   Normal    Created                        pod/llm-proxy-857bf6d79d-kfbwq                     Container created
5m44s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-kfbwq                     Successfully pulled image "curlimages/curl:8.21.0" in 1.75s (1.75s including waiting). Image size: 10652192 bytes.
4m52s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-kfbwq                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
4m33s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-kfbwq                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m33s   Normal    Started                        pod/llm-proxy-857bf6d79d-kfbwq                     Container started
4m33s   Normal    Created                        pod/llm-proxy-857bf6d79d-kfbwq                     Container created
4m33s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-kfbwq                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.166s (19.166s including waiting). Image size: 307683482 bytes.
4m26s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-kfbwq                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.477s (6.477s including waiting). Image size: 64752814 bytes.
4m26s   Normal    Created                        pod/llm-proxy-857bf6d79d-kfbwq                     Container created
4m26s   Normal    Started                        pod/llm-proxy-857bf6d79d-kfbwq                     Container started
4m26s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-kfbwq                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
run_end=1787394884
interrupted=0
