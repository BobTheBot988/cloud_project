# scenario=exp4 run=71
collect_start=1787443968
interval_sec=60
run=71
run_start=1787443974
scenario=exp4
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.28.81:30080 loadgen=ec2-user@54.69.34.188
runs_total=20
collect_stop=1787444137
--- events ---
31m   Normal    Starting                       node/ip-172-31-16-97.us-west-2.compute.internal    
27m   Normal    Starting                       node/ip-172-31-39-155.us-west-2.compute.internal   
33m   Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    
29m   Normal    Starting                       node/ip-172-31-17-227.us-west-2.compute.internal   
28m   Normal    Starting                       node/ip-172-31-33-225.us-west-2.compute.internal   
28m   Normal    Starting                       node/ip-172-31-16-197.us-west-2.compute.internal   
30m   Normal    Starting                       node/ip-172-31-35-139.us-west-2.compute.internal   
34m   Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
34m   Warning   InvalidDiskCapacity            node/ip-172-31-28-81.us-west-2.compute.internal    invalid capacity 0 on image filesystem
34m   Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
34m   Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
34m   Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
34m   Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
33m   Normal    Starting                       node/ip-172-31-28-81.us-west-2.compute.internal    Starting kubelet.
33m   Normal    NodeHasNoDiskPressure          node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
33m   Normal    NodeAllocatableEnforced        node/ip-172-31-28-81.us-west-2.compute.internal    Updated Node Allocatable limit across pods
33m   Normal    NodeHasSufficientPID           node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientPID
33m   Normal    NodeHasSufficientMemory        node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeHasSufficientMemory
33m   Normal    RegisteredNode                 node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal event: Registered Node ip-172-31-28-81.us-west-2.compute.internal in Controller
33m   Normal    NodeReady                      node/ip-172-31-28-81.us-west-2.compute.internal    Node ip-172-31-28-81.us-west-2.compute.internal status is now: NodeReady
31m   Normal    NodeAllocatableEnforced        node/ip-172-31-16-97.us-west-2.compute.internal    Updated Node Allocatable limit across pods
31m   Warning   InvalidDiskCapacity            node/ip-172-31-16-97.us-west-2.compute.internal    invalid capacity 0 on image filesystem
31m   Normal    NodeHasSufficientMemory        node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientMemory
31m   Normal    NodeHasNoDiskPressure          node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
31m   Normal    NodeHasSufficientPID           node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeHasSufficientPID
31m   Normal    RegisteredNode                 node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal event: Registered Node ip-172-31-16-97.us-west-2.compute.internal in Controller
30m   Normal    NodeReady                      node/ip-172-31-16-97.us-west-2.compute.internal    Node ip-172-31-16-97.us-west-2.compute.internal status is now: NodeReady
30m   Warning   InvalidDiskCapacity            node/ip-172-31-35-139.us-west-2.compute.internal   invalid capacity 0 on image filesystem
30m   Normal    NodeAllocatableEnforced        node/ip-172-31-35-139.us-west-2.compute.internal   Updated Node Allocatable limit across pods
30m   Normal    RegisteredNode                 node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal event: Registered Node ip-172-31-35-139.us-west-2.compute.internal in Controller
30m   Normal    NodeHasSufficientPID           node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientPID
30m   Normal    NodeHasNoDiskPressure          node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
30m   Normal    NodeHasSufficientMemory        node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeHasSufficientMemory
30m   Normal    NodeReady                      node/ip-172-31-35-139.us-west-2.compute.internal   Node ip-172-31-35-139.us-west-2.compute.internal status is now: NodeReady
29m   Normal    NodeHasSufficientMemory        node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientMemory
29m   Warning   InvalidDiskCapacity            node/ip-172-31-17-227.us-west-2.compute.internal   invalid capacity 0 on image filesystem
29m   Normal    NodeHasNoDiskPressure          node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
29m   Normal    NodeHasSufficientPID           node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeHasSufficientPID
29m   Normal    NodeAllocatableEnforced        node/ip-172-31-17-227.us-west-2.compute.internal   Updated Node Allocatable limit across pods
29m   Normal    RegisteredNode                 node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal event: Registered Node ip-172-31-17-227.us-west-2.compute.internal in Controller
29m   Normal    NodeReady                      node/ip-172-31-17-227.us-west-2.compute.internal   Node ip-172-31-17-227.us-west-2.compute.internal status is now: NodeReady
28m   Warning   InvalidDiskCapacity            node/ip-172-31-33-225.us-west-2.compute.internal   invalid capacity 0 on image filesystem
28m   Normal    NodeHasSufficientMemory        node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientMemory
28m   Normal    NodeAllocatableEnforced        node/ip-172-31-33-225.us-west-2.compute.internal   Updated Node Allocatable limit across pods
28m   Normal    NodeHasSufficientPID           node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasSufficientPID
28m   Normal    NodeHasNoDiskPressure          node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
28m   Normal    RegisteredNode                 node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal event: Registered Node ip-172-31-33-225.us-west-2.compute.internal in Controller
28m   Normal    NodeReady                      node/ip-172-31-33-225.us-west-2.compute.internal   Node ip-172-31-33-225.us-west-2.compute.internal status is now: NodeReady
28m   Normal    NodeHasNoDiskPressure          node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
28m   Normal    NodeHasSufficientMemory        node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientMemory
28m   Normal    NodeHasSufficientPID           node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeHasSufficientPID
28m   Normal    NodeAllocatableEnforced        node/ip-172-31-16-197.us-west-2.compute.internal   Updated Node Allocatable limit across pods
28m   Warning   InvalidDiskCapacity            node/ip-172-31-16-197.us-west-2.compute.internal   invalid capacity 0 on image filesystem
28m   Normal    RegisteredNode                 node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal event: Registered Node ip-172-31-16-197.us-west-2.compute.internal in Controller
28m   Normal    NodeReady                      node/ip-172-31-16-197.us-west-2.compute.internal   Node ip-172-31-16-197.us-west-2.compute.internal status is now: NodeReady
27m   Warning   InvalidDiskCapacity            node/ip-172-31-39-155.us-west-2.compute.internal   invalid capacity 0 on image filesystem
27m   Normal    NodeHasNoDiskPressure          node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
27m   Normal    NodeHasSufficientPID           node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientPID
27m   Normal    NodeAllocatableEnforced        node/ip-172-31-39-155.us-west-2.compute.internal   Updated Node Allocatable limit across pods
27m   Normal    NodeHasSufficientMemory        node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeHasSufficientMemory
27m   Normal    RegisteredNode                 node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal event: Registered Node ip-172-31-39-155.us-west-2.compute.internal in Controller
27m   Normal    NodeReady                      node/ip-172-31-39-155.us-west-2.compute.internal   Node ip-172-31-39-155.us-west-2.compute.internal status is now: NodeReady
25m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
25m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-l4sc7
25m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-l4sc7                     Successfully assigned default/llm-proxy-857bf6d79d-l4sc7 to ip-172-31-39-155.us-west-2.compute.internal
25m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "curlimages/curl:8.21.0"
25m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
25m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
25m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
24m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
24m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.504s (17.504s including waiting). Image size: 307683482 bytes.
24m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
24m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
24m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-l4sc7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
24m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-l4sc7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.423s (5.423s including waiting). Image size: 64753325 bytes.
24m   Normal    Created                        pod/llm-proxy-857bf6d79d-l4sc7                     Container created
24m   Normal    Started                        pod/llm-proxy-857bf6d79d-l4sc7                     Container started
24m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-l4sc7                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
23m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp4             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
23m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp4             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-z8vvr
18m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 2; reason: cpu resource utilization (percentage of request) above target
18m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-z8vvr                     Successfully assigned default/llm-proxy-857bf6d79d-z8vvr to ip-172-31-35-139.us-west-2.compute.internal
18m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
18m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "curlimages/curl:8.21.0"
18m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
18m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
18m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "curlimages/curl:8.21.0" in 1.633s (1.633s including waiting). Image size: 10652192 bytes.
17m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.072s (13.072s including waiting). Image size: 307683482 bytes.
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
17m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-z8vvr                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
17m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-z8vvr                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.786s (5.786s including waiting). Image size: 64753325 bytes.
17m   Normal    Created                        pod/llm-proxy-857bf6d79d-z8vvr                     Container created
17m   Normal    Started                        pod/llm-proxy-857bf6d79d-z8vvr                     Container started
17m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-z8vvr                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 2 to 3
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "curlimages/curl:8.21.0"
15m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-tmxvt                     Successfully assigned default/llm-proxy-857bf6d79d-tmxvt to ip-172-31-17-227.us-west-2.compute.internal
15m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-tmxvt
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 3; reason: cpu resource utilization (percentage of request) above target
15m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
15m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
15m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "curlimages/curl:8.21.0" in 1.592s (1.592s including waiting). Image size: 10652192 bytes.
15m   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 3 to 4
15m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-gbrzg                     Successfully assigned default/llm-proxy-857bf6d79d-gbrzg to ip-172-31-33-225.us-west-2.compute.internal
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "curlimages/curl:8.21.0"
15m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp4             New size: 4; reason: cpu resource utilization (percentage of request) above target
15m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-gbrzg
15m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "curlimages/curl:8.21.0" in 1.926s (1.927s including waiting). Image size: 10652192 bytes.
15m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
15m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
15m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
14m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-tmxvt                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
14m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
14m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.497s (17.497s including waiting). Image size: 307683482 bytes.
14m   Normal    Created                        pod/llm-proxy-857bf6d79d-tmxvt                     Container created
14m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-tmxvt                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.702s (5.702s including waiting). Image size: 64753325 bytes.
14m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-tmxvt                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
14m   Normal    Started                        pod/llm-proxy-857bf6d79d-tmxvt                     Container started
14m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
14m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
14m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-gbrzg                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
14m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
14m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.685s (12.685s including waiting). Image size: 307683482 bytes.
14m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-gbrzg                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.118s (5.118s including waiting). Image size: 64753325 bytes.
14m   Normal    Created                        pod/llm-proxy-857bf6d79d-gbrzg                     Container created
14m   Normal    Started                        pod/llm-proxy-857bf6d79d-gbrzg                     Container started
14m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-gbrzg                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
run_end=1787444137
interrupted=0
