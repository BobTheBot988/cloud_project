# scenario=testA run=5
collect_start=1787956900
interval_sec=60
run=5
run_start=1787956903
test=TestA(ramp)
u_max=50 size=mix
target=http://34.217.168.212:30080 loadgen=ec2-user@3.81.139.164
runs_total=10
collect_stop=1787959265
--- events ---
45m     Normal    Starting                       node/ip-172-31-42-209.us-west-2.compute.internal   
46m     Normal    Starting                       node/ip-172-31-40-224.us-west-2.compute.internal   
44m     Normal    Starting                       node/ip-172-31-30-105.us-west-2.compute.internal   
46m     Normal    Starting                       node/ip-172-31-33-72.us-west-2.compute.internal    
43m     Normal    Starting                       node/ip-172-31-31-154.us-west-2.compute.internal   
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-33-72.us-west-2.compute.internal    Updated Node Allocatable limit across pods
46m     Warning   InvalidDiskCapacity            node/ip-172-31-33-72.us-west-2.compute.internal    invalid capacity 0 on image filesystem
46m     Normal    NodeHasSufficientPID           node/ip-172-31-33-72.us-west-2.compute.internal    Node ip-172-31-33-72.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-33-72.us-west-2.compute.internal    Node ip-172-31-33-72.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-33-72.us-west-2.compute.internal    Node ip-172-31-33-72.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    RegisteredNode                 node/ip-172-31-33-72.us-west-2.compute.internal    Node ip-172-31-33-72.us-west-2.compute.internal event: Registered Node ip-172-31-33-72.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-33-72.us-west-2.compute.internal    Node ip-172-31-33-72.us-west-2.compute.internal status is now: NodeReady
46m     Normal    NodeAllocatableEnforced        node/ip-172-31-40-224.us-west-2.compute.internal   Updated Node Allocatable limit across pods
46m     Normal    Starting                       node/ip-172-31-40-224.us-west-2.compute.internal   Starting kubelet.
46m     Warning   InvalidDiskCapacity            node/ip-172-31-40-224.us-west-2.compute.internal   invalid capacity 0 on image filesystem
46m     Normal    NodeHasSufficientMemory        node/ip-172-31-40-224.us-west-2.compute.internal   Node ip-172-31-40-224.us-west-2.compute.internal status is now: NodeHasSufficientMemory
46m     Normal    NodeHasNoDiskPressure          node/ip-172-31-40-224.us-west-2.compute.internal   Node ip-172-31-40-224.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
46m     Normal    NodeHasSufficientPID           node/ip-172-31-40-224.us-west-2.compute.internal   Node ip-172-31-40-224.us-west-2.compute.internal status is now: NodeHasSufficientPID
46m     Normal    RegisteredNode                 node/ip-172-31-40-224.us-west-2.compute.internal   Node ip-172-31-40-224.us-west-2.compute.internal event: Registered Node ip-172-31-40-224.us-west-2.compute.internal in Controller
46m     Normal    NodeReady                      node/ip-172-31-40-224.us-west-2.compute.internal   Node ip-172-31-40-224.us-west-2.compute.internal status is now: NodeReady
45m     Warning   InvalidDiskCapacity            node/ip-172-31-42-209.us-west-2.compute.internal   invalid capacity 0 on image filesystem
45m     Normal    Starting                       node/ip-172-31-42-209.us-west-2.compute.internal   Starting kubelet.
45m     Normal    NodeAllocatableEnforced        node/ip-172-31-42-209.us-west-2.compute.internal   Updated Node Allocatable limit across pods
45m     Normal    NodeHasSufficientPID           node/ip-172-31-42-209.us-west-2.compute.internal   Node ip-172-31-42-209.us-west-2.compute.internal status is now: NodeHasSufficientPID
45m     Normal    NodeHasNoDiskPressure          node/ip-172-31-42-209.us-west-2.compute.internal   Node ip-172-31-42-209.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
45m     Normal    NodeHasSufficientMemory        node/ip-172-31-42-209.us-west-2.compute.internal   Node ip-172-31-42-209.us-west-2.compute.internal status is now: NodeHasSufficientMemory
45m     Normal    RegisteredNode                 node/ip-172-31-42-209.us-west-2.compute.internal   Node ip-172-31-42-209.us-west-2.compute.internal event: Registered Node ip-172-31-42-209.us-west-2.compute.internal in Controller
45m     Normal    NodeReady                      node/ip-172-31-42-209.us-west-2.compute.internal   Node ip-172-31-42-209.us-west-2.compute.internal status is now: NodeReady
44m     Normal    NodeHasNoDiskPressure          node/ip-172-31-30-105.us-west-2.compute.internal   Node ip-172-31-30-105.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
44m     Normal    NodeAllocatableEnforced        node/ip-172-31-30-105.us-west-2.compute.internal   Updated Node Allocatable limit across pods
44m     Normal    NodeHasSufficientPID           node/ip-172-31-30-105.us-west-2.compute.internal   Node ip-172-31-30-105.us-west-2.compute.internal status is now: NodeHasSufficientPID
44m     Warning   InvalidDiskCapacity            node/ip-172-31-30-105.us-west-2.compute.internal   invalid capacity 0 on image filesystem
44m     Normal    NodeHasSufficientMemory        node/ip-172-31-30-105.us-west-2.compute.internal   Node ip-172-31-30-105.us-west-2.compute.internal status is now: NodeHasSufficientMemory
44m     Normal    RegisteredNode                 node/ip-172-31-30-105.us-west-2.compute.internal   Node ip-172-31-30-105.us-west-2.compute.internal event: Registered Node ip-172-31-30-105.us-west-2.compute.internal in Controller
44m     Normal    NodeReady                      node/ip-172-31-30-105.us-west-2.compute.internal   Node ip-172-31-30-105.us-west-2.compute.internal status is now: NodeReady
44m     Normal    NodeHasSufficientMemory        node/ip-172-31-31-154.us-west-2.compute.internal   Node ip-172-31-31-154.us-west-2.compute.internal status is now: NodeHasSufficientMemory
44m     Normal    NodeHasNoDiskPressure          node/ip-172-31-31-154.us-west-2.compute.internal   Node ip-172-31-31-154.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
44m     Normal    NodeHasSufficientPID           node/ip-172-31-31-154.us-west-2.compute.internal   Node ip-172-31-31-154.us-west-2.compute.internal status is now: NodeHasSufficientPID
44m     Normal    NodeAllocatableEnforced        node/ip-172-31-31-154.us-west-2.compute.internal   Updated Node Allocatable limit across pods
43m     Normal    RegisteredNode                 node/ip-172-31-31-154.us-west-2.compute.internal   Node ip-172-31-31-154.us-west-2.compute.internal event: Registered Node ip-172-31-31-154.us-west-2.compute.internal in Controller
43m     Normal    NodeReady                      node/ip-172-31-31-154.us-west-2.compute.internal   Node ip-172-31-31-154.us-west-2.compute.internal status is now: NodeReady
42m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 0 to 1
42m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-kt7dj                     Successfully assigned default/llm-proxy-7dc458997b-kt7dj to ip-172-31-31-154.us-west-2.compute.internal
42m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-kt7dj
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-kt7dj                     Pulling image "curlimages/curl:8.21.0"
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kt7dj                     Successfully pulled image "curlimages/curl:8.21.0" in 1.74s (1.74s including waiting). Image size: 10652192 bytes.
42m     Normal    Created                        pod/llm-proxy-7dc458997b-kt7dj                     Container created
42m     Normal    Started                        pod/llm-proxy-7dc458997b-kt7dj                     Container started
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-kt7dj                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
42m     Normal    Created                        pod/llm-proxy-7dc458997b-kt7dj                     Container created
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kt7dj                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.426s (16.426s including waiting). Image size: 309744732 bytes.
42m     Normal    Started                        pod/llm-proxy-7dc458997b-kt7dj                     Container started
42m     Normal    Pulling                        pod/llm-proxy-7dc458997b-kt7dj                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
42m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kt7dj                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.78s (5.78s including waiting). Image size: 64753325 bytes.
42m     Normal    Created                        pod/llm-proxy-7dc458997b-kt7dj                     Container created
42m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-kt7dj                     Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
42m     Normal    Started                        pod/llm-proxy-7dc458997b-kt7dj                     Container started
41m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
41m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-5m98z
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-5m98z                     Successfully assigned default/llm-proxy-7dc458997b-5m98z to ip-172-31-33-72.us-west-2.compute.internal
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-kt7dj                     Stopping container llama-server
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-kt7dj                     Stopping container fastapi-proxy
40m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5m98z                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    Started                        pod/llm-proxy-7dc458997b-5m98z                     Container started
40m     Normal    Created                        pod/llm-proxy-7dc458997b-5m98z                     Container created
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5m98z                     Successfully pulled image "curlimages/curl:8.21.0" in 1.685s (1.685s including waiting). Image size: 10652192 bytes.
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5m98z                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5m98z                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Started                        pod/llm-proxy-7dc458997b-5m98z                     Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-5m98z                     Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5m98z                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.57s (19.57s including waiting). Image size: 309744732 bytes.
39m     Normal    Started                        pod/llm-proxy-7dc458997b-5m98z                     Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-5m98z                     Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5m98z                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.405s (6.405s including waiting). Image size: 64753325 bytes.
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6             failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6             invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-ppzrl                     Successfully assigned default/llm-proxy-7dc458997b-ppzrl to ip-172-31-31-154.us-west-2.compute.internal
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ppzrl                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-ppzrl                     Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-ppzrl                     Container started
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-ppzrl
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 1 to 2
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ppzrl                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-ppzrl                     Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-ppzrl                     Container started
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ppzrl                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 351ms (351ms including waiting). Image size: 64753325 bytes.
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ppzrl                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Started                        pod/llm-proxy-7dc458997b-ppzrl                     Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-ppzrl                     Container created
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ppzrl                     Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
36m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-wjrh7
36m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: cpu resource utilization (percentage of request) above target
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wjrh7                     Pulling image "curlimages/curl:8.21.0"
36m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-wjrh7                     Successfully assigned default/llm-proxy-7dc458997b-wjrh7 to ip-172-31-40-224.us-west-2.compute.internal
36m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-sspc6                     Successfully assigned default/llm-proxy-7dc458997b-sspc6 to ip-172-31-42-209.us-west-2.compute.internal
36m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-sspc6
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-sspc6                     Pulling image "curlimages/curl:8.21.0"
36m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 2 to 4
36m     Normal    Started                        pod/llm-proxy-7dc458997b-sspc6                     Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-sspc6                     Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-wjrh7                     Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sspc6                     Successfully pulled image "curlimages/curl:8.21.0" in 1.714s (1.714s including waiting). Image size: 10652192 bytes.
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wjrh7                     Successfully pulled image "curlimages/curl:8.21.0" in 1.716s (1.716s including waiting). Image size: 10652192 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-wjrh7                     Container created
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-sspc6                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wjrh7                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wjrh7                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.955s (13.955s including waiting). Image size: 309744732 bytes.
36m     Normal    Started                        pod/llm-proxy-7dc458997b-wjrh7                     Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sspc6                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 14.791s (14.791s including waiting). Image size: 309744732 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-sspc6                     Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-sspc6                     Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-sspc6                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-wjrh7                     Container created
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wjrh7                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-wjrh7                     Container started
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-sspc6                     Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
36m     Normal    Created                        pod/llm-proxy-7dc458997b-sspc6                     Container created
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-wjrh7                     Readiness probe failed: Get "http://10.244.3.2:8000/health": dial tcp 10.244.3.2:8000: connect: connection refused
36m     Normal    Created                        pod/llm-proxy-7dc458997b-wjrh7                     Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wjrh7                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.974s (5.974s including waiting). Image size: 64753325 bytes.
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sspc6                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.27s (6.27s including waiting). Image size: 64753325 bytes.
36m     Normal    Started                        pod/llm-proxy-7dc458997b-sspc6                     Container started
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 4 to 5
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-5rjdx                     Successfully assigned default/llm-proxy-7dc458997b-5rjdx to ip-172-31-30-105.us-west-2.compute.internal
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-5rjdx
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5rjdx                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Started                        pod/llm-proxy-7dc458997b-5rjdx                     Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-5rjdx                     Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5rjdx                     Successfully pulled image "curlimages/curl:8.21.0" in 1.706s (1.706s including waiting). Image size: 10652192 bytes.
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-hmnnv                     Successfully assigned default/llm-proxy-7dc458997b-hmnnv to ip-172-31-21-191.us-west-2.compute.internal
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-hmnnv
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 5 to 6
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-hmnnv                     Pulling image "curlimages/curl:8.21.0"
31m     Normal    Started                        pod/llm-proxy-7dc458997b-hmnnv                     Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hmnnv                     Successfully pulled image "curlimages/curl:8.21.0" in 1.737s (1.737s including waiting). Image size: 10652192 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-hmnnv                     Container created
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-hmnnv                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5rjdx                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
30m     Normal    Created                        pod/llm-proxy-7dc458997b-hmnnv                     Container created
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-hmnnv                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Started                        pod/llm-proxy-7dc458997b-hmnnv                     Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hmnnv                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.845s (18.845s including waiting). Image size: 309744732 bytes.
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5rjdx                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.58s (19.58s including waiting). Image size: 309744732 bytes.
30m     Normal    Started                        pod/llm-proxy-7dc458997b-5rjdx                     Container started
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5rjdx                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Created                        pod/llm-proxy-7dc458997b-5rjdx                     Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-hmnnv                     Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hmnnv                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.574s (5.574s including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-7dc458997b-hmnnv                     Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5rjdx                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.155s (6.155s including waiting). Image size: 64753325 bytes.
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5rjdx                     Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
30m     Normal    Started                        pod/llm-proxy-7dc458997b-5rjdx                     Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-5rjdx                     Container created
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-5m98z
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-5m98z                     Stopping container fastapi-proxy
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-5m98z                     Stopping container llama-server
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-wjrh7
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-wjrh7                     Stopping container llama-server
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-wjrh7                     Stopping container fastapi-proxy
9m54s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5m98z                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
9m23s   Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q                     Container created
9m23s   Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t                     Container started
9m23s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-7dc458997b from 4 to 6
9m23s   Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q                     Container started
9m23s   Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
9m23s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-kzl6t                     Successfully assigned default/llm-proxy-7dc458997b-kzl6t to ip-172-31-40-224.us-west-2.compute.internal
9m23s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-kzl6t
9m23s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b                    Created pod: llm-proxy-7dc458997b-xkk6q
9m23s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 6; reason: cpu resource utilization (percentage of request) above target
9m23s   Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
9m23s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-xkk6q                     Successfully assigned default/llm-proxy-7dc458997b-xkk6q to ip-172-31-33-72.us-west-2.compute.internal
9m23s   Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t                     Container created
8m44s   Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q                     Container started
8m44s   Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q                     Container created
8m44s   Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
8m44s   Normal    Pulling                        pod/llm-proxy-7dc458997b-xkk6q                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
8m44s   Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q                     Container created
8m44s   Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m43s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-xkk6q                     Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
8m43s   Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q                     Container started
8m43s   Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m43s   Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t                     Container created
8m42s   Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t                     Container started
8m42s   Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t                     Container started
8m42s   Normal    Pulling                        pod/llm-proxy-7dc458997b-kzl6t                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
8m42s   Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 323ms (323ms including waiting). Image size: 64753325 bytes.
8m42s   Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t                     Container created
8m42s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-kzl6t                     Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
3m23s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-kzl6t
3m23s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 5; reason: All metrics below target
3m23s   Normal    Killing                        pod/llm-proxy-7dc458997b-kzl6t                     Stopping container fastapi-proxy
3m23s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 6 to 5
3m23s   Normal    Killing                        pod/llm-proxy-7dc458997b-kzl6t                     Stopping container llama-server
3m8s    Normal    Killing                        pod/llm-proxy-7dc458997b-xkk6q                     Stopping container llama-server
3m8s    Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-xkk6q
3m8s    Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 5 to 4
3m8s    Normal    Killing                        pod/llm-proxy-7dc458997b-xkk6q                     Stopping container fastapi-proxy
3m8s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 4; reason: All metrics below target
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-sspc6                     Stopping container fastapi-proxy
2m53s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hmnnv                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
2m53s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6             New size: 1; reason: All metrics below target
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-sspc6                     Stopping container llama-server
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-ppzrl                     Stopping container fastapi-proxy
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-hmnnv                     Stopping container llama-server
2m53s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-sspc6
2m53s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-ppzrl
2m53s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b                    Deleted pod: llm-proxy-7dc458997b-hmnnv
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-hmnnv                     Stopping container fastapi-proxy
2m53s   Normal    Killing                        pod/llm-proxy-7dc458997b-ppzrl                     Stopping container llama-server
2m53s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-7dc458997b from 4 to 1
run_end=1787959265
interrupted=0
