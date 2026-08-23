# scenario=exp6 run=49
collect_start=1787468344
interval_sec=60
run=49
run_start=1787468349
scenario=exp6
test=TestB(steady)
level_users=30 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787468508
--- events ---
18m     Normal    Starting                       node/ip-172-31-19-200.us-west-2.compute.internal   
17m     Normal    Starting                       node/ip-172-31-46-207.us-west-2.compute.internal   
16m     Normal    Starting                       node/ip-172-31-41-114.us-west-2.compute.internal   
19m     Normal    Starting                       node/ip-172-31-35-116.us-west-2.compute.internal   
19m     Normal    Starting                       node/ip-172-31-29-57.us-west-2.compute.internal    
16m     Normal    Starting                       node/ip-172-31-27-126.us-west-2.compute.internal   
22m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    
22m     Normal    Starting                       node/ip-172-31-22-58.us-west-2.compute.internal    Starting kubelet.
22m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-58.us-west-2.compute.internal    Updated Node Allocatable limit across pods
22m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientMemory
22m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
22m     Normal    NodeHasSufficientPID           node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeHasSufficientPID
22m     Normal    RegisteredNode                 node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal event: Registered Node ip-172-31-22-58.us-west-2.compute.internal in Controller
22m     Normal    NodeReady                      node/ip-172-31-22-58.us-west-2.compute.internal    Node ip-172-31-22-58.us-west-2.compute.internal status is now: NodeReady
19m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-57.us-west-2.compute.internal    Updated Node Allocatable limit across pods
19m     Normal    NodeHasSufficientPID           node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientPID
19m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
19m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeHasSufficientMemory
19m     Warning   InvalidDiskCapacity            node/ip-172-31-29-57.us-west-2.compute.internal    invalid capacity 0 on image filesystem
19m     Normal    RegisteredNode                 node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal event: Registered Node ip-172-31-29-57.us-west-2.compute.internal in Controller
19m     Normal    NodeReady                      node/ip-172-31-29-57.us-west-2.compute.internal    Node ip-172-31-29-57.us-west-2.compute.internal status is now: NodeReady
19m     Warning   InvalidDiskCapacity            node/ip-172-31-35-116.us-west-2.compute.internal   invalid capacity 0 on image filesystem
19m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-116.us-west-2.compute.internal   Updated Node Allocatable limit across pods
19m     Normal    CIDRAssignmentFailed           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: CIDRAssignmentFailed
19m     Normal    NodeHasSufficientPID           node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientPID
19m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
19m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeHasSufficientMemory
19m     Normal    RegisteredNode                 node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal event: Registered Node ip-172-31-35-116.us-west-2.compute.internal in Controller
18m     Normal    NodeReady                      node/ip-172-31-35-116.us-west-2.compute.internal   Node ip-172-31-35-116.us-west-2.compute.internal status is now: NodeReady
18m     Warning   InvalidDiskCapacity            node/ip-172-31-19-200.us-west-2.compute.internal   invalid capacity 0 on image filesystem
18m     Normal    NodeAllocatableEnforced        node/ip-172-31-19-200.us-west-2.compute.internal   Updated Node Allocatable limit across pods
18m     Normal    NodeHasNoDiskPressure          node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
18m     Normal    NodeHasSufficientPID           node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientPID
18m     Normal    NodeHasSufficientMemory        node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeHasSufficientMemory
18m     Normal    RegisteredNode                 node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal event: Registered Node ip-172-31-19-200.us-west-2.compute.internal in Controller
18m     Normal    NodeReady                      node/ip-172-31-19-200.us-west-2.compute.internal   Node ip-172-31-19-200.us-west-2.compute.internal status is now: NodeReady
17m     Normal    NodeAllocatableEnforced        node/ip-172-31-46-207.us-west-2.compute.internal   Updated Node Allocatable limit across pods
17m     Normal    NodeHasNoDiskPressure          node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
17m     Normal    NodeHasSufficientMemory        node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientMemory
17m     Normal    NodeHasSufficientPID           node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeHasSufficientPID
17m     Normal    RegisteredNode                 node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal event: Registered Node ip-172-31-46-207.us-west-2.compute.internal in Controller
17m     Normal    NodeReady                      node/ip-172-31-46-207.us-west-2.compute.internal   Node ip-172-31-46-207.us-west-2.compute.internal status is now: NodeReady
16m     Normal    NodeHasSufficientPID           node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientPID
16m     Normal    NodeAllocatableEnforced        node/ip-172-31-27-126.us-west-2.compute.internal   Updated Node Allocatable limit across pods
16m     Normal    NodeHasNoDiskPressure          node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
16m     Normal    NodeHasSufficientMemory        node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeHasSufficientMemory
16m     Normal    RegisteredNode                 node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal event: Registered Node ip-172-31-27-126.us-west-2.compute.internal in Controller
16m     Normal    NodeReady                      node/ip-172-31-27-126.us-west-2.compute.internal   Node ip-172-31-27-126.us-west-2.compute.internal status is now: NodeReady
16m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-114.us-west-2.compute.internal   Updated Node Allocatable limit across pods
16m     Warning   InvalidDiskCapacity            node/ip-172-31-41-114.us-west-2.compute.internal   invalid capacity 0 on image filesystem
16m     Normal    NodeHasSufficientPID           node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientPID
16m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
16m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeHasSufficientMemory
16m     Normal    RegisteredNode                 node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal event: Registered Node ip-172-31-41-114.us-west-2.compute.internal in Controller
16m     Normal    NodeReady                      node/ip-172-31-41-114.us-west-2.compute.internal   Node ip-172-31-41-114.us-west-2.compute.internal status is now: NodeReady
14m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2                     Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
14m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
14m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-pbtz2
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "curlimages/curl:8.21.0"
14m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
14m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
14m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
14m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
13m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
13m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
13m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
13m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
13m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
13m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
13m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2                     Container created
13m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2                     Container started
13m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
13m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m16s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "curlimages/curl:8.21.0"
7m16s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-79btg
7m16s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg                     Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
7m16s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
7m16s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
7m14s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
7m14s   Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
7m14s   Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
6m41s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
6m22s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
6m22s   Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
6m22s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m22s   Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
6m16s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
6m16s   Normal    Created                        pod/llm-proxy-857bf6d79d-79btg                     Container created
6m16s   Normal    Started                        pod/llm-proxy-857bf6d79d-79btg                     Container started
6m16s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
4m40s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
4m31s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
4m31s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-r4b5d                     Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
4m31s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
4m31s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-ccwbz
4m31s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-r4b5d
4m31s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-ccwbz                     Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
4m30s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "curlimages/curl:8.21.0"
4m30s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "curlimages/curl:8.21.0"
4m29s   Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
4m29s   Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
4m29s   Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
4m29s   Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
4m29s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
4m29s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
3m57s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
3m52s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
3m41s   Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
3m41s   Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
3m41s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
3m41s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m35s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
3m35s   Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
3m35s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m35s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
3m35s   Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz                     Container created
3m35s   Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz                     Container started
3m35s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-ccwbz                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
3m35s   Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
3m30s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
3m30s   Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d                     Container created
3m29s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-r4b5d                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
3m29s   Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d                     Container started
2m1s    Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-9lnw2
2m1s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: cpu resource utilization (percentage of request) above target
2m1s    Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9lnw2                     Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
2m1s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
2m      Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "curlimages/curl:8.21.0"
118s    Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
118s    Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
118s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
106s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
106s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
105s    Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-cmt7h
105s    Normal    Scheduled                      pod/llm-proxy-857bf6d79d-cmt7h                     Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
104s    Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "curlimages/curl:8.21.0"
101s    Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
101s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
101s    Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
82s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
73s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
64s     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
64s     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
64s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
64s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
60s     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
60s     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
60s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
60s     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
58s     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h                     Container created
58s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
57s     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-cmt7h                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
57s     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h                     Container started
55s     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2                     Container started
55s     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
55s     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2                     Container created
54s     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9lnw2                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
run_end=1787468508
interrupted=0
