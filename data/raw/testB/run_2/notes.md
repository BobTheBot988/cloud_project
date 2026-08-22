# scenario=testB run=2
collect_start=1787351527
interval_sec=60
run=2
run_start=1787351532
test=TestB(steady)
level_users=10 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787351932
--- events ---
51m     Normal    Starting                       node/ip-172-31-28-201.us-west-2.compute.internal   
49m     Normal    Starting                       node/ip-172-31-30-49.us-west-2.compute.internal    
48m     Normal    Starting                       node/ip-172-31-38-45.us-west-2.compute.internal    
51m     Normal    Starting                       node/ip-172-31-28-201.us-west-2.compute.internal   Starting kubelet.
51m     Normal    NodeAllocatableEnforced        node/ip-172-31-28-201.us-west-2.compute.internal   Updated Node Allocatable limit across pods
51m     Normal    NodeHasSufficientMemory        node/ip-172-31-28-201.us-west-2.compute.internal   Node ip-172-31-28-201.us-west-2.compute.internal status is now: NodeHasSufficientMemory
51m     Normal    NodeHasNoDiskPressure          node/ip-172-31-28-201.us-west-2.compute.internal   Node ip-172-31-28-201.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
51m     Normal    NodeHasSufficientPID           node/ip-172-31-28-201.us-west-2.compute.internal   Node ip-172-31-28-201.us-west-2.compute.internal status is now: NodeHasSufficientPID
51m     Normal    RegisteredNode                 node/ip-172-31-28-201.us-west-2.compute.internal   Node ip-172-31-28-201.us-west-2.compute.internal event: Registered Node ip-172-31-28-201.us-west-2.compute.internal in Controller
51m     Normal    NodeReady                      node/ip-172-31-28-201.us-west-2.compute.internal   Node ip-172-31-28-201.us-west-2.compute.internal status is now: NodeReady
49m     Warning   InvalidDiskCapacity            node/ip-172-31-30-49.us-west-2.compute.internal    invalid capacity 0 on image filesystem
49m     Normal    NodeAllocatableEnforced        node/ip-172-31-30-49.us-west-2.compute.internal    Updated Node Allocatable limit across pods
49m     Normal    NodeHasSufficientMemory        node/ip-172-31-30-49.us-west-2.compute.internal    Node ip-172-31-30-49.us-west-2.compute.internal status is now: NodeHasSufficientMemory
49m     Normal    NodeHasNoDiskPressure          node/ip-172-31-30-49.us-west-2.compute.internal    Node ip-172-31-30-49.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
49m     Normal    NodeHasSufficientPID           node/ip-172-31-30-49.us-west-2.compute.internal    Node ip-172-31-30-49.us-west-2.compute.internal status is now: NodeHasSufficientPID
49m     Normal    RegisteredNode                 node/ip-172-31-30-49.us-west-2.compute.internal    Node ip-172-31-30-49.us-west-2.compute.internal event: Registered Node ip-172-31-30-49.us-west-2.compute.internal in Controller
49m     Normal    NodeReady                      node/ip-172-31-30-49.us-west-2.compute.internal    Node ip-172-31-30-49.us-west-2.compute.internal status is now: NodeReady
48m     Normal    NodeHasSufficientPID           node/ip-172-31-38-45.us-west-2.compute.internal    Node ip-172-31-38-45.us-west-2.compute.internal status is now: NodeHasSufficientPID
48m     Normal    NodeHasSufficientMemory        node/ip-172-31-38-45.us-west-2.compute.internal    Node ip-172-31-38-45.us-west-2.compute.internal status is now: NodeHasSufficientMemory
48m     Normal    NodeHasNoDiskPressure          node/ip-172-31-38-45.us-west-2.compute.internal    Node ip-172-31-38-45.us-west-2.compute.internal status is now: NodeHasNoDiskPressure
48m     Warning   InvalidDiskCapacity            node/ip-172-31-38-45.us-west-2.compute.internal    invalid capacity 0 on image filesystem
48m     Normal    NodeAllocatableEnforced        node/ip-172-31-38-45.us-west-2.compute.internal    Updated Node Allocatable limit across pods
48m     Normal    RegisteredNode                 node/ip-172-31-38-45.us-west-2.compute.internal    Node ip-172-31-38-45.us-west-2.compute.internal event: Registered Node ip-172-31-38-45.us-west-2.compute.internal in Controller
48m     Normal    NodeReady                      node/ip-172-31-38-45.us-west-2.compute.internal    Node ip-172-31-38-45.us-west-2.compute.internal status is now: NodeReady
47m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9gm2k                     Successfully assigned default/llm-proxy-857bf6d79d-9gm2k to ip-172-31-38-45.us-west-2.compute.internal
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-9gm2k
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k                     Pulling image "curlimages/curl:8.21.0"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k                     Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k                     Container created
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k                     Container started
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.655s (16.655s including waiting). Image size: 307655741 bytes.
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.214s (5.214s including waiting). Image size: 64752814 bytes.
46m     Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k                     Container created
46m     Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k                     Container started
46m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9gm2k                     Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
46m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy                  failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
46m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy                  invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
40m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hrj5h                     Successfully assigned default/llm-proxy-857bf6d79d-hrj5h to ip-172-31-30-49.us-west-2.compute.internal
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-hrj5h
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h                     Pulling image "curlimages/curl:8.21.0"
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h                     Container started
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h                     Container created
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h                     Successfully pulled image "curlimages/curl:8.21.0" in 1.715s (1.715s including waiting). Image size: 10652192 bytes.
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h                     Pulling image "ghcr.io/ggml-org/llama.cpp:server"
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h                     Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.814s (16.814s including waiting). Image size: 307655741 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h                     Container created
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h                     Container started
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.413s (6.413s including waiting). Image size: 64752814 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h                     Container created
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h                     Container started
40m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hrj5h                     Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
20m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h                     Stopping container llama-server
20m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy                  New size: 1; reason: All metrics below target
20m     Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
20m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d                    Deleted pod: llm-proxy-857bf6d79d-hrj5h
20m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h                     Stopping container fastapi-proxy
7m13s   Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k                     Container created
7m13s   Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k                     Container started
7m13s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m45s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy                  invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6m45s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy                  failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
6m30s   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d                    Created pod: llm-proxy-857bf6d79d-vb4kw
6m30s   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-vb4kw                     Successfully assigned default/llm-proxy-857bf6d79d-vb4kw to ip-172-31-30-49.us-west-2.compute.internal
6m30s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw                     Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
6m30s   Normal    ScalingReplicaSet              deployment/llm-proxy                               Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
6m30s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy                  New size: 2; reason: cpu resource utilization (percentage of request) above target
6m30s   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw                     Container created
6m29s   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw                     Container started
5m57s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw                     Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 334ms (334ms including waiting). Image size: 64752814 bytes.
5m57s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw                     Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m57s   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw                     Container created
5m57s   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw                     Container started
5m57s   Normal    Pulling                        pod/llm-proxy-857bf6d79d-vb4kw                     Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m57s   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw                     Container created
5m57s   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw                     Container started
5m56s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw                     Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
run_end=1787351932
interrupted=0
