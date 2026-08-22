# scenario=exp4 run=7
collect_start=1787420157
interval_sec=60
run=7
run_start=1787420161
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787420321
--- events ---
30m   Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   
28m   Normal    Starting                       node/ip-172-31-45-91.us-west-2.compute.internal    
30m   Normal    Starting                       node/ip-172-31-41-64.us-west-2.compute.internal    
29m   Normal    Starting                       node/ip-172-31-32-185.us-west-2.compute.internal   
28m   Normal    Starting                       node/ip-172-31-24-171.us-west-2.compute.internal   
35m   Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   
32m   Normal    Starting                       node/ip-172-31-22-17.us-west-2.compute.internal    
35m   Normal    NodeHasNoDiskPressure          node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
35m   Normal    NodeHasSufficientPID           node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
35m   Normal    NodeHasSufficientMemory        node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
35m   Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   Starting kubelet.
35m   Normal    NodeAllocatableEnforced        node/ip-172-31-29-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
35m   Normal    RegisteredNode                 node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal event: Registered Node ip-172-31-29-155.us-west-2.compute.internal in Controller
35m   Normal    NodeReady                      node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeReady
32m   Normal    NodeAllocatableEnforced        node/ip-172-31-22-17.us-west-2.compute.internal    Updated Node Allocatable limit across pods
32m   Normal    NodeHasSufficientPID           node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientPID
32m   Normal    NodeHasNoDiskPressure          node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
32m   Normal    NodeHasSufficientMemory        node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientMemory
32m   Warning   InvalidDiskCapacity            node/ip-172-31-22-17.us-west-2.compute.internal    invalid capacity 0 on image filesystem
32m   Normal    RegisteredNode                 node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal event: Registered Node ip-172-31-22-17.us-west-2.compute.internal in Controller
32m   Normal    NodeReady                      node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeReady
31m   Normal    NodeHasNoDiskPressure          node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
31m   Normal    NodeHasSufficientPID           node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientPID
31m   Normal    NodeHasSufficientMemory        node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientMemory
31m   Normal    NodeAllocatableEnforced        node/ip-172-31-41-64.us-west-2.compute.internal    Updated Node Allocatable limit across pods
31m   Normal    RegisteredNode                 node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal event: Registered Node ip-172-31-41-64.us-west-2.compute.internal in Controller
30m   Normal    NodeReady                      node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeReady
30m   Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   Starting kubelet.
30m   Warning   InvalidDiskCapacity            node/ip-172-31-18-181.us-west-2.compute.internal   invalid capacity 0 on image filesystem
30m   Normal    NodeAllocatableEnforced        node/ip-172-31-18-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
30m   Normal    NodeHasNoDiskPressure          node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
30m   Normal    NodeHasSufficientMemory        node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
30m   Normal    CIDRAssignmentFailed           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: CIDRAssignmentFailed
30m   Normal    NodeHasSufficientPID           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
30m   Normal    RegisteredNode                 node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal event: Registered Node ip-172-31-18-181.us-west-2.compute.internal in Controller
30m   Normal    NodeReady                      node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeReady
29m   Normal    NodeHasSufficientMemory        node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientMemory
29m   Normal    NodeHasNoDiskPressure          node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
29m   Normal    NodeHasSufficientPID           node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientPID
29m   Normal    NodeAllocatableEnforced        node/ip-172-31-32-185.us-west-2.compute.internal   Updated Node Allocatable limit across pods
29m   Warning   InvalidDiskCapacity            node/ip-172-31-32-185.us-west-2.compute.internal   invalid capacity 0 on image filesystem
29m   Normal    RegisteredNode                 node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal event: Registered Node ip-172-31-32-185.us-west-2.compute.internal in Controller
29m   Normal    NodeReady                      node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeReady
28m   Normal    NodeHasNoDiskPressure          node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
28m   Normal    NodeHasSufficientPID           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientPID
28m   Warning   InvalidDiskCapacity            node/ip-172-31-24-171.us-west-2.compute.internal   invalid capacity 0 on image filesystem
28m   Normal    NodeHasSufficientMemory        node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientMemory
28m   Normal    CIDRAssignmentFailed           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: CIDRAssignmentFailed
28m   Normal    NodeAllocatableEnforced        node/ip-172-31-24-171.us-west-2.compute.internal   Updated Node Allocatable limit across pods
28m   Normal    RegisteredNode                 node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal event: Registered Node ip-172-31-24-171.us-west-2.compute.internal in Controller
28m   Normal    NodeReady                      node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeReady
28m   Normal    NodeHasSufficientPID           node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
28m   Normal    NodeHasNoDiskPressure          node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
28m   Normal    NodeHasSufficientMemory        node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
28m   Normal    NodeAllocatableEnforced        node/ip-172-31-45-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
28m   Warning   InvalidDiskCapacity            node/ip-172-31-45-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
28m   Normal    RegisteredNode                 node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal event: Registered Node ip-172-31-45-91.us-west-2.compute.internal in Controller
27m   Normal    NodeReady                      node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeReady
27m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
27m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-lzjc4
27m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-lzjc4                     Successfully assigned default/llm-proxy-857bf6d79d-lzjc4 to ip-172-31-45-91.us-west-2.compute.internal
27m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "curlimages/curl:8.21.0"
27m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
27m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
27m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "curlimages/curl:8.21.0" in 1.624s (1.624s including waiting). Image size: 10652192 bytes.
25m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
25m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
25m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.242s (16.242s including waiting). Image size: 307683482 bytes.
25m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
25m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
25m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.681s (5.681s including waiting). Image size: 64753325 bytes.
25m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
25m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
25m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-lzjc4                     Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
25m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
25m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-thxs6                     Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
18m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "curlimages/curl:8.21.0"
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-thxs6
18m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
18m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
18m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
18m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
18m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
17m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
17m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
17m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-thxs6                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
15m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-4vp47                     Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
15m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-4vp47
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "curlimages/curl:8.21.0"
15m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
15m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
15m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
15m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-jlz5f
15m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-jlz5f                     Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "curlimages/curl:8.21.0"
15m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
15m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
15m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
15m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
15m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
15m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
14m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
14m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
14m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
14m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
14m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
13m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
13m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
13m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
13m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
13m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
13m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
13m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
13m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
run_end=1787420321
interrupted=0
