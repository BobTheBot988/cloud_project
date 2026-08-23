# scenario=exp6 run=58
collect_start=1787470302
interval_sec=60
run=58
run_start=1787470306
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787470464
--- events ---
55m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    
52m     Normal    Starting                       node/ip-172-31-29-57.us-west-2.compute.internal    
49m     Normal    Starting                       node/ip-172-31-27-126.us-west-2.compute.internal   
51m     Normal    Starting                       node/ip-172-31-35-116.us-west-2.compute.internal   
48m     Normal    Starting                       node/ip-172-31-41-114.us-west-2.compute.internal   
50m     Normal    Starting                       node/ip-172-31-46-207.us-west-2.compute.internal   
50m     Normal    Starting                       node/ip-172-31-19-200.us-west-2.compute.internal   
55m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-58.us-west-2.compute.internal    Updated Node Allocatable limit across pods
55m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientMemory
55m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
55m     Normal    NodeHasSufficientPID           node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientPID
55m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    Starting kubelet.
55m     Normal    RegisteredNode                 node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal event: Registered Node ip-172-31-22-58.us-west-2.compute.internal in Controller
54m     Normal    NodeReady                      node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeReady
52m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-57.us-west-2.compute.internal    Updated Node Allocatable limit across pods
52m     Normal    NodeHasSufficientPID           node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientPID
52m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
52m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientMemory
52m     Warning   InvalidDiskCapacity            node/ip-172-31-29-57.us-west-2.compute.internal    invalid capacity 0 on image filesystem
52m     Normal    RegisteredNode                 node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal event: Registered Node ip-172-31-29-57.us-west-2.compute.internal in Controller
52m     Normal    NodeReady                      node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeReady
51m     Warning   InvalidDiskCapacity            node/ip-172-31-35-116.us-west-2.compute.internal   invalid capacity 0 on image filesystem
51m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientMemory
51m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeHasSufficientPID           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientPID
51m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-116.us-west-2.compute.internal   Updated Node Allocatable limit across pods
51m     Normal    CIDRAssignmentFailed           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: CIDRAssignmentFailed
51m     Normal    RegisteredNode                 node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal event: Registered Node ip-172-31-35-116.us-west-2.compute.internal in Controller
51m     Normal    NodeReady                      node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeReady
50m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-200.us-west-2.compute.internal   Updated Node Allocatable limit across pods
50m     Warning   InvalidDiskCapacity            node/ip-172-31-19-200.us-west-2.compute.internal   invalid capacity 0 on image filesystem
50m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
50m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientMemory
50m     Normal    NodeHasSufficientPID           node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientPID
50m     Normal    RegisteredNode                 node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal event: Registered Node ip-172-31-19-200.us-west-2.compute.internal in Controller
50m     Normal    NodeReady                      node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeReady
50m     Normal    NodeHasNoDiskPressure          node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
50m     Normal    NodeHasSufficientMemory        node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientMemory
50m     Normal    NodeAllocatableEnforced        node/ip-172-31-46-207.us-west-2.compute.internal   Updated Node Allocatable limit across pods
50m     Normal    NodeHasSufficientPID           node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientPID
50m     Normal    RegisteredNode                 node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal event: Registered Node ip-172-31-46-207.us-west-2.compute.internal in Controller
50m     Normal    NodeReady                      node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeReady
49m     Normal    NodeHasSufficientPID           node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-27-126.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Normal    RegisteredNode                 node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal event: Registered Node ip-172-31-27-126.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeReady
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-114.us-west-2.compute.internal   Updated Node Allocatable limit across pods
48m     Warning   InvalidDiskCapacity            node/ip-172-31-41-114.us-west-2.compute.internal   invalid capacity 0 on image filesystem
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    NodeHasSufficientPID           node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Normal    RegisteredNode                 node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal event: Registered Node ip-172-31-41-114.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeReady
47m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2                     Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-pbtz2
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "curlimages/curl:8.21.0"
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
46m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
46m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
46m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
46m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
46m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
46m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
46m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-79btg
39m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
39m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
39m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "curlimages/curl:8.21.0"
39m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg                     Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
39m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
39m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
39m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
39m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
38m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
38m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
38m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
38m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
38m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
38m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
38m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
37m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-r4b5d                     Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-ccwbz                     Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-r4b5d
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-ccwbz
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-ccwbz                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-r4b5d                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9lnw2                     Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-9lnw2
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-cmt7h
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-cmt7h                     Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-cmt7h                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9lnw2                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
21m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
21m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
11m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-pbtz2
11m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
11m     Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2                     Stopping container llama-server
11m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: All metrics below target
11m     Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2                     Stopping container fastapi-proxy
11m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-9lnw2
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2                     Stopping container fastapi-proxy
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2                     Stopping container llama-server
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: All metrics below target
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d                     Stopping container llama-server
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: All metrics below target
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-ccwbz
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz                     Stopping container llama-server
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-r4b5d
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d                     Stopping container fastapi-proxy
10m     Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz                     Stopping container fastapi-proxy
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
8m19s   Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h                     Stopping container llama-server
8m19s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 1; reason: All metrics below target
8m19s   Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h                     Stopping container fastapi-proxy
8m19s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-cmt7h
8m19s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
run_end=1787470464
interrupted=0
