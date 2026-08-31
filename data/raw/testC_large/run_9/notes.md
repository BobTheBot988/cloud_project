# scenario=testC_large run=9
collect_start=1788183673
interval_sec=60
run=9
run_start=1788183675
scenario=testC_large
test=TestB(steady)
level_users=20 steady_min=3 size=large
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788183871
--- events ---
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-hndtn           Stopping container llama-server
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zhfbx
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qldww
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-6g7tv
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-968sq           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-968sq           Stopping container fastapi-proxy
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-6g7tv           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-5f27d           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-5f27d           Stopping container fastapi-proxy
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-2mbf2
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zqjvv
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-g8lk5
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-qg977           Stopping container fastapi-proxy
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-qg977           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-mtj4g           Stopping container fastapi-proxy
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-mtj4g           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-k6dv8           Stopping container fastapi-proxy
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-k6dv8           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-hndtn           Stopping container fastapi-proxy
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-zqjvv           Successfully assigned default/llm-proxy-7dc458997b-zqjvv to ip-172-31-3-254.ec2.internal
45m   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
45m   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-2mbf2           Successfully assigned default/llm-proxy-7dc458997b-2mbf2 to ip-172-31-9-11.ec2.internal
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-zqjvv           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-qldww           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-zhfbx           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-qldww           Successfully assigned default/llm-proxy-7dc458997b-qldww to ip-172-31-37-201.ec2.internal
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
45m   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-g8lk5           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-zhfbx           Successfully assigned default/llm-proxy-7dc458997b-zhfbx to ip-172-31-32-103.ec2.internal
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-6g7tv           Successfully assigned default/llm-proxy-7dc458997b-6g7tv to ip-172-31-13-86.ec2.internal
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-2mbf2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-g8lk5           Successfully assigned default/llm-proxy-7dc458997b-g8lk5 to ip-172-31-43-11.ec2.internal
45m   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
45m   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
45m   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
45m   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
45m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5f27d           Readiness probe failed: Get "http://10.244.3.13:8000/health": dial tcp 10.244.3.13:8000: connect: no route to host
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 127ms (127ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-g8lk5           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
44m   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lk5           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-6g7tv           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-6g7tv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-6g7tv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 108ms (108ms including waiting). Image size: 64753325 bytes.
44m   Normal    Created                        pod/llm-proxy-7dc458997b-6g7tv           Container created
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-g8lk5           Readiness probe failed: Get "http://10.244.1.14:8000/health": dial tcp 10.244.1.14:8000: connect: connection refused
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-6g7tv           Readiness probe failed: Get "http://10.244.2.16:8000/health": dial tcp 10.244.2.16:8000: connect: connection refused
44m   Normal    Created                        pod/llm-proxy-7dc458997b-g8lk5           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-g8lk5           Container started
44m   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 119ms (119ms including waiting). Image size: 64753325 bytes.
44m   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 161ms (161ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-zhfbx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
44m   Normal    Created                        pod/llm-proxy-7dc458997b-zhfbx           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-zhfbx           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zhfbx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-2mbf2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
44m   Normal    Created                        pod/llm-proxy-7dc458997b-2mbf2           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-2mbf2           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-2mbf2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-zhfbx           Readiness probe failed: Get "http://10.244.3.14:8000/health": dial tcp 10.244.3.14:8000: connect: connection refused
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2mbf2           Readiness probe failed: Get "http://10.244.6.18:8000/health": dial tcp 10.244.6.18:8000: connect: connection refused
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
44m   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-zqjvv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-zqjvv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Started                        pod/llm-proxy-7dc458997b-zqjvv           Container started
44m   Normal    Created                        pod/llm-proxy-7dc458997b-zqjvv           Container created
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-zqjvv           Readiness probe failed: Get "http://10.244.4.15:8000/health": dial tcp 10.244.4.15:8000: connect: connection refused
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-qldww           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
44m   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qldww           Readiness probe failed: Get "http://10.244.5.10:8000/health": dial tcp 10.244.5.10:8000: connect: connection refused
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-qldww           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 203ms (203ms including waiting). Image size: 64753325 bytes.
44m   Normal    Created                        pod/llm-proxy-7dc458997b-qldww           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-qldww           Container started
43m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-g8lk5           Readiness probe failed: Get "http://10.244.1.14:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-zhfbx           Stopping container fastapi-proxy
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-6g7tv           Stopping container fastapi-proxy
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-qldww           Stopping container fastapi-proxy
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-7fj6n
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-d5g8t
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-qldww           Stopping container llama-server
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-zqjvv           Stopping container fastapi-proxy
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-zqjvv           Stopping container llama-server
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-zhfbx           Stopping container llama-server
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-6g7tv           Stopping container llama-server
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-4xb7l
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-d5g8t           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-g8lk5           Stopping container llama-server
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-g8lk5           Stopping container fastapi-proxy
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-2mbf2           Stopping container llama-server
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-hdmk4
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-gzlj6
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-xlkpd
20m   Normal    Killing                        pod/llm-proxy-7dc458997b-2mbf2           Stopping container fastapi-proxy
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-4xb7l           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-4xb7l           Successfully assigned default/llm-proxy-7dc458997b-4xb7l to ip-172-31-43-11.ec2.internal
20m   Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
20m   Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
20m   Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-gzlj6           Successfully assigned default/llm-proxy-7dc458997b-gzlj6 to ip-172-31-3-254.ec2.internal
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-gzlj6           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
20m   Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
20m   Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-d5g8t           Successfully assigned default/llm-proxy-7dc458997b-d5g8t to ip-172-31-13-86.ec2.internal
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
20m   Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
20m   Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-hdmk4           Successfully assigned default/llm-proxy-7dc458997b-hdmk4 to ip-172-31-37-201.ec2.internal
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-7fj6n           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-7fj6n           Successfully assigned default/llm-proxy-7dc458997b-7fj6n to ip-172-31-32-103.ec2.internal
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-hdmk4           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-xlkpd           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-xlkpd           Successfully assigned default/llm-proxy-7dc458997b-xlkpd to ip-172-31-9-11.ec2.internal
20m   Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-xlkpd           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
19m   Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-xlkpd           Readiness probe failed: Get "http://10.244.6.19:8000/health": dial tcp 10.244.6.19:8000: connect: connection refused
19m   Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
19m   Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 131ms (131ms including waiting). Image size: 64753325 bytes.
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-hdmk4           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
19m   Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hdmk4           Readiness probe failed: Get "http://10.244.5.11:8000/health": dial tcp 10.244.5.11:8000: connect: connection refused
19m   Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-7fj6n           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-7fj6n           Readiness probe failed: Get "http://10.244.3.15:8000/health": dial tcp 10.244.3.15:8000: connect: connection refused
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 146ms (146ms including waiting). Image size: 64753325 bytes.
19m   Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
19m   Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 112ms (112ms including waiting). Image size: 64753325 bytes.
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-4xb7l           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 105ms (105ms including waiting). Image size: 64753325 bytes.
19m   Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-gzlj6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-gzlj6           Readiness probe failed: Get "http://10.244.4.16:8000/health": dial tcp 10.244.4.16:8000: connect: connection refused
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-4xb7l           Readiness probe failed: Get "http://10.244.1.15:8000/health": dial tcp 10.244.1.15:8000: connect: connection refused
19m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
19m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
18m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-d5g8t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 111ms (111ms including waiting). Image size: 64753325 bytes.
18m   Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-d5g8t           Readiness probe failed: Get "http://10.244.2.17:8000/health": dial tcp 10.244.2.17:8000: connect: connection refused
run_end=1788183871
interrupted=0
