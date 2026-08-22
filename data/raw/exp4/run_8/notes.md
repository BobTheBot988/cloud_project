# scenario=exp4 run=8
collect_start=1787420321
interval_sec=60
run=8
run_start=1787420325
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787420486
--- events ---
32m   Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   
30m   Normal    Starting                       node/ip-172-31-45-91.us-west-2.compute.internal    
33m   Normal    Starting                       node/ip-172-31-41-64.us-west-2.compute.internal    
32m   Normal    Starting                       node/ip-172-31-32-185.us-west-2.compute.internal   
31m   Normal    Starting                       node/ip-172-31-24-171.us-west-2.compute.internal   
38m   Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   
35m   Normal    Starting                       node/ip-172-31-22-17.us-west-2.compute.internal    
38m   Normal    NodeHasNoDiskPressure          node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
38m   Normal    NodeHasSufficientPID           node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
38m   Normal    NodeHasSufficientMemory        node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
38m   Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   Starting kubelet.
38m   Normal    NodeAllocatableEnforced        node/ip-172-31-29-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
38m   Normal    RegisteredNode                 node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal event: Registered Node ip-172-31-29-155.us-west-2.compute.internal in Controller
38m   Normal    NodeReady                      node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeReady
35m   Normal    NodeAllocatableEnforced        node/ip-172-31-22-17.us-west-2.compute.internal    Updated Node Allocatable limit across pods
35m   Normal    NodeHasSufficientPID           node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientPID
35m   Normal    NodeHasNoDiskPressure          node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
35m   Normal    NodeHasSufficientMemory        node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientMemory
35m   Warning   InvalidDiskCapacity            node/ip-172-31-22-17.us-west-2.compute.internal    invalid capacity 0 on image filesystem
35m   Normal    RegisteredNode                 node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal event: Registered Node ip-172-31-22-17.us-west-2.compute.internal in Controller
34m   Normal    NodeReady                      node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeReady
33m   Normal    NodeHasNoDiskPressure          node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
33m   Normal    NodeHasSufficientPID           node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientPID
33m   Normal    NodeHasSufficientMemory        node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientMemory
33m   Normal    NodeAllocatableEnforced        node/ip-172-31-41-64.us-west-2.compute.internal    Updated Node Allocatable limit across pods
33m   Normal    RegisteredNode                 node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal event: Registered Node ip-172-31-41-64.us-west-2.compute.internal in Controller
33m   Normal    NodeReady                      node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeReady
33m   Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   Starting kubelet.
33m   Warning   InvalidDiskCapacity            node/ip-172-31-18-181.us-west-2.compute.internal   invalid capacity 0 on image filesystem
33m   Normal    NodeAllocatableEnforced        node/ip-172-31-18-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
33m   Normal    NodeHasNoDiskPressure          node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
33m   Normal    NodeHasSufficientMemory        node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
33m   Normal    CIDRAssignmentFailed           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: CIDRAssignmentFailed
33m   Normal    NodeHasSufficientPID           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
33m   Normal    RegisteredNode                 node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal event: Registered Node ip-172-31-18-181.us-west-2.compute.internal in Controller
32m   Normal    NodeReady                      node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeReady
32m   Normal    NodeHasSufficientMemory        node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientMemory
32m   Normal    NodeHasNoDiskPressure          node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
32m   Normal    NodeHasSufficientPID           node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientPID
32m   Normal    NodeAllocatableEnforced        node/ip-172-31-32-185.us-west-2.compute.internal   Updated Node Allocatable limit across pods
32m   Warning   InvalidDiskCapacity            node/ip-172-31-32-185.us-west-2.compute.internal   invalid capacity 0 on image filesystem
32m   Normal    RegisteredNode                 node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal event: Registered Node ip-172-31-32-185.us-west-2.compute.internal in Controller
32m   Normal    NodeReady                      node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeReady
31m   Normal    NodeHasNoDiskPressure          node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
31m   Normal    NodeHasSufficientPID           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientPID
31m   Warning   InvalidDiskCapacity            node/ip-172-31-24-171.us-west-2.compute.internal   invalid capacity 0 on image filesystem
31m   Normal    NodeHasSufficientMemory        node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientMemory
31m   Normal    CIDRAssignmentFailed           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: CIDRAssignmentFailed
31m   Normal    NodeAllocatableEnforced        node/ip-172-31-24-171.us-west-2.compute.internal   Updated Node Allocatable limit across pods
31m   Normal    RegisteredNode                 node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal event: Registered Node ip-172-31-24-171.us-west-2.compute.internal in Controller
31m   Normal    NodeReady                      node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeReady
30m   Normal    NodeHasSufficientPID           node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
30m   Normal    NodeHasNoDiskPressure          node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
30m   Normal    NodeHasSufficientMemory        node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
30m   Normal    NodeAllocatableEnforced        node/ip-172-31-45-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
30m   Warning   InvalidDiskCapacity            node/ip-172-31-45-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
30m   Normal    RegisteredNode                 node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal event: Registered Node ip-172-31-45-91.us-west-2.compute.internal in Controller
30m   Normal    NodeReady                      node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeReady
29m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
29m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-lzjc4
29m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-lzjc4                     Successfully assigned default/llm-proxy-857bf6d79d-lzjc4 to ip-172-31-45-91.us-west-2.compute.internal
29m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "curlimages/curl:8.21.0"
29m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
29m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
29m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "curlimages/curl:8.21.0" in 1.624s (1.624s including waiting). Image size: 10652192 bytes.
28m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
28m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
28m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.242s (16.242s including waiting). Image size: 307683482 bytes.
28m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
28m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
28m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.681s (5.681s including waiting). Image size: 64753325 bytes.
28m   Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
28m   Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
28m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-lzjc4                     Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
27m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
27m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
21m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-thxs6                     Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
21m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "curlimages/curl:8.21.0"
21m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-thxs6
21m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
21m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
21m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
21m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
21m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
20m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
19m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
19m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
19m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
19m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
19m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-thxs6                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
19m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
19m   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
18m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
18m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-4vp47                     Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
18m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-4vp47
18m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "curlimages/curl:8.21.0"
18m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
18m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
18m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
18m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-jlz5f
18m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-jlz5f                     Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
18m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
18m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "curlimages/curl:8.21.0"
18m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
18m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
18m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
18m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
17m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
17m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
16m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
16m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
16m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
16m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
16m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
16m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
16m   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
16m   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
16m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
run_end=1787420486
interrupted=0
