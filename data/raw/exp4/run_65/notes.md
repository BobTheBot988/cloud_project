# scenario=exp4 run=65
collect_start=1787442966
interval_sec=60
run=65
run_start=1787442970
scenario=exp4
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787443136
--- events ---
12m     Normal    Starting                       node/ip-172-31-17-227.us-west-2.compute.internal   
10m     Normal    Starting                       node/ip-172-31-39-155.us-west-2.compute.internal   
13m     Normal    Starting                       node/ip-172-31-35-139.us-west-2.compute.internal   
14m     Normal    Starting                       node/ip-172-31-16-97.us-west-2.compute.internal    
17m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    
12m     Normal    Starting                       node/ip-172-31-33-225.us-west-2.compute.internal   
11m     Normal    Starting                       node/ip-172-31-16-197.us-west-2.compute.internal   
17m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
17m     Warning   InvalidDiskCapacity            node/ip-172-31-28-81.us-west-2.compute.internal    invalid capacity 0 on image filesystem
17m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
17m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
17m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
17m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
17m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
17m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
17m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
17m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
17m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
17m     Normal    RegisteredNode                 node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal event: Registered Node ip-172-31-28-81.us-west-2.compute.internal in Controller
17m     Normal    NodeReady                      node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeReady
14m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-97.us-west-2.compute.internal    Updated Node Allocatable limit across pods
14m     Warning   InvalidDiskCapacity            node/ip-172-31-16-97.us-west-2.compute.internal    invalid capacity 0 on image filesystem
14m     Normal    NodeHasSufficientPID           node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientPID
14m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
14m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientMemory
14m     Normal    RegisteredNode                 node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal event: Registered Node ip-172-31-16-97.us-west-2.compute.internal in Controller
14m     Normal    NodeReady                      node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeReady
13m     Warning   InvalidDiskCapacity            node/ip-172-31-35-139.us-west-2.compute.internal   invalid capacity 0 on image filesystem
13m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-139.us-west-2.compute.internal   Updated Node Allocatable limit across pods
13m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
13m     Normal    RegisteredNode                 node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal event: Registered Node ip-172-31-35-139.us-west-2.compute.internal in Controller
13m     Normal    NodeHasSufficientPID           node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientPID
13m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientMemory
13m     Normal    NodeReady                      node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeReady
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-17-227.us-west-2.compute.internal   Updated Node Allocatable limit across pods
12m     Normal    NodeHasSufficientPID           node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Warning   InvalidDiskCapacity            node/ip-172-31-17-227.us-west-2.compute.internal   invalid capacity 0 on image filesystem
12m     Normal    RegisteredNode                 node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal event: Registered Node ip-172-31-17-227.us-west-2.compute.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeReady
12m     Warning   InvalidDiskCapacity            node/ip-172-31-33-225.us-west-2.compute.internal   invalid capacity 0 on image filesystem
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
12m     Normal    NodeHasSufficientPID           node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Normal    RegisteredNode                 node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal event: Registered Node ip-172-31-33-225.us-west-2.compute.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeReady
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-197.us-west-2.compute.internal   Updated Node Allocatable limit across pods
11m     Warning   InvalidDiskCapacity            node/ip-172-31-16-197.us-west-2.compute.internal   invalid capacity 0 on image filesystem
11m     Normal    NodeHasSufficientPID           node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientMemory
11m     Normal    RegisteredNode                 node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal event: Registered Node ip-172-31-16-197.us-west-2.compute.internal in Controller
11m     Normal    NodeReady                      node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeReady
10m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
10m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
10m     Normal    NodeHasSufficientPID           node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
10m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
10m     Warning   InvalidDiskCapacity            node/ip-172-31-39-155.us-west-2.compute.internal   invalid capacity 0 on image filesystem
10m     Normal    RegisteredNode                 node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal event: Registered Node ip-172-31-39-155.us-west-2.compute.internal in Controller
10m     Normal    NodeReady                      node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeReady
8m46s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7                     Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
8m46s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
8m46s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-l4sc7
8m45s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "curlimages/curl:8.21.0"
8m44s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
8m44s   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
8m44s   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
7m56s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
7m39s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
7m38s   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
7m38s   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
7m38s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m33s   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
7m33s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
7m33s   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
7m33s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
7m16s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m16s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
105s    Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr                     Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
105s    Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "curlimages/curl:8.21.0"
105s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
105s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
105s    Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-z8vvr
103s    Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
103s    Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
103s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
55s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
42s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
42s     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
42s     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
42s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
36s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
36s     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
36s     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
36s     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
run_end=1787443136
interrupted=0
