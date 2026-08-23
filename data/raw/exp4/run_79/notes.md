# scenario=exp4 run=79
collect_start=1787445281
interval_sec=60
run=79
run_start=1787445285
scenario=exp4
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787445443
--- events ---
51m     Normal    Starting                       node/ip-172-31-17-227.us-west-2.compute.internal   
52m     Normal    Starting                       node/ip-172-31-35-139.us-west-2.compute.internal   
50m     Normal    Starting                       node/ip-172-31-33-225.us-west-2.compute.internal   
49m     Normal    Starting                       node/ip-172-31-39-155.us-west-2.compute.internal   
55m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    
52m     Normal    Starting                       node/ip-172-31-16-97.us-west-2.compute.internal    
49m     Normal    Starting                       node/ip-172-31-16-197.us-west-2.compute.internal   
55m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
55m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
55m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
55m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
55m     Warning   InvalidDiskCapacity            node/ip-172-31-28-81.us-west-2.compute.internal    invalid capacity 0 on image filesystem
55m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
55m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
55m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
55m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
55m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
55m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
55m     Normal    RegisteredNode                 node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal event: Registered Node ip-172-31-28-81.us-west-2.compute.internal in Controller
55m     Normal    NodeReady                      node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeReady
52m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-97.us-west-2.compute.internal    Updated Node Allocatable limit across pods
52m     Warning   InvalidDiskCapacity            node/ip-172-31-16-97.us-west-2.compute.internal    invalid capacity 0 on image filesystem
52m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientMemory
52m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
52m     Normal    NodeHasSufficientPID           node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientPID
52m     Normal    RegisteredNode                 node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal event: Registered Node ip-172-31-16-97.us-west-2.compute.internal in Controller
52m     Normal    NodeReady                      node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeReady
52m     Warning   InvalidDiskCapacity            node/ip-172-31-35-139.us-west-2.compute.internal   invalid capacity 0 on image filesystem
52m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-139.us-west-2.compute.internal   Updated Node Allocatable limit across pods
52m     Normal    NodeHasSufficientPID           node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientPID
52m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientMemory
52m     Normal    RegisteredNode                 node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal event: Registered Node ip-172-31-35-139.us-west-2.compute.internal in Controller
52m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
52m     Normal    NodeReady                      node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeReady
51m     Warning   InvalidDiskCapacity            node/ip-172-31-17-227.us-west-2.compute.internal   invalid capacity 0 on image filesystem
51m     Normal    NodeHasSufficientMemory        node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientMemory
51m     Normal    NodeHasNoDiskPressure          node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeHasSufficientPID           node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientPID
51m     Normal    NodeAllocatableEnforced        node/ip-172-31-17-227.us-west-2.compute.internal   Updated Node Allocatable limit across pods
51m     Normal    RegisteredNode                 node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal event: Registered Node ip-172-31-17-227.us-west-2.compute.internal in Controller
51m     Normal    NodeReady                      node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeReady
50m     Warning   InvalidDiskCapacity            node/ip-172-31-33-225.us-west-2.compute.internal   invalid capacity 0 on image filesystem
50m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
50m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
50m     Normal    NodeHasSufficientPID           node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
50m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
50m     Normal    RegisteredNode                 node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal event: Registered Node ip-172-31-33-225.us-west-2.compute.internal in Controller
50m     Normal    NodeReady                      node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeReady
50m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
50m     Normal    NodeHasSufficientPID           node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientPID
50m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-197.us-west-2.compute.internal   Updated Node Allocatable limit across pods
50m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientMemory
50m     Warning   InvalidDiskCapacity            node/ip-172-31-16-197.us-west-2.compute.internal   invalid capacity 0 on image filesystem
49m     Normal    RegisteredNode                 node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal event: Registered Node ip-172-31-16-197.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeReady
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    NodeHasSufficientPID           node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Warning   InvalidDiskCapacity            node/ip-172-31-39-155.us-west-2.compute.internal   invalid capacity 0 on image filesystem
49m     Normal    RegisteredNode                 node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal event: Registered Node ip-172-31-39-155.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeReady
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-l4sc7
47m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7                     Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "curlimages/curl:8.21.0"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
46m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
46m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
46m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
46m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
46m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
46m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
45m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
45m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
40m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-z8vvr
40m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr                     Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
40m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
39m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
39m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
39m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
39m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
39m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
39m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-tmxvt
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-tmxvt                     Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-gbrzg                     Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-gbrzg
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
35m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
35m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
35m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
35m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
35m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
18m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
16m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
16m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
16m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: HTTP probe failed with statuscode: 503
8m8s    Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m8s    Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
8m8s    Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
7m28s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m5s    Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787445443
interrupted=0
