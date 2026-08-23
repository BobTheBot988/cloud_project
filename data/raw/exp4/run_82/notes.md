# scenario=exp4 run=82
collect_start=1787445769
interval_sec=60
run=82
run_start=1787445773
scenario=exp4
test=TestB(steady)
level_users=50 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787445930
--- events ---
57m     Normal    Starting                       node/ip-172-31-39-155.us-west-2.compute.internal   
58m     Normal    Starting                       node/ip-172-31-33-225.us-west-2.compute.internal   
60m     Normal    Starting                       node/ip-172-31-35-139.us-west-2.compute.internal   
59m     Normal    Starting                       node/ip-172-31-17-227.us-west-2.compute.internal   
60m     Normal    Starting                       node/ip-172-31-16-97.us-west-2.compute.internal    
58m     Normal    Starting                       node/ip-172-31-16-197.us-west-2.compute.internal   
61m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-97.us-west-2.compute.internal    Updated Node Allocatable limit across pods
61m     Warning   InvalidDiskCapacity            node/ip-172-31-16-97.us-west-2.compute.internal    invalid capacity 0 on image filesystem
61m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientMemory
61m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
61m     Normal    NodeHasSufficientPID           node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientPID
60m     Normal    RegisteredNode                 node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal event: Registered Node ip-172-31-16-97.us-west-2.compute.internal in Controller
60m     Normal    NodeReady                      node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeReady
60m     Normal    NodeAllocatableEnforced        node/ip-172-31-35-139.us-west-2.compute.internal   Updated Node Allocatable limit across pods
60m     Warning   InvalidDiskCapacity            node/ip-172-31-35-139.us-west-2.compute.internal   invalid capacity 0 on image filesystem
60m     Normal    NodeHasSufficientPID           node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientPID
60m     Normal    RegisteredNode                 node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal event: Registered Node ip-172-31-35-139.us-west-2.compute.internal in Controller
60m     Normal    NodeHasSufficientMemory        node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientMemory
60m     Normal    NodeHasNoDiskPressure          node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
60m     Normal    NodeReady                      node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeReady
59m     Warning   InvalidDiskCapacity            node/ip-172-31-17-227.us-west-2.compute.internal   invalid capacity 0 on image filesystem
59m     Normal    NodeAllocatableEnforced        node/ip-172-31-17-227.us-west-2.compute.internal   Updated Node Allocatable limit across pods
59m     Normal    NodeHasSufficientPID           node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientPID
59m     Normal    NodeHasNoDiskPressure          node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
59m     Normal    NodeHasSufficientMemory        node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientMemory
59m     Normal    RegisteredNode                 node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal event: Registered Node ip-172-31-17-227.us-west-2.compute.internal in Controller
59m     Normal    NodeReady                      node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeReady
58m     Warning   InvalidDiskCapacity            node/ip-172-31-33-225.us-west-2.compute.internal   invalid capacity 0 on image filesystem
58m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
58m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
58m     Normal    NodeHasSufficientPID           node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
58m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
58m     Normal    RegisteredNode                 node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal event: Registered Node ip-172-31-33-225.us-west-2.compute.internal in Controller
58m     Normal    NodeReady                      node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeReady
58m     Normal    NodeHasNoDiskPressure          node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
58m     Warning   InvalidDiskCapacity            node/ip-172-31-16-197.us-west-2.compute.internal   invalid capacity 0 on image filesystem
58m     Normal    NodeHasSufficientMemory        node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientMemory
58m     Normal    NodeAllocatableEnforced        node/ip-172-31-16-197.us-west-2.compute.internal   Updated Node Allocatable limit across pods
58m     Normal    NodeHasSufficientPID           node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientPID
58m     Normal    RegisteredNode                 node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal event: Registered Node ip-172-31-16-197.us-west-2.compute.internal in Controller
57m     Normal    NodeReady                      node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeReady
57m     Warning   InvalidDiskCapacity            node/ip-172-31-39-155.us-west-2.compute.internal   invalid capacity 0 on image filesystem
57m     Normal    NodeHasSufficientMemory        node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
57m     Normal    NodeHasNoDiskPressure          node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
57m     Normal    NodeHasSufficientPID           node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
57m     Normal    NodeAllocatableEnforced        node/ip-172-31-39-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
57m     Normal    RegisteredNode                 node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal event: Registered Node ip-172-31-39-155.us-west-2.compute.internal in Controller
57m     Normal    NodeReady                      node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeReady
55m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
55m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7                     Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
55m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-l4sc7
55m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "curlimages/curl:8.21.0"
55m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
55m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
55m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
54m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
54m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
54m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
54m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
54m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
54m     Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
54m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
54m     Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
54m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
53m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
53m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
48m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
48m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
48m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-z8vvr
48m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "curlimages/curl:8.21.0"
48m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr                     Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
48m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
48m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
48m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
47m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
45m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
45m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-tmxvt                     Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
45m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "curlimages/curl:8.21.0"
45m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
45m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-tmxvt
45m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
45m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
45m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
45m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
45m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "curlimages/curl:8.21.0"
45m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-gbrzg
45m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
45m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-gbrzg                     Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
45m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
45m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
45m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
44m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
44m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
44m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
44m     Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
44m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
44m     Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
44m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
44m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
43m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
43m     Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
43m     Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
26m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
24m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: HTTP probe failed with statuscode: 503
16m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
16m     Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
16m     Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
15m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
10m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
7m30s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt                     Readiness probe failed: Get "http://10.244.3.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
6m13s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m13s   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
6m13s   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
run_end=1787445930
interrupted=0
