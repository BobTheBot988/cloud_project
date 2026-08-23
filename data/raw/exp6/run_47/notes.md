# scenario=exp6 run=47
collect_start=1787468017
interval_sec=60
run=47
run_start=1787468021
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787468179
--- events ---
12m     Normal    Starting                       node/ip-172-31-19-200.us-west-2.compute.internal   
16m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    
12m     Normal    Starting                       node/ip-172-31-46-207.us-west-2.compute.internal   
13m     Normal    Starting                       node/ip-172-31-35-116.us-west-2.compute.internal   
14m     Normal    Starting                       node/ip-172-31-29-57.us-west-2.compute.internal    
11m     Normal    Starting                       node/ip-172-31-27-126.us-west-2.compute.internal   
10m     Normal    Starting                       node/ip-172-31-41-114.us-west-2.compute.internal   
17m     Normal    NodeHasSufficientPID           node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientPID
17m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    Starting kubelet.
17m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-58.us-west-2.compute.internal    Updated Node Allocatable limit across pods
17m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientMemory
17m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
17m     Normal    RegisteredNode                 node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal event: Registered Node ip-172-31-22-58.us-west-2.compute.internal in Controller
16m     Normal    NodeReady                      node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeReady
14m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientMemory
14m     Warning   InvalidDiskCapacity            node/ip-172-31-29-57.us-west-2.compute.internal    invalid capacity 0 on image filesystem
14m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-57.us-west-2.compute.internal    Updated Node Allocatable limit across pods
14m     Normal    NodeHasSufficientPID           node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientPID
14m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
14m     Normal    RegisteredNode                 node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal event: Registered Node ip-172-31-29-57.us-west-2.compute.internal in Controller
14m     Normal    NodeReady                      node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeReady
13m     Warning   InvalidDiskCapacity            node/ip-172-31-35-116.us-west-2.compute.internal   invalid capacity 0 on image filesystem
13m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientMemory
13m     Normal    CIDRAssignmentFailed           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: CIDRAssignmentFailed
13m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-116.us-west-2.compute.internal   Updated Node Allocatable limit across pods
13m     Normal    NodeHasSufficientPID           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientPID
13m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
13m     Normal    RegisteredNode                 node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal event: Registered Node ip-172-31-35-116.us-west-2.compute.internal in Controller
13m     Normal    NodeReady                      node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeReady
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-200.us-west-2.compute.internal   Updated Node Allocatable limit across pods
12m     Warning   InvalidDiskCapacity            node/ip-172-31-19-200.us-west-2.compute.internal   invalid capacity 0 on image filesystem
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Normal    NodeHasSufficientPID           node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    RegisteredNode                 node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal event: Registered Node ip-172-31-19-200.us-west-2.compute.internal in Controller
12m     Normal    NodeReady                      node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeReady
12m     Normal    NodeHasNoDiskPressure          node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
12m     Normal    NodeHasSufficientMemory        node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientMemory
12m     Normal    NodeAllocatableEnforced        node/ip-172-31-46-207.us-west-2.compute.internal   Updated Node Allocatable limit across pods
12m     Normal    NodeHasSufficientPID           node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientPID
12m     Normal    RegisteredNode                 node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal event: Registered Node ip-172-31-46-207.us-west-2.compute.internal in Controller
11m     Normal    NodeReady                      node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeReady
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-27-126.us-west-2.compute.internal   Updated Node Allocatable limit across pods
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasSufficientPID           node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
11m     Normal    RegisteredNode                 node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal event: Registered Node ip-172-31-27-126.us-west-2.compute.internal in Controller
11m     Normal    NodeReady                      node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeReady
10m     Warning   InvalidDiskCapacity            node/ip-172-31-41-114.us-west-2.compute.internal   invalid capacity 0 on image filesystem
10m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-114.us-west-2.compute.internal   Updated Node Allocatable limit across pods
10m     Normal    NodeHasSufficientPID           node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientPID
10m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
10m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientMemory
10m     Normal    RegisteredNode                 node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal event: Registered Node ip-172-31-41-114.us-west-2.compute.internal in Controller
10m     Normal    NodeReady                      node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeReady
9m19s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2                     Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
9m19s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
9m19s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-pbtz2
9m18s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "curlimages/curl:8.21.0"
9m16s   Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
9m16s   Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
9m16s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
8m42s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
8m23s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
8m23s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
8m23s   Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
8m23s   Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
8m15s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
8m15s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
8m15s   Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
8m15s   Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
8m4s    Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
8m4s    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
108s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
108s    Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg                     Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
108s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
108s    Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-79btg
108s    Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "curlimages/curl:8.21.0"
106s    Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
106s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
106s    Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
73s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
54s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
54s     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
54s     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
48s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
48s     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
48s     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
48s     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
run_end=1787468179
interrupted=0
