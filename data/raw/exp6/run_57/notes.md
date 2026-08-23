# scenario=exp6 run=57
collect_start=1787470137
interval_sec=60
run=57
run_start=1787470141
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787470302
--- events ---
52m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    
49m     Normal    Starting                       node/ip-172-31-29-57.us-west-2.compute.internal    
46m     Normal    Starting                       node/ip-172-31-27-126.us-west-2.compute.internal   
48m     Normal    Starting                       node/ip-172-31-35-116.us-west-2.compute.internal   
46m     Normal    Starting                       node/ip-172-31-41-114.us-west-2.compute.internal   
47m     Normal    Starting                       node/ip-172-31-46-207.us-west-2.compute.internal   
48m     Normal    Starting                       node/ip-172-31-19-200.us-west-2.compute.internal   
52m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-58.us-west-2.compute.internal    Updated Node Allocatable limit across pods
52m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientMemory
52m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
52m     Normal    NodeHasSufficientPID           node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientPID
52m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    Starting kubelet.
52m     Normal    RegisteredNode                 node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal event: Registered Node ip-172-31-22-58.us-west-2.compute.internal in Controller
52m     Normal    NodeReady                      node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeReady
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-57.us-west-2.compute.internal    Updated Node Allocatable limit across pods
49m     Normal    NodeHasSufficientPID           node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Warning   InvalidDiskCapacity            node/ip-172-31-29-57.us-west-2.compute.internal    invalid capacity 0 on image filesystem
49m     Normal    RegisteredNode                 node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal event: Registered Node ip-172-31-29-57.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeReady
49m     Warning   InvalidDiskCapacity            node/ip-172-31-35-116.us-west-2.compute.internal   invalid capacity 0 on image filesystem
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientPID           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-116.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Normal    CIDRAssignmentFailed           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: CIDRAssignmentFailed
48m     Normal    RegisteredNode                 node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal event: Registered Node ip-172-31-35-116.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeReady
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-200.us-west-2.compute.internal   Updated Node Allocatable limit across pods
48m     Warning   InvalidDiskCapacity            node/ip-172-31-19-200.us-west-2.compute.internal   invalid capacity 0 on image filesystem
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    NodeHasSufficientPID           node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    RegisteredNode                 node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal event: Registered Node ip-172-31-19-200.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeReady
47m     Normal    NodeHasNoDiskPressure          node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
47m     Normal    NodeHasSufficientMemory        node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientMemory
47m     Normal    NodeAllocatableEnforced        node/ip-172-31-46-207.us-west-2.compute.internal   Updated Node Allocatable limit across pods
47m     Normal    NodeHasSufficientPID           node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientPID
47m     Normal    RegisteredNode                 node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal event: Registered Node ip-172-31-46-207.us-west-2.compute.internal in Controller
47m     Normal    NodeReady                      node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeReady
46m     Normal    NodeHasSufficientPID           node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-27-126.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Normal    RegisteredNode                 node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal event: Registered Node ip-172-31-27-126.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeReady
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-114.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Warning   InvalidDiskCapacity            node/ip-172-31-41-114.us-west-2.compute.internal   invalid capacity 0 on image filesystem
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeHasSufficientPID           node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    RegisteredNode                 node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal event: Registered Node ip-172-31-41-114.us-west-2.compute.internal in Controller
45m     Normal    NodeReady                      node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeReady
44m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2                     Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
44m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-pbtz2
44m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "curlimages/curl:8.21.0"
44m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
44m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
44m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
43m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
43m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
43m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
43m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-79btg
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg                     Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
34m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-r4b5d                     Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-ccwbz                     Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-r4b5d
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-ccwbz
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-ccwbz                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-r4b5d                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9lnw2                     Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-9lnw2
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-cmt7h
31m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-cmt7h                     Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
30m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
30m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
30m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
30m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
30m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
30m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-cmt7h                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
30m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
30m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
30m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9lnw2                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
18m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
18m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
9m7s    Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-pbtz2
9m7s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
9m7s    Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2                     Stopping container llama-server
9m7s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: All metrics below target
9m7s    Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2                     Stopping container fastapi-proxy
9m2s    Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
8m7s    Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-9lnw2
8m7s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
8m7s    Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2                     Stopping container fastapi-proxy
8m7s    Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2                     Stopping container llama-server
8m7s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: All metrics below target
7m52s   Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d                     Stopping container llama-server
7m52s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: All metrics below target
7m52s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-ccwbz
7m52s   Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz                     Stopping container llama-server
7m52s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-r4b5d
7m52s   Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d                     Stopping container fastapi-proxy
7m52s   Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz                     Stopping container fastapi-proxy
7m52s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
5m37s   Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h                     Stopping container llama-server
5m37s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 1; reason: All metrics below target
5m37s   Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h                     Stopping container fastapi-proxy
5m37s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-cmt7h
5m37s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787470302
interrupted=0
