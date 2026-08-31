# scenario=testC_large run=1
collect_start=1788181221
interval_sec=60
run=1
run_start=1788181223
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=3 size=large
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788181420
--- events ---
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container llama-server
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-hndtn
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-k6dv8
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qg977
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-mtj4g
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-5f27d
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-968sq
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container fastapi-proxy
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container llama-server
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-z5ltk           Readiness probe failed: Get "http://10.244.1.11:8000/health": dial tcp 10.244.1.11:8000: connect: connection refused
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container fastapi-proxy
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container llama-server
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container fastapi-proxy
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container llama-server
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container fastapi-proxy
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container llama-server
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container fastapi-proxy
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-968sq           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container fastapi-proxy
34m     Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container llama-server
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-qg977           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-k6dv8           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-k6dv8           Successfully assigned default/llm-proxy-7dc458997b-k6dv8 to ip-172-31-43-11.ec2.internal
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ln97t           Readiness probe failed: Get "http://10.244.2.14:8000/health": dial tcp 10.244.2.14:8000: connect: connection refused
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-5f27d           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-5f27d           Successfully assigned default/llm-proxy-7dc458997b-5f27d to ip-172-31-32-103.ec2.internal
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-mtj4g           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-mtj4g           Successfully assigned default/llm-proxy-7dc458997b-mtj4g to ip-172-31-3-254.ec2.internal
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-qg977           Successfully assigned default/llm-proxy-7dc458997b-qg977 to ip-172-31-9-11.ec2.internal
34m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-hndtn           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
34m     Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-968sq           Successfully assigned default/llm-proxy-7dc458997b-968sq to ip-172-31-37-201.ec2.internal
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
34m     Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
34m     Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
34m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-hndtn           Successfully assigned default/llm-proxy-7dc458997b-hndtn to ip-172-31-13-86.ec2.internal
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
34m     Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
34m     Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5f27d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5f27d           Readiness probe failed: Get "http://10.244.3.13:8000/health": dial tcp 10.244.3.13:8000: connect: connection refused
34m     Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 132ms (132ms including waiting). Image size: 64753325 bytes.
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-mtj4g           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-968sq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 159ms (159ms including waiting). Image size: 64753325 bytes.
34m     Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mtj4g           Readiness probe failed: Get "http://10.244.4.14:8000/health": dial tcp 10.244.4.14:8000: connect: connection refused
34m     Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
34m     Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-k6dv8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 114ms (114ms including waiting). Image size: 64753325 bytes.
34m     Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-k6dv8           Readiness probe failed: Get "http://10.244.1.13:8000/health": dial tcp 10.244.1.13:8000: connect: connection refused
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-968sq           Readiness probe failed: Get "http://10.244.5.9:8000/health": dial tcp 10.244.5.9:8000: connect: connection refused
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
34m     Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qg977           Readiness probe failed: Get "http://10.244.6.17:8000/health": dial tcp 10.244.6.17:8000: connect: connection refused
34m     Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-qg977           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 172ms (172ms including waiting). Image size: 64753325 bytes.
34m     Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
34m     Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
34m     Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m     Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
34m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
34m     Normal    Pulling                        pod/llm-proxy-7dc458997b-hndtn           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m     Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hndtn           Readiness probe failed: Get "http://10.244.2.15:8000/health": dial tcp 10.244.2.15:8000: connect: connection refused
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zhfbx
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-qg977           Stopping container fastapi-proxy
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-k6dv8           Stopping container fastapi-proxy
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-mtj4g           Stopping container llama-server
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qldww
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-hndtn           Stopping container llama-server
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-g8lk5
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-2mbf2
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zqjvv
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-k6dv8           Stopping container llama-server
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-qg977           Stopping container llama-server
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-968sq           Stopping container llama-server
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-968sq           Stopping container fastapi-proxy
4m42s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-6g7tv
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-5f27d           Stopping container llama-server
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-5f27d           Stopping container fastapi-proxy
4m42s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-6g7tv           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-hndtn           Stopping container fastapi-proxy
4m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-mtj4g           Stopping container fastapi-proxy
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-6g7tv           Successfully assigned default/llm-proxy-7dc458997b-6g7tv to ip-172-31-13-86.ec2.internal
4m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-qldww           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-zqjvv           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-zqjvv           Successfully assigned default/llm-proxy-7dc458997b-zqjvv to ip-172-31-3-254.ec2.internal
4m41s   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
4m41s   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
4m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m41s   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
4m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-zhfbx           Successfully assigned default/llm-proxy-7dc458997b-zhfbx to ip-172-31-32-103.ec2.internal
4m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-zhfbx           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-g8lk5           Successfully assigned default/llm-proxy-7dc458997b-g8lk5 to ip-172-31-43-11.ec2.internal
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-2mbf2           Successfully assigned default/llm-proxy-7dc458997b-2mbf2 to ip-172-31-9-11.ec2.internal
4m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-g8lk5           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m41s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-2mbf2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m41s   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
4m41s   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
4m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m41s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-qldww           Successfully assigned default/llm-proxy-7dc458997b-qldww to ip-172-31-37-201.ec2.internal
4m40s   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m40s   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
4m40s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m40s   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
4m40s   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
4m40s   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
4m40s   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
4m40s   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
4m40s   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
4m40s   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m37s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5f27d           Readiness probe failed: Get "http://10.244.3.13:8000/health": dial tcp 10.244.3.13:8000: connect: no route to host
3m54s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
3m54s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
3m49s   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 127ms (127ms including waiting). Image size: 64753325 bytes.
3m49s   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
3m49s   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m49s   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 108ms (108ms including waiting). Image size: 64753325 bytes.
3m49s   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
3m49s   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m49s   Normal    Pulling                        pod/llm-proxy-7dc458997b-g8lk5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m49s   Normal    Pulling                        pod/llm-proxy-7dc458997b-6g7tv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m49s   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
3m49s   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
3m49s   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
3m49s   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
3m48s   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
3m48s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-6g7tv           Readiness probe failed: Get "http://10.244.2.16:8000/health": dial tcp 10.244.2.16:8000: connect: connection refused
3m48s   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
3m48s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-g8lk5           Readiness probe failed: Get "http://10.244.1.14:8000/health": dial tcp 10.244.1.14:8000: connect: connection refused
3m47s   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
3m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 161ms (161ms including waiting). Image size: 64753325 bytes.
3m47s   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
3m47s   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
3m47s   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
3m47s   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
3m47s   Normal    Pulling                        pod/llm-proxy-7dc458997b-zhfbx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m47s   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
3m47s   Normal    Pulling                        pod/llm-proxy-7dc458997b-2mbf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 119ms (119ms including waiting). Image size: 64753325 bytes.
3m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m47s   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
3m47s   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
3m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2mbf2           Readiness probe failed: Get "http://10.244.6.18:8000/health": dial tcp 10.244.6.18:8000: connect: connection refused
3m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-zhfbx           Readiness probe failed: Get "http://10.244.3.14:8000/health": dial tcp 10.244.3.14:8000: connect: connection refused
3m43s   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
3m43s   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
3m43s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
3m43s   Normal    Pulling                        pod/llm-proxy-7dc458997b-zqjvv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m43s   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
3m43s   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
3m43s   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m42s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-zqjvv           Readiness probe failed: Get "http://10.244.4.15:8000/health": dial tcp 10.244.4.15:8000: connect: connection refused
3m37s   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
3m37s   Normal    Pulling                        pod/llm-proxy-7dc458997b-qldww           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m37s   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
3m37s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m36s   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
3m36s   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
3m36s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 203ms (203ms including waiting). Image size: 64753325 bytes.
3m36s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qldww           Readiness probe failed: Get "http://10.244.5.10:8000/health": dial tcp 10.244.5.10:8000: connect: connection refused
3m24s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
3m24s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
2m43s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-g8lk5           Readiness probe failed: Get "http://10.244.1.14:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1788181420
interrupted=0
