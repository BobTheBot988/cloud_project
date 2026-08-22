# scenario=exp4 run=4
collect_start=1787419666
interval_sec=60
run=4
run_start=1787419670
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787419831
--- events ---
22m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   
19m     Normal    Starting                       node/ip-172-31-45-91.us-west-2.compute.internal    
22m     Normal    Starting                       node/ip-172-31-41-64.us-west-2.compute.internal    
21m     Normal    Starting                       node/ip-172-31-32-185.us-west-2.compute.internal   
20m     Normal    Starting                       node/ip-172-31-24-171.us-west-2.compute.internal   
27m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   
24m     Normal    Starting                       node/ip-172-31-22-17.us-west-2.compute.internal    
27m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
27m     Normal    NodeHasSufficientPID           node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
27m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
27m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   Starting kubelet.
27m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
27m     Normal    RegisteredNode                 node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal event: Registered Node ip-172-31-29-155.us-west-2.compute.internal in Controller
27m     Normal    NodeReady                      node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeReady
24m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-17.us-west-2.compute.internal    Updated Node Allocatable limit across pods
24m     Normal    NodeHasSufficientPID           node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientPID
24m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
24m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientMemory
24m     Warning   InvalidDiskCapacity            node/ip-172-31-22-17.us-west-2.compute.internal    invalid capacity 0 on image filesystem
24m     Normal    RegisteredNode                 node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal event: Registered Node ip-172-31-22-17.us-west-2.compute.internal in Controller
24m     Normal    NodeReady                      node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeReady
22m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
22m     Normal    NodeHasSufficientPID           node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientPID
22m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientMemory
22m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-64.us-west-2.compute.internal    Updated Node Allocatable limit across pods
22m     Normal    RegisteredNode                 node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal event: Registered Node ip-172-31-41-64.us-west-2.compute.internal in Controller
22m     Normal    NodeReady                      node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeReady
22m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   Starting kubelet.
22m     Warning   InvalidDiskCapacity            node/ip-172-31-18-181.us-west-2.compute.internal   invalid capacity 0 on image filesystem
22m     Normal    NodeAllocatableEnforced        node/ip-172-31-18-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
22m     Normal    NodeHasNoDiskPressure          node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
22m     Normal    NodeHasSufficientMemory        node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
22m     Normal    CIDRAssignmentFailed           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: CIDRAssignmentFailed
22m     Normal    NodeHasSufficientPID           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
22m     Normal    RegisteredNode                 node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal event: Registered Node ip-172-31-18-181.us-west-2.compute.internal in Controller
21m     Normal    NodeReady                      node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeReady
21m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientMemory
21m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
21m     Normal    NodeHasSufficientPID           node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientPID
21m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-185.us-west-2.compute.internal   Updated Node Allocatable limit across pods
21m     Warning   InvalidDiskCapacity            node/ip-172-31-32-185.us-west-2.compute.internal   invalid capacity 0 on image filesystem
21m     Normal    RegisteredNode                 node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal event: Registered Node ip-172-31-32-185.us-west-2.compute.internal in Controller
21m     Normal    NodeReady                      node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeReady
20m     Normal    NodeHasNoDiskPressure          node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
20m     Normal    NodeHasSufficientPID           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientPID
20m     Warning   InvalidDiskCapacity            node/ip-172-31-24-171.us-west-2.compute.internal   invalid capacity 0 on image filesystem
20m     Normal    NodeHasSufficientMemory        node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientMemory
20m     Normal    CIDRAssignmentFailed           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: CIDRAssignmentFailed
20m     Normal    NodeAllocatableEnforced        node/ip-172-31-24-171.us-west-2.compute.internal   Updated Node Allocatable limit across pods
20m     Normal    RegisteredNode                 node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal event: Registered Node ip-172-31-24-171.us-west-2.compute.internal in Controller
20m     Normal    NodeReady                      node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeReady
19m     Normal    NodeHasSufficientPID           node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
19m     Normal    NodeHasNoDiskPressure          node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
19m     Normal    NodeHasSufficientMemory        node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
19m     Normal    NodeAllocatableEnforced        node/ip-172-31-45-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
19m     Warning   InvalidDiskCapacity            node/ip-172-31-45-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
19m     Normal    RegisteredNode                 node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal event: Registered Node ip-172-31-45-91.us-west-2.compute.internal in Controller
19m     Normal    NodeReady                      node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeReady
18m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
18m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-lzjc4
18m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-lzjc4                     Successfully assigned default/llm-proxy-857bf6d79d-lzjc4 to ip-172-31-45-91.us-west-2.compute.internal
18m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "curlimages/curl:8.21.0"
18m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
18m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
18m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "curlimages/curl:8.21.0" in 1.624s (1.624s including waiting). Image size: 10652192 bytes.
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.242s (16.242s including waiting). Image size: 307683482 bytes.
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
17m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.681s (5.681s including waiting). Image size: 64753325 bytes.
17m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
17m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
17m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-lzjc4                     Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
16m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
16m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
10m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-thxs6                     Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
10m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "curlimages/curl:8.21.0"
10m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-thxs6
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
10m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
10m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
10m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
9m15s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
8m58s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
8m58s   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
8m58s   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
8m58s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
8m51s   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
8m51s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-thxs6                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
8m51s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
8m51s   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
7m43s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
7m43s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-4vp47                     Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
7m43s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
7m43s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-4vp47
7m43s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "curlimages/curl:8.21.0"
7m41s   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
7m41s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
7m41s   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
7m28s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
7m28s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-jlz5f
7m28s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-jlz5f                     Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
7m28s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
7m28s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "curlimages/curl:8.21.0"
7m26s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
7m26s   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
7m26s   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
7m7s    Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
6m54s   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
6m54s   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
6m54s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m54s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
6m48s   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
6m48s   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
6m48s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
6m47s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
6m2s    Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
5m48s   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
5m48s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
5m48s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m48s   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
5m43s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
5m43s   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
5m43s   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
5m43s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
run_end=1787419831
interrupted=0
