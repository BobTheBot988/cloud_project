# scenario=testA run=5
collect_start=1787944912
interval_sec=60
run=1
run_start=1787944915
test=TestA(ramp)
u_max=50 size=mix
target=http://35.162.102.130:30080 loadgen=ec2-user@54.82.207.167
runs_total=8
collect_stop=1787947280
--- events ---
46m     Normal    Starting                       node/ip-172-31-38-225.us-west-2.compute.internal   
43m     Normal    Starting                       node/ip-172-31-24-76.us-west-2.compute.internal    
46m     Normal    Starting                       node/ip-172-31-25-68.us-west-2.compute.internal    
45m     Normal    Starting                       node/ip-172-31-22-91.us-west-2.compute.internal    
44m     Normal    Starting                       node/ip-172-31-44-19.us-west-2.compute.internal    
49m     Normal    Starting                       node/ip-172-31-16-237.us-west-2.compute.internal   
43m     Normal    Starting                       node/ip-172-31-44-1.us-west-2.compute.internal     
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientPID           node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-237.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    Starting                       node/ip-172-31-16-237.us-west-2.compute.internal   Starting kubelet.
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-237.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    NodeHasSufficientPID           node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    RegisteredNode                 node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal event: Registered Node ip-172-31-16-237.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-16-237.us-west-2.compute.internal   Node ip-172-31-16-237.us-west-2.compute.internal status is now: NodeReady
47m     Normal    NodeAllocatableEnforced        node/ip-172-31-25-68.us-west-2.compute.internal    Updated Node Allocatable limit across pods
47m     Normal    NodeHasSufficientPID           node/ip-172-31-25-68.us-west-2.compute.internal    Node ip-172-31-25-68.us-west-2.compute.internal status is now: NodeHasSufficientPID
47m     Normal    NodeHasNoDiskPressure          node/ip-172-31-25-68.us-west-2.compute.internal    Node ip-172-31-25-68.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
47m     Normal    NodeHasSufficientMemory        node/ip-172-31-25-68.us-west-2.compute.internal    Node ip-172-31-25-68.us-west-2.compute.internal status is now: NodeHasSufficientMemory
47m     Normal    RegisteredNode                 node/ip-172-31-25-68.us-west-2.compute.internal    Node ip-172-31-25-68.us-west-2.compute.internal event: Registered Node ip-172-31-25-68.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-25-68.us-west-2.compute.internal    Node ip-172-31-25-68.us-west-2.compute.internal status is now: NodeReady
46m     Normal    CIDRAssignmentFailed           node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal status is now: CIDRAssignmentFailed
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    NodeHasSufficientPID           node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-38-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Normal    RegisteredNode                 node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal event: Registered Node ip-172-31-38-225.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-38-225.us-west-2.compute.internal   Node ip-172-31-38-225.us-west-2.compute.internal status is now: NodeReady
45m     Normal    NodeAllocatableEnforced        node/ip-172-31-22-91.us-west-2.compute.internal    Updated Node Allocatable limit across pods
45m     Warning   InvalidDiskCapacity            node/ip-172-31-22-91.us-west-2.compute.internal    invalid capacity 0 on image filesystem
45m     Normal    NodeHasSufficientMemory        node/ip-172-31-22-91.us-west-2.compute.internal    Node ip-172-31-22-91.us-west-2.compute.internal status is now: NodeHasSufficientMemory
45m     Normal    NodeHasNoDiskPressure          node/ip-172-31-22-91.us-west-2.compute.internal    Node ip-172-31-22-91.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
45m     Normal    NodeHasSufficientPID           node/ip-172-31-22-91.us-west-2.compute.internal    Node ip-172-31-22-91.us-west-2.compute.internal status is now: NodeHasSufficientPID
45m     Normal    RegisteredNode                 node/ip-172-31-22-91.us-west-2.compute.internal    Node ip-172-31-22-91.us-west-2.compute.internal event: Registered Node ip-172-31-22-91.us-west-2.compute.internal in Controller
45m     Normal    NodeReady                      node/ip-172-31-22-91.us-west-2.compute.internal    Node ip-172-31-22-91.us-west-2.compute.internal status is now: NodeReady
44m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal status is now: NodeHasSufficientMemory
44m     Normal    CIDRAssignmentFailed           node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal status is now: CIDRAssignmentFailed
44m     Warning   InvalidDiskCapacity            node/ip-172-31-44-19.us-west-2.compute.internal    invalid capacity 0 on image filesystem
44m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
44m     Normal    NodeHasSufficientPID           node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal status is now: NodeHasSufficientPID
44m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-19.us-west-2.compute.internal    Updated Node Allocatable limit across pods
44m     Normal    RegisteredNode                 node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal event: Registered Node ip-172-31-44-19.us-west-2.compute.internal in Controller
44m     Normal    NodeReady                      node/ip-172-31-44-19.us-west-2.compute.internal    Node ip-172-31-44-19.us-west-2.compute.internal status is now: NodeReady
44m     Normal    Starting                       node/ip-172-31-24-76.us-west-2.compute.internal    Starting kubelet.
44m     Normal    NodeHasNoDiskPressure          node/ip-172-31-24-76.us-west-2.compute.internal    Node ip-172-31-24-76.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
44m     Normal    NodeHasSufficientPID           node/ip-172-31-24-76.us-west-2.compute.internal    Node ip-172-31-24-76.us-west-2.compute.internal status is now: NodeHasSufficientPID
44m     Normal    NodeAllocatableEnforced        node/ip-172-31-24-76.us-west-2.compute.internal    Updated Node Allocatable limit across pods
44m     Normal    NodeHasSufficientMemory        node/ip-172-31-24-76.us-west-2.compute.internal    Node ip-172-31-24-76.us-west-2.compute.internal status is now: NodeHasSufficientMemory
43m     Normal    RegisteredNode                 node/ip-172-31-24-76.us-west-2.compute.internal    Node ip-172-31-24-76.us-west-2.compute.internal event: Registered Node ip-172-31-24-76.us-west-2.compute.internal in Controller
43m     Normal    NodeReady                      node/ip-172-31-24-76.us-west-2.compute.internal    Node ip-172-31-24-76.us-west-2.compute.internal status is now: NodeReady
43m     Warning   InvalidDiskCapacity            node/ip-172-31-44-1.us-west-2.compute.internal     invalid capacity 0 on image filesystem
43m     Normal    CIDRAssignmentFailed           node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal status is now: CIDRAssignmentFailed
43m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-1.us-west-2.compute.internal     Updated Node Allocatable limit across pods
43m     Normal    NodeHasSufficientPID           node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal status is now: NodeHasSufficientPID
43m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
43m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal status is now: NodeHasSufficientMemory
43m     Normal    RegisteredNode                 node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal event: Registered Node ip-172-31-44-1.us-west-2.compute.internal in Controller
43m     Normal    NodeReady                      node/ip-172-31-44-1.us-west-2.compute.internal     Node ip-172-31-44-1.us-west-2.compute.internal status is now: NodeReady
42m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 0 to 1
42m     Warning   FailedToCreateEndpoint         endpoints/llm-proxy                                Failed to create endpoint for service default/llm-proxy: endpoints "llm-proxy" already exists
42m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-gkt7j
42m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-gkt7j                     Successfully assigned default/llm-proxy-7dc458997b-gkt7j to ip-172-31-44-1.us-west-2.compute.internal
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gkt7j                     Pulling image "curlimages/curl:8.21.0"
41m     Normal    Started                        pod/llm-proxy-7dc458997b-gkt7j                     Container started
41m     Normal    Created                        pod/llm-proxy-7dc458997b-gkt7j                     Container created
41m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gkt7j                     Successfully pulled image "curlimages/curl:8.21.0" in 1.664s (1.664s including waiting). Image size: 10652192 bytes.
41m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gkt7j                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
40m     Normal    Created                        pod/llm-proxy-7dc458997b-gkt7j                     Container created
40m     Normal    Started                        pod/llm-proxy-7dc458997b-gkt7j                     Container started
40m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gkt7j                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gkt7j                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.006s (18.006s including waiting). Image size: 309744732 bytes.
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gkt7j                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.849s (5.849s including waiting). Image size: 64753325 bytes.
40m     Normal    Created                        pod/llm-proxy-7dc458997b-gkt7j                     Container created
40m     Normal    Started                        pod/llm-proxy-7dc458997b-gkt7j                     Container started
40m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-gkt7j                     Readiness probe failed: Get "http://10.244.8.2:8000/health": dial tcp 10.244.8.2:8000: connect: connection refused
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-prlkf                     Successfully assigned default/llm-proxy-7dc458997b-prlkf to ip-172-31-38-225.us-west-2.compute.internal
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-prlkf
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-gkt7j                     Stopping container llama-server
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-gkt7j                     Stopping container fastapi-proxy
40m     Normal    Pulling                        pod/llm-proxy-7dc458997b-prlkf                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-prlkf                     Successfully pulled image "curlimages/curl:8.21.0" in 1.66s (1.66s including waiting). Image size: 10652192 bytes.
40m     Normal    Created                        pod/llm-proxy-7dc458997b-prlkf                     Container created
40m     Normal    Started                        pod/llm-proxy-7dc458997b-prlkf                     Container started
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-prlkf                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-prlkf                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.934s (12.934s including waiting). Image size: 309744732 bytes.
39m     Normal    Created                        pod/llm-proxy-7dc458997b-prlkf                     Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-prlkf                     Container started
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-prlkf                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-prlkf                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.624s (5.624s including waiting). Image size: 64753325 bytes.
39m     Normal    Started                        pod/llm-proxy-7dc458997b-prlkf                     Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-prlkf                     Container created
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-qj658
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-qj658                     Successfully assigned default/llm-proxy-7dc458997b-qj658 to ip-172-31-44-1.us-west-2.compute.internal
38m     Normal    Started                        pod/llm-proxy-7dc458997b-qj658                     Container started
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qj658                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-qj658                     Container created
37m     Normal    Created                        pod/llm-proxy-7dc458997b-qj658                     Container created
37m     Normal    Created                        pod/llm-proxy-7dc458997b-qj658                     Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qj658                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-qj658                     Container started
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-qj658                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qj658                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 351ms (351ms including waiting). Image size: 64753325 bytes.
37m     Normal    Started                        pod/llm-proxy-7dc458997b-qj658                     Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qj658                     Readiness probe failed: Get "http://10.244.8.3:8000/health": dial tcp 10.244.8.3:8000: connect: connection refused
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-gpprg
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 2 to 4
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-fqzsr                     Successfully assigned default/llm-proxy-7dc458997b-fqzsr to ip-172-31-22-91.us-west-2.compute.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-fqzsr
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-gpprg                     Successfully assigned default/llm-proxy-7dc458997b-gpprg to ip-172-31-44-19.us-west-2.compute.internal
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-fqzsr                     Pulling image "curlimages/curl:8.21.0"
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gpprg                     Pulling image "curlimages/curl:8.21.0"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-fqzsr                     Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fqzsr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.762s (1.762s including waiting). Image size: 10652192 bytes.
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gpprg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.673s (1.673s including waiting). Image size: 10652192 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-gpprg                     Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-fqzsr                     Container started
36m     Normal    Started                        pod/llm-proxy-7dc458997b-gpprg                     Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-fqzsr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-fqzsr                     Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-fqzsr                     Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fqzsr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.065s (19.065s including waiting). Image size: 309744732 bytes.
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-fqzsr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gpprg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
35m     Normal    Created                        pod/llm-proxy-7dc458997b-fqzsr                     Container created
35m     Normal    Started                        pod/llm-proxy-7dc458997b-fqzsr                     Container started
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-fqzsr                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fqzsr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.748s (5.749s including waiting). Image size: 64753325 bytes.
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gpprg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Started                        pod/llm-proxy-7dc458997b-gpprg                     Container started
35m     Normal    Created                        pod/llm-proxy-7dc458997b-gpprg                     Container created
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gpprg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.134s (13.134s including waiting). Image size: 309744732 bytes.
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-gpprg                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
35m     Normal    Started                        pod/llm-proxy-7dc458997b-gpprg                     Container started
35m     Normal    Created                        pod/llm-proxy-7dc458997b-gpprg                     Container created
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gpprg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.453s (5.453s including waiting). Image size: 64753325 bytes.
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-99rt2
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-wnhg9
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 4 to 6
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-99rt2                     Successfully assigned default/llm-proxy-7dc458997b-99rt2 to ip-172-31-24-76.us-west-2.compute.internal
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-wnhg9                     Successfully assigned default/llm-proxy-7dc458997b-wnhg9 to ip-172-31-25-68.us-west-2.compute.internal
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-99rt2                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wnhg9                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Created                        pod/llm-proxy-7dc458997b-99rt2                     Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99rt2                     Successfully pulled image "curlimages/curl:8.21.0" in 1.768s (1.768s including waiting). Image size: 10652192 bytes.
31m     Normal    Started                        pod/llm-proxy-7dc458997b-99rt2                     Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wnhg9                     Successfully pulled image "curlimages/curl:8.21.0" in 1.733s (1.733s including waiting). Image size: 10652192 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-wnhg9                     Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-wnhg9                     Container started
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wnhg9                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-99rt2                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wnhg9                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.145s (18.145s including waiting). Image size: 309744732 bytes.
30m     Normal    Created                        pod/llm-proxy-7dc458997b-wnhg9                     Container created
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wnhg9                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Started                        pod/llm-proxy-7dc458997b-wnhg9                     Container started
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-99rt2                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Created                        pod/llm-proxy-7dc458997b-99rt2                     Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99rt2                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.7s (17.7s including waiting). Image size: 309744732 bytes.
30m     Normal    Started                        pod/llm-proxy-7dc458997b-99rt2                     Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wnhg9                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.589s (6.589s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-7dc458997b-wnhg9                     Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-wnhg9                     Container started
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-wnhg9                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
30m     Normal    Started                        pod/llm-proxy-7dc458997b-99rt2                     Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99rt2                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.772s (5.772s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-7dc458997b-99rt2                     Container created
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-99rt2                     Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-99rt2                     Stopping container fastapi-proxy
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: All metrics below target
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 6 to 5
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-99rt2                     Stopping container llama-server
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-99rt2
8m13s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-fqzsr
8m13s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 5 to 4
8m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-fqzsr                     Stopping container fastapi-proxy
8m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-fqzsr                     Stopping container llama-server
8m13s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: All metrics below target
6m13s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 3; reason: All metrics below target
6m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-prlkf                     Stopping container llama-server
6m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-prlkf                     Stopping container fastapi-proxy
6m13s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 4 to 3
6m13s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-prlkf
5m48s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-prlkf                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
4m28s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: All metrics below target
4m28s   Normal    Killing                        pod/llm-proxy-7dc458997b-gpprg                     Stopping container fastapi-proxy
4m28s   Normal    Killing                        pod/llm-proxy-7dc458997b-gpprg                     Stopping container llama-server
4m28s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-gpprg
4m28s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 3 to 2
3m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-qj658                     Stopping container fastapi-proxy
3m13s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-qj658
3m13s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 1; reason: All metrics below target
3m13s   Normal    Killing                        pod/llm-proxy-7dc458997b-qj658                     Stopping container llama-server
3m13s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 2 to 1
run_end=1787947280
interrupted=0
