# scenario=testC_medium run=9
collect_start=1788180253
interval_sec=60
run=9
run_start=1788180255
scenario=testC_medium
test=TestB(steady)
level_users=20 steady_min=3 size=medium
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788180457
--- events ---
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-hndtn
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container fastapi-proxy
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container llama-server
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container fastapi-proxy
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container llama-server
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container fastapi-proxy
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container llama-server
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container llama-server
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container fastapi-proxy
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container llama-server
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container fastapi-proxy
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-z5ltk           Readiness probe failed: Get "http://10.244.1.11:8000/health": dial tcp 10.244.1.11:8000: connect: connection refused
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container llama-server
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-968sq           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container fastapi-proxy
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-968sq
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-5f27d
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-mtj4g
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qg977
18m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-k6dv8
18m   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-k6dv8           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-mtj4g           Successfully assigned default/llm-proxy-7dc458997b-mtj4g to ip-172-31-3-254.ec2.internal
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-hndtn           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-mtj4g           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-5f27d           Successfully assigned default/llm-proxy-7dc458997b-5f27d to ip-172-31-32-103.ec2.internal
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-968sq           Successfully assigned default/llm-proxy-7dc458997b-968sq to ip-172-31-37-201.ec2.internal
18m   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ln97t           Readiness probe failed: Get "http://10.244.2.14:8000/health": dial tcp 10.244.2.14:8000: connect: connection refused
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-5f27d           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-qg977           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-qg977           Successfully assigned default/llm-proxy-7dc458997b-qg977 to ip-172-31-9-11.ec2.internal
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-k6dv8           Successfully assigned default/llm-proxy-7dc458997b-k6dv8 to ip-172-31-43-11.ec2.internal
18m   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
18m   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
18m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-hndtn           Successfully assigned default/llm-proxy-7dc458997b-hndtn to ip-172-31-13-86.ec2.internal
18m   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
18m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-5f27d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5f27d           Readiness probe failed: Get "http://10.244.3.13:8000/health": dial tcp 10.244.3.13:8000: connect: connection refused
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 132ms (132ms including waiting). Image size: 64753325 bytes.
18m   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-mtj4g           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mtj4g           Readiness probe failed: Get "http://10.244.4.14:8000/health": dial tcp 10.244.4.14:8000: connect: connection refused
18m   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 114ms (114ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-k6dv8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-968sq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 159ms (159ms including waiting). Image size: 64753325 bytes.
18m   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-968sq           Readiness probe failed: Get "http://10.244.5.9:8000/health": dial tcp 10.244.5.9:8000: connect: connection refused
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-k6dv8           Readiness probe failed: Get "http://10.244.1.13:8000/health": dial tcp 10.244.1.13:8000: connect: connection refused
18m   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qg977           Readiness probe failed: Get "http://10.244.6.17:8000/health": dial tcp 10.244.6.17:8000: connect: connection refused
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-qg977           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 172ms (172ms including waiting). Image size: 64753325 bytes.
18m   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-hndtn           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hndtn           Readiness probe failed: Get "http://10.244.2.15:8000/health": dial tcp 10.244.2.15:8000: connect: connection refused
17m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
17m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
run_end=1788180457
interrupted=0
