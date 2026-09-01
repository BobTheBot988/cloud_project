# scenario=testC_mix run=1
collect_start=1788184691
interval_sec=60
run=1
run_start=1788184694
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=3 size=mix
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788184890
--- events ---
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-xlkpd
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-2mbf2           Stopping container fastapi-proxy
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-4xb7l           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-4xb7l           Successfully assigned default/llm-proxy-7dc458997b-4xb7l to ip-172-31-43-11.ec2.internal
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-qldww           Stopping container fastapi-proxy
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-qldww           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-g8lk5           Stopping container fastapi-proxy
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-g8lk5           Stopping container llama-server
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-d5g8t           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-zhfbx           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-zhfbx           Stopping container fastapi-proxy
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-zqjvv           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-zqjvv           Stopping container fastapi-proxy
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-4xb7l
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-2mbf2           Stopping container llama-server
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-d5g8t
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-7fj6n
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-6g7tv           Stopping container llama-server
37m     Normal    Killing                        pod/llm-proxy-7dc458997b-6g7tv           Stopping container fastapi-proxy
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-hdmk4
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-gzlj6
37m     Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
37m     Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-gzlj6           Successfully assigned default/llm-proxy-7dc458997b-gzlj6 to ip-172-31-3-254.ec2.internal
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-gzlj6           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-xlkpd           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-d5g8t           Successfully assigned default/llm-proxy-7dc458997b-d5g8t to ip-172-31-13-86.ec2.internal
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-7fj6n           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-hdmk4           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-hdmk4           Successfully assigned default/llm-proxy-7dc458997b-hdmk4 to ip-172-31-37-201.ec2.internal
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-7fj6n           Successfully assigned default/llm-proxy-7dc458997b-7fj6n to ip-172-31-32-103.ec2.internal
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-xlkpd           Successfully assigned default/llm-proxy-7dc458997b-xlkpd to ip-172-31-9-11.ec2.internal
37m     Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
36m     Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-xlkpd           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-xlkpd           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xlkpd           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-hdmk4           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-xlkpd           Readiness probe failed: Get "http://10.244.6.19:8000/health": dial tcp 10.244.6.19:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-7dc458997b-xlkpd           Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 131ms (131ms including waiting). Image size: 64753325 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-hdmk4           Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-hdmk4           Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-hdmk4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hdmk4           Readiness probe failed: Get "http://10.244.5.11:8000/health": dial tcp 10.244.5.11:8000: connect: connection refused
36m     Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-7fj6n           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-7fj6n           Readiness probe failed: Get "http://10.244.3.15:8000/health": dial tcp 10.244.3.15:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-7dc458997b-7fj6n           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-7fj6n           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7fj6n           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 146ms (146ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
36m     Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 112ms (112ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gzlj6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-gzlj6           Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-gzlj6           Container started
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gzlj6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-4xb7l           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4xb7l           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 105ms (105ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-4xb7l           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-4xb7l           Container started
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-gzlj6           Readiness probe failed: Get "http://10.244.4.16:8000/health": dial tcp 10.244.4.16:8000: connect: connection refused
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-4xb7l           Readiness probe failed: Get "http://10.244.1.15:8000/health": dial tcp 10.244.1.15:8000: connect: connection refused
35m     Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
35m     Normal    Started                        pod/llm-proxy-7dc458997b-d5g8t           Container started
35m     Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 111ms (111ms including waiting). Image size: 64753325 bytes.
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-d5g8t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-d5g8t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Created                        pod/llm-proxy-7dc458997b-d5g8t           Container created
34m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-d5g8t           Readiness probe failed: Get "http://10.244.2.17:8000/health": dial tcp 10.244.2.17:8000: connect: connection refused
5m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-4xb7l           Stopping container fastapi-proxy
5m49s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-d6x54
5m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-7fj6n           Stopping container fastapi-proxy
5m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-7fj6n           Stopping container llama-server
5m49s   Normal    Killing                        pod/llm-proxy-7dc458997b-4xb7l           Stopping container llama-server
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-bvbq2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-wz85t           Successfully assigned default/llm-proxy-7dc458997b-wz85t to ip-172-31-3-254.ec2.internal
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-gzlj6           Stopping container llama-server
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-gzlj6           Stopping container fastapi-proxy
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-d6x54           Successfully assigned default/llm-proxy-7dc458997b-d6x54 to ip-172-31-43-11.ec2.internal
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-d6x54           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-d5g8t           Stopping container fastapi-proxy
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-d5g8t           Stopping container llama-server
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-xlkpd           Stopping container llama-server
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-xlkpd           Stopping container fastapi-proxy
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-bvbq2           Successfully assigned default/llm-proxy-7dc458997b-bvbq2 to ip-172-31-13-86.ec2.internal
5m48s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-bvbq2
5m48s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-8g496
5m48s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-lfcg2
5m48s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-wz85t
5m48s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-r8wjl
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-8g496           Successfully assigned default/llm-proxy-7dc458997b-8g496 to ip-172-31-9-11.ec2.internal
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-hdmk4           Stopping container llama-server
5m48s   Normal    Killing                        pod/llm-proxy-7dc458997b-hdmk4           Stopping container fastapi-proxy
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-lfcg2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-lfcg2           Successfully assigned default/llm-proxy-7dc458997b-lfcg2 to ip-172-31-32-103.ec2.internal
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-wz85t           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m48s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-r8wjl           Successfully assigned default/llm-proxy-7dc458997b-r8wjl to ip-172-31-37-201.ec2.internal
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-r8wjl           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m48s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-8g496           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
5m47s   Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
5m47s   Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m47s   Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m10s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
5m10s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
5m      Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
5m      Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m      Normal    Pulling                        pod/llm-proxy-7dc458997b-r8wjl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m      Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
5m      Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
5m      Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
5m      Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m      Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
5m      Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
5m      Normal    Pulling                        pod/llm-proxy-7dc458997b-lfcg2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m      Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
5m      Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 142ms (142ms including waiting). Image size: 64753325 bytes.
5m      Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
5m      Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 139ms (139ms including waiting). Image size: 64753325 bytes.
4m59s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-lfcg2           Readiness probe failed: Get "http://10.244.3.16:8000/health": dial tcp 10.244.3.16:8000: connect: connection refused
4m59s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-r8wjl           Readiness probe failed: Get "http://10.244.5.12:8000/health": dial tcp 10.244.5.12:8000: connect: connection refused
4m58s   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
4m58s   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m58s   Normal    Pulling                        pod/llm-proxy-7dc458997b-d6x54           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m58s   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
4m57s   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
4m57s   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
4m57s   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
4m57s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-d6x54           Readiness probe failed: Get "http://10.244.1.16:8000/health": dial tcp 10.244.1.16:8000: connect: connection refused
4m57s   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 121ms (121ms including waiting). Image size: 64753325 bytes.
4m57s   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m57s   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
4m57s   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
4m57s   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 107ms (107ms including waiting). Image size: 64753325 bytes.
4m57s   Normal    Pulling                        pod/llm-proxy-7dc458997b-bvbq2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m57s   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
4m56s   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m56s   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
4m56s   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
4m56s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-bvbq2           Readiness probe failed: Get "http://10.244.2.18:8000/health": dial tcp 10.244.2.18:8000: connect: connection refused
4m56s   Normal    Pulling                        pod/llm-proxy-7dc458997b-8g496           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m56s   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
4m56s   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
4m56s   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 105ms (105ms including waiting). Image size: 64753325 bytes.
4m55s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-8g496           Readiness probe failed: Get "http://10.244.6.20:8000/health": dial tcp 10.244.6.20:8000: connect: connection refused
4m40s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
4m40s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
4m      Normal    Pulling                        pod/llm-proxy-7dc458997b-wz85t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m      Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
4m      Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
4m      Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m59s   Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
3m59s   Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
3m59s   Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
3m59s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-wz85t           Readiness probe failed: Get "http://10.244.4.17:8000/health": dial tcp 10.244.4.17:8000: connect: connection refused
run_end=1788184890
interrupted=0
