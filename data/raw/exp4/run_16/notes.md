# scenario=exp4 run=16
collect_start=1787421633
interval_sec=60
run=16
run_start=1787421638
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787421823
--- events ---
53m     Normal    Starting                       node/ip-172-31-24-171.us-west-2.compute.internal   
54m     Normal    Starting                       node/ip-172-31-32-185.us-west-2.compute.internal   
57m     Normal    Starting                       node/ip-172-31-22-17.us-west-2.compute.internal    
60m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   
53m     Normal    Starting                       node/ip-172-31-45-91.us-west-2.compute.internal    
55m     Normal    Starting                       node/ip-172-31-41-64.us-west-2.compute.internal    
55m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   
60m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
60m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
60m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   Starting kubelet.
60m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
60m     Normal    NodeHasSufficientPID           node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
60m     Normal    RegisteredNode                 node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal event: Registered Node ip-172-31-29-155.us-west-2.compute.internal in Controller
60m     Normal    NodeReady                      node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeReady
57m     Normal    NodeHasSufficientPID           node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientPID
57m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-17.us-west-2.compute.internal    Updated Node Allocatable limit across pods
57m     Warning   InvalidDiskCapacity            node/ip-172-31-22-17.us-west-2.compute.internal    invalid capacity 0 on image filesystem
57m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientMemory
57m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
57m     Normal    RegisteredNode                 node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal event: Registered Node ip-172-31-22-17.us-west-2.compute.internal in Controller
57m     Normal    NodeReady                      node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeReady
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-64.us-west-2.compute.internal    Updated Node Allocatable limit across pods
56m     Normal    NodeHasSufficientPID           node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientPID
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
56m     Normal    RegisteredNode                 node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal event: Registered Node ip-172-31-41-64.us-west-2.compute.internal in Controller
55m     Normal    NodeReady                      node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeReady
55m     Normal    NodeAllocatableEnforced        node/ip-172-31-18-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
55m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   Starting kubelet.
55m     Warning   InvalidDiskCapacity            node/ip-172-31-18-181.us-west-2.compute.internal   invalid capacity 0 on image filesystem
55m     Normal    NodeHasSufficientMemory        node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
55m     Normal    CIDRAssignmentFailed           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: CIDRAssignmentFailed
55m     Normal    NodeHasNoDiskPressure          node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
55m     Normal    NodeHasSufficientPID           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
55m     Normal    RegisteredNode                 node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal event: Registered Node ip-172-31-18-181.us-west-2.compute.internal in Controller
55m     Normal    NodeReady                      node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeReady
54m     Warning   InvalidDiskCapacity            node/ip-172-31-32-185.us-west-2.compute.internal   invalid capacity 0 on image filesystem
54m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientMemory
54m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
54m     Normal    NodeHasSufficientPID           node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientPID
54m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-185.us-west-2.compute.internal   Updated Node Allocatable limit across pods
54m     Normal    RegisteredNode                 node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal event: Registered Node ip-172-31-32-185.us-west-2.compute.internal in Controller
54m     Normal    NodeReady                      node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeReady
53m     Normal    CIDRAssignmentFailed           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: CIDRAssignmentFailed
53m     Normal    NodeHasSufficientMemory        node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientMemory
53m     Warning   InvalidDiskCapacity            node/ip-172-31-24-171.us-west-2.compute.internal   invalid capacity 0 on image filesystem
53m     Normal    NodeHasNoDiskPressure          node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
53m     Normal    NodeAllocatableEnforced        node/ip-172-31-24-171.us-west-2.compute.internal   Updated Node Allocatable limit across pods
53m     Normal    NodeHasSufficientPID           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientPID
53m     Normal    RegisteredNode                 node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal event: Registered Node ip-172-31-24-171.us-west-2.compute.internal in Controller
53m     Normal    NodeReady                      node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeReady
53m     Normal    NodeHasNoDiskPressure          node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
53m     Normal    NodeHasSufficientPID           node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
53m     Normal    NodeAllocatableEnforced        node/ip-172-31-45-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
53m     Normal    NodeHasSufficientMemory        node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
53m     Warning   InvalidDiskCapacity            node/ip-172-31-45-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
53m     Normal    RegisteredNode                 node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal event: Registered Node ip-172-31-45-91.us-west-2.compute.internal in Controller
53m     Normal    NodeReady                      node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeReady
52m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-lzjc4
52m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
52m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-lzjc4                     Successfully assigned default/llm-proxy-857bf6d79d-lzjc4 to ip-172-31-45-91.us-west-2.compute.internal
52m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "curlimages/curl:8.21.0"
52m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "curlimages/curl:8.21.0" in 1.624s (1.624s including waiting). Image size: 10652192 bytes.
52m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
52m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
50m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.242s (16.242s including waiting). Image size: 307683482 bytes.
50m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
50m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.681s (5.681s including waiting). Image size: 64753325 bytes.
50m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
50m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
50m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
43m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-thxs6                     Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
43m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
43m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-thxs6
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
43m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "curlimages/curl:8.21.0"
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
42m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
42m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
42m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
42m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
42m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
42m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
42m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-thxs6                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-4vp47
40m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
40m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-4vp47                     Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
40m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-jlz5f                     Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-jlz5f
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
39m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
39m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
39m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
39m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
39m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
38m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
38m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
38m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
38m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
38m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
21m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
21m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
12m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: All metrics below target
12m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-lzjc4
12m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
12m     Normal    Killing                        pod/llm-proxy-857bf6d79d-lzjc4                     Stopping container llama-server
12m     Normal    Killing                        pod/llm-proxy-857bf6d79d-lzjc4                     Stopping container fastapi-proxy
12m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-lzjc4                     Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
11m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
11m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
11m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
11m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: HTTP probe failed with statuscode: 503
7m29s   Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
7m29s   Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
7m29s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m7s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
7m7s    Normal    Scheduled                      pod/llm-proxy-857bf6d79d-mb6wl                     Successfully assigned default/llm-proxy-857bf6d79d-mb6wl to ip-172-31-45-91.us-west-2.compute.internal
7m7s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
7m7s    Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-mb6wl
7m6s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m6s    Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl                     Container created
7m6s    Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl                     Container started
6m26s   Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl                     Container created
6m26s   Normal    Created                        pod/llm-proxy-857bf6d79d-mb6wl                     Container created
6m26s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m26s   Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl                     Container started
6m26s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-mb6wl                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m26s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-mb6wl                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
6m26s   Normal    Started                        pod/llm-proxy-857bf6d79d-mb6wl                     Container started
6m25s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-mb6wl                     Readiness probe failed: Get "http://10.244.9.3:8000/health": dial tcp 10.244.9.3:8000: connect: connection refused
run_end=1787421823
interrupted=0
