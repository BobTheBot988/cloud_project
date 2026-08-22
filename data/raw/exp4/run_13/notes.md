# scenario=exp4 run=13
collect_start=1787421138
interval_sec=60
run=13
run_start=1787421142
scenario=exp4
test=TestB(steady)
level_users=10 steady_min=2 size=mix
target=http://172.31.29.155:30080 loadgen=ec2-user@54.187.191.19
runs_total=20
collect_stop=1787421302
--- events ---
46m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   
44m     Normal    Starting                       node/ip-172-31-45-91.us-west-2.compute.internal    
47m     Normal    Starting                       node/ip-172-31-41-64.us-west-2.compute.internal    
45m     Normal    Starting                       node/ip-172-31-32-185.us-west-2.compute.internal   
45m     Normal    Starting                       node/ip-172-31-24-171.us-west-2.compute.internal   
51m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   
48m     Normal    Starting                       node/ip-172-31-22-17.us-west-2.compute.internal    
51m     Normal    NodeHasNoDiskPressure          node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeHasSufficientPID           node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
51m     Normal    Starting                       node/ip-172-31-29-155.us-west-2.compute.internal   Starting kubelet.
51m     Normal    NodeAllocatableEnforced        node/ip-172-31-29-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
51m     Normal    NodeHasSufficientMemory        node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
51m     Normal    RegisteredNode                 node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal event: Registered Node ip-172-31-29-155.us-west-2.compute.internal in Controller
51m     Normal    NodeReady                      node/ip-172-31-29-155.us-west-2.compute.internal   Node ip-172-31-29-155.us-west-2.compute.internal status is now: NodeReady
48m     Warning   InvalidDiskCapacity            node/ip-172-31-22-17.us-west-2.compute.internal    invalid capacity 0 on image filesystem
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-17.us-west-2.compute.internal    Updated Node Allocatable limit across pods
48m     Normal    NodeHasSufficientPID           node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    RegisteredNode                 node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal event: Registered Node ip-172-31-22-17.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-22-17.us-west-2.compute.internal    Node ip-172-31-22-17.us-west-2.compute.internal status is now: NodeReady
47m     Normal    NodeAllocatableEnforced        node/ip-172-31-41-64.us-west-2.compute.internal    Updated Node Allocatable limit across pods
47m     Normal    NodeHasSufficientPID           node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientPID
47m     Normal    NodeHasNoDiskPressure          node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
47m     Normal    NodeHasSufficientMemory        node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeHasSufficientMemory
47m     Normal    RegisteredNode                 node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal event: Registered Node ip-172-31-41-64.us-west-2.compute.internal in Controller
47m     Normal    NodeReady                      node/ip-172-31-41-64.us-west-2.compute.internal    Node ip-172-31-41-64.us-west-2.compute.internal status is now: NodeReady
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-18-181.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Normal    Starting                       node/ip-172-31-18-181.us-west-2.compute.internal   Starting kubelet.
46m     Warning   InvalidDiskCapacity            node/ip-172-31-18-181.us-west-2.compute.internal   invalid capacity 0 on image filesystem
46m     Normal    CIDRAssignmentFailed           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: CIDRAssignmentFailed
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeHasSufficientPID           node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    RegisteredNode                 node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal event: Registered Node ip-172-31-18-181.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-18-181.us-west-2.compute.internal   Node ip-172-31-18-181.us-west-2.compute.internal status is now: NodeReady
45m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-185.us-west-2.compute.internal   Updated Node Allocatable limit across pods
45m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
45m     Normal    NodeHasSufficientPID           node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientPID
45m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeHasSufficientMemory
45m     Warning   InvalidDiskCapacity            node/ip-172-31-32-185.us-west-2.compute.internal   invalid capacity 0 on image filesystem
45m     Normal    RegisteredNode                 node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal event: Registered Node ip-172-31-32-185.us-west-2.compute.internal in Controller
45m     Normal    NodeReady                      node/ip-172-31-32-185.us-west-2.compute.internal   Node ip-172-31-32-185.us-west-2.compute.internal status is now: NodeReady
45m     Normal    NodeAllocatableEnforced        node/ip-172-31-24-171.us-west-2.compute.internal   Updated Node Allocatable limit across pods
45m     Warning   InvalidDiskCapacity            node/ip-172-31-24-171.us-west-2.compute.internal   invalid capacity 0 on image filesystem
45m     Normal    NodeHasSufficientMemory        node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientMemory
45m     Normal    CIDRAssignmentFailed           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: CIDRAssignmentFailed
45m     Normal    NodeHasNoDiskPressure          node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
45m     Normal    NodeHasSufficientPID           node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeHasSufficientPID
45m     Normal    RegisteredNode                 node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal event: Registered Node ip-172-31-24-171.us-west-2.compute.internal in Controller
44m     Normal    NodeReady                      node/ip-172-31-24-171.us-west-2.compute.internal   Node ip-172-31-24-171.us-west-2.compute.internal status is now: NodeReady
44m     Warning   InvalidDiskCapacity            node/ip-172-31-45-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
44m     Normal    NodeHasSufficientMemory        node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
44m     Normal    NodeHasNoDiskPressure          node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
44m     Normal    NodeHasSufficientPID           node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
44m     Normal    NodeAllocatableEnforced        node/ip-172-31-45-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
44m     Normal    RegisteredNode                 node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal event: Registered Node ip-172-31-45-91.us-west-2.compute.internal in Controller
44m     Normal    NodeReady                      node/ip-172-31-45-91.us-west-2.compute.internal    Node ip-172-31-45-91.us-west-2.compute.internal status is now: NodeReady
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
43m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-lzjc4
43m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-lzjc4                     Successfully assigned default/llm-proxy-857bf6d79d-lzjc4 to ip-172-31-45-91.us-west-2.compute.internal
43m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "curlimages/curl:8.21.0"
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "curlimages/curl:8.21.0" in 1.624s (1.624s including waiting). Image size: 10652192 bytes.
42m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
41m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-lzjc4                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
41m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.242s (16.242s including waiting). Image size: 307683482 bytes.
41m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
41m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
41m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.681s (5.681s including waiting). Image size: 64753325 bytes.
41m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
41m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-thxs6                     Successfully assigned default/llm-proxy-857bf6d79d-thxs6 to ip-172-31-41-64.us-west-2.compute.internal
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-thxs6
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.607s (1.607s including waiting). Image size: 10652192 bytes.
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.443s (17.443s including waiting). Image size: 307683482 bytes.
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-thxs6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-thxs6                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-thxs6                     Container created
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-thxs6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.488s (6.488s including waiting). Image size: 64753325 bytes.
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-thxs6                     Container started
32m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
32m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "curlimages/curl:8.21.0"
32m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-4vp47
32m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
32m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-4vp47                     Successfully assigned default/llm-proxy-857bf6d79d-4vp47 to ip-172-31-18-181.us-west-2.compute.internal
32m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
32m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "curlimages/curl:8.21.0" in 1.707s (1.707s including waiting). Image size: 10652192 bytes.
32m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-jlz5f                     Successfully assigned default/llm-proxy-857bf6d79d-jlz5f to ip-172-31-32-185.us-west-2.compute.internal
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-jlz5f
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.443s (13.443s including waiting). Image size: 307683482 bytes.
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
31m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-4vp47                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-4vp47                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.556s (5.556s including waiting). Image size: 64753325 bytes.
31m     Normal    Created                        pod/llm-proxy-857bf6d79d-4vp47                     Container created
31m     Normal    Started                        pod/llm-proxy-857bf6d79d-4vp47                     Container started
31m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-4vp47                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
30m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
30m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-jlz5f                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.524s (13.524s including waiting). Image size: 307683482 bytes.
30m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
30m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.518s (5.518s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
30m     Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
13m     Normal    Created                        pod/llm-proxy-857bf6d79d-lzjc4                     Container created
13m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-lzjc4                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Started                        pod/llm-proxy-857bf6d79d-lzjc4                     Container started
4m11s   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-lzjc4
4m11s   Normal    Killing                        pod/llm-proxy-857bf6d79d-lzjc4                     Stopping container llama-server
4m11s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: All metrics below target
4m11s   Normal    Killing                        pod/llm-proxy-857bf6d79d-lzjc4                     Stopping container fastapi-proxy
4m11s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 4 to 3
3m41s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-lzjc4                     Readiness probe failed: Get "http://10.244.9.2:8000/health": dial tcp 10.244.9.2:8000: connect: connection refused
2m42s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-jlz5f                     Readiness probe failed: HTTP probe failed with statuscode: 503
2m42s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-jlz5f                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m42s   Normal    Started                        pod/llm-proxy-857bf6d79d-jlz5f                     Container started
2m42s   Normal    Created                        pod/llm-proxy-857bf6d79d-jlz5f                     Container created
run_end=1787421302
interrupted=0
