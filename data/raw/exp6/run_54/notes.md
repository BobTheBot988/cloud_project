# scenario=exp6 run=54
collect_start=1787469163
interval_sec=60
run=54
run_start=1787469169
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787469330
--- events ---
31m     Normal    Starting                       node/ip-172-31-19-200.us-west-2.compute.internal   
31m     Normal    Starting                       node/ip-172-31-46-207.us-west-2.compute.internal   
29m     Normal    Starting                       node/ip-172-31-41-114.us-west-2.compute.internal   
32m     Normal    Starting                       node/ip-172-31-35-116.us-west-2.compute.internal   
33m     Normal    Starting                       node/ip-172-31-29-57.us-west-2.compute.internal    
30m     Normal    Starting                       node/ip-172-31-27-126.us-west-2.compute.internal   
36m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    
36m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    Starting kubelet.
36m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-58.us-west-2.compute.internal    Updated Node Allocatable limit across pods
36m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientMemory
36m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
36m     Normal    NodeHasSufficientPID           node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientPID
36m     Normal    RegisteredNode                 node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal event: Registered Node ip-172-31-22-58.us-west-2.compute.internal in Controller
36m     Normal    NodeReady                      node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeReady
33m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-57.us-west-2.compute.internal    Updated Node Allocatable limit across pods
33m     Normal    NodeHasSufficientPID           node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientPID
33m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
33m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientMemory
33m     Warning   InvalidDiskCapacity            node/ip-172-31-29-57.us-west-2.compute.internal    invalid capacity 0 on image filesystem
33m     Normal    RegisteredNode                 node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal event: Registered Node ip-172-31-29-57.us-west-2.compute.internal in Controller
33m     Normal    NodeReady                      node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeReady
32m     Warning   InvalidDiskCapacity            node/ip-172-31-35-116.us-west-2.compute.internal   invalid capacity 0 on image filesystem
32m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-116.us-west-2.compute.internal   Updated Node Allocatable limit across pods
32m     Normal    CIDRAssignmentFailed           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: CIDRAssignmentFailed
32m     Normal    NodeHasSufficientPID           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientPID
32m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
32m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientMemory
32m     Normal    RegisteredNode                 node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal event: Registered Node ip-172-31-35-116.us-west-2.compute.internal in Controller
32m     Normal    NodeReady                      node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeReady
32m     Warning   InvalidDiskCapacity            node/ip-172-31-19-200.us-west-2.compute.internal   invalid capacity 0 on image filesystem
32m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-200.us-west-2.compute.internal   Updated Node Allocatable limit across pods
32m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
32m     Normal    NodeHasSufficientPID           node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientPID
32m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientMemory
32m     Normal    RegisteredNode                 node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal event: Registered Node ip-172-31-19-200.us-west-2.compute.internal in Controller
31m     Normal    NodeReady                      node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeReady
31m     Normal    NodeAllocatableEnforced        node/ip-172-31-46-207.us-west-2.compute.internal   Updated Node Allocatable limit across pods
31m     Normal    NodeHasNoDiskPressure          node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
31m     Normal    NodeHasSufficientMemory        node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientMemory
31m     Normal    NodeHasSufficientPID           node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientPID
31m     Normal    RegisteredNode                 node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal event: Registered Node ip-172-31-46-207.us-west-2.compute.internal in Controller
31m     Normal    NodeReady                      node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeReady
30m     Normal    NodeHasSufficientPID           node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientPID
30m     Normal    NodeAllocatableEnforced        node/ip-172-31-27-126.us-west-2.compute.internal   Updated Node Allocatable limit across pods
30m     Normal    NodeHasNoDiskPressure          node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
30m     Normal    NodeHasSufficientMemory        node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientMemory
30m     Normal    RegisteredNode                 node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal event: Registered Node ip-172-31-27-126.us-west-2.compute.internal in Controller
30m     Normal    NodeReady                      node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeReady
29m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-114.us-west-2.compute.internal   Updated Node Allocatable limit across pods
29m     Warning   InvalidDiskCapacity            node/ip-172-31-41-114.us-west-2.compute.internal   invalid capacity 0 on image filesystem
29m     Normal    NodeHasSufficientPID           node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientPID
29m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
29m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientMemory
29m     Normal    RegisteredNode                 node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal event: Registered Node ip-172-31-41-114.us-west-2.compute.internal in Controller
29m     Normal    NodeReady                      node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeReady
28m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2                     Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
28m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
28m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-pbtz2
28m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "curlimages/curl:8.21.0"
28m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
28m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
28m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
27m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
27m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
27m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
27m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
27m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
27m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
27m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
27m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
27m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
20m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
20m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg                     Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
20m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
20m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "curlimages/curl:8.21.0"
20m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-79btg
20m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
20m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
20m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
20m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
20m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
20m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
20m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
20m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
19m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
19m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
19m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
18m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
18m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
18m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-r4b5d                     Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
18m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
18m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-ccwbz
18m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-r4b5d
18m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-ccwbz                     Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
18m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "curlimages/curl:8.21.0"
18m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "curlimages/curl:8.21.0"
18m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
18m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
18m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
18m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
18m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
18m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
17m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-ccwbz                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
17m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-r4b5d                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
15m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: cpu resource utilization (percentage of request) above target
15m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9lnw2                     Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
15m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
15m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-9lnw2
15m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "curlimages/curl:8.21.0"
15m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
15m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
15m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
15m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
15m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
15m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-cmt7h                     Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
15m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-cmt7h
15m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "curlimages/curl:8.21.0"
15m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
15m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
15m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
15m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
14m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-cmt7h                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
14m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9lnw2                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
2m40s   Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
2m40s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m39s   Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
run_end=1787469330
interrupted=0
