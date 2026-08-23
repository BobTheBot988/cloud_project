# scenario=exp4 run=78
collect_start=1787445120
interval_sec=60
run=78
run_start=1787445123
scenario=exp4
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787445281
--- events ---
48m     Normal    Starting                       node/ip-172-31-17-227.us-west-2.compute.internal   
49m     Normal    Starting                       node/ip-172-31-35-139.us-west-2.compute.internal   
47m     Normal    Starting                       node/ip-172-31-33-225.us-west-2.compute.internal   
46m     Normal    Starting                       node/ip-172-31-39-155.us-west-2.compute.internal   
52m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    
50m     Normal    Starting                       node/ip-172-31-16-97.us-west-2.compute.internal    
47m     Normal    Starting                       node/ip-172-31-16-197.us-west-2.compute.internal   
53m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
53m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
53m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
53m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
53m     Warning   InvalidDiskCapacity            node/ip-172-31-28-81.us-west-2.compute.internal    invalid capacity 0 on image filesystem
53m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
53m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
53m     Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
53m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
53m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
53m     Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
52m     Normal    RegisteredNode                 node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal event: Registered Node ip-172-31-28-81.us-west-2.compute.internal in Controller
52m     Normal    NodeReady                      node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeReady
50m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-97.us-west-2.compute.internal    Updated Node Allocatable limit across pods
50m     Warning   InvalidDiskCapacity            node/ip-172-31-16-97.us-west-2.compute.internal    invalid capacity 0 on image filesystem
50m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientMemory
50m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
50m     Normal    NodeHasSufficientPID           node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientPID
50m     Normal    RegisteredNode                 node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal event: Registered Node ip-172-31-16-97.us-west-2.compute.internal in Controller
50m     Normal    NodeReady                      node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeReady
49m     Warning   InvalidDiskCapacity            node/ip-172-31-35-139.us-west-2.compute.internal   invalid capacity 0 on image filesystem
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-139.us-west-2.compute.internal   Updated Node Allocatable limit across pods
49m     Normal    NodeHasSufficientPID           node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    RegisteredNode                 node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal event: Registered Node ip-172-31-35-139.us-west-2.compute.internal in Controller
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeReady                      node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeReady
48m     Warning   InvalidDiskCapacity            node/ip-172-31-17-227.us-west-2.compute.internal   invalid capacity 0 on image filesystem
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Normal    NodeHasSufficientPID           node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-17-227.us-west-2.compute.internal   Updated Node Allocatable limit across pods
48m     Normal    RegisteredNode                 node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal event: Registered Node ip-172-31-17-227.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeReady
48m     Warning   InvalidDiskCapacity            node/ip-172-31-33-225.us-west-2.compute.internal   invalid capacity 0 on image filesystem
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Normal    NodeHasSufficientPID           node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
48m     Normal    RegisteredNode                 node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal event: Registered Node ip-172-31-33-225.us-west-2.compute.internal in Controller
47m     Normal    NodeReady                      node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeReady
47m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
47m     Normal    NodeHasSufficientPID           node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientPID
47m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-197.us-west-2.compute.internal   Updated Node Allocatable limit across pods
47m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientMemory
47m     Warning   InvalidDiskCapacity            node/ip-172-31-16-197.us-west-2.compute.internal   invalid capacity 0 on image filesystem
47m     Normal    RegisteredNode                 node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal event: Registered Node ip-172-31-16-197.us-west-2.compute.internal in Controller
47m     Normal    NodeReady                      node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeReady
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeHasSufficientPID           node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Warning   InvalidDiskCapacity            node/ip-172-31-39-155.us-west-2.compute.internal   invalid capacity 0 on image filesystem
46m     Normal    RegisteredNode                 node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal event: Registered Node ip-172-31-39-155.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeReady
44m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-l4sc7
44m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7                     Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
44m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "curlimages/curl:8.21.0"
44m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
44m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
44m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
43m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
43m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
43m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
43m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
43m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
37m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "curlimages/curl:8.21.0"
37m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr                     Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-z8vvr
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
37m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
37m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
37m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
36m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
36m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
36m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
36m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-tmxvt                     Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-tmxvt
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "curlimages/curl:8.21.0"
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-gbrzg                     Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-gbrzg
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
34m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
15m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
13m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
13m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
13m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
13m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: HTTP probe failed with statuscode: 503
5m26s   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
5m26s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m26s   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
4m46s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787445281
interrupted=0
