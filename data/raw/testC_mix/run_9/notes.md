# scenario=testC_mix run=9
collect_start=1788187085
interval_sec=60
run=9
run_start=1788187087
scenario=testC_mix
test=TestB(steady)
level_users=20 steady_min=3 size=mix
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788187284
--- events ---
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-4xb7l           Stopping container llama-server
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-d6x54
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-7fj6n           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-7fj6n           Stopping container fastapi-proxy
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-4xb7l           Stopping container fastapi-proxy
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-lfcg2
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-r8wjl
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-xlkpd           Stopping container llama-server
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-wz85t           Successfully assigned default/llm-proxy-7dc458997b-wz85t to ip-172-31-3-254.ec2.internal
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-wz85t           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-d5g8t           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-hdmk4           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-gzlj6           Stopping container fastapi-proxy
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-hdmk4           Stopping container fastapi-proxy
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-lfcg2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-gzlj6           Stopping container llama-server
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-xlkpd           Stopping container fastapi-proxy
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-bvbq2           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-lfcg2           Successfully assigned default/llm-proxy-7dc458997b-lfcg2 to ip-172-31-32-103.ec2.internal
45m   Normal    Killing                        pod/llm-proxy-7dc458997b-d5g8t           Stopping container fastapi-proxy
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-wz85t
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-8g496           Successfully assigned default/llm-proxy-7dc458997b-8g496 to ip-172-31-9-11.ec2.internal
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-r8wjl           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-r8wjl           Successfully assigned default/llm-proxy-7dc458997b-r8wjl to ip-172-31-37-201.ec2.internal
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-8g496
45m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-bvbq2
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-bvbq2           Successfully assigned default/llm-proxy-7dc458997b-bvbq2 to ip-172-31-13-86.ec2.internal
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-8g496           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-d6x54           Successfully assigned default/llm-proxy-7dc458997b-d6x54 to ip-172-31-43-11.ec2.internal
45m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-d6x54           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
45m   Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
45m   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
45m   Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
45m   Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
45m   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
45m   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
45m   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
45m   Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
45m   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
45m   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
45m   Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 139ms (139ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-r8wjl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-lfcg2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 142ms (142ms including waiting). Image size: 64753325 bytes.
44m   Normal    Created                        pod/llm-proxy-7dc458997b-lfcg2           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-lfcg2           Container started
44m   Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-lfcg2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-r8wjl           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-r8wjl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Created                        pod/llm-proxy-7dc458997b-r8wjl           Container created
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-lfcg2           Readiness probe failed: Get "http://10.244.3.16:8000/health": dial tcp 10.244.3.16:8000: connect: connection refused
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-r8wjl           Readiness probe failed: Get "http://10.244.5.12:8000/health": dial tcp 10.244.5.12:8000: connect: connection refused
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-d6x54           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-bvbq2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Started                        pod/llm-proxy-7dc458997b-d6x54           Container started
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-d6x54           Readiness probe failed: Get "http://10.244.1.16:8000/health": dial tcp 10.244.1.16:8000: connect: connection refused
44m   Normal    Created                        pod/llm-proxy-7dc458997b-d6x54           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-d6x54           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 121ms (121ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 107ms (107ms including waiting). Image size: 64753325 bytes.
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-bvbq2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-bvbq2           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-bvbq2           Container started
44m   Normal    Pulling                        pod/llm-proxy-7dc458997b-8g496           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
44m   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 105ms (105ms including waiting). Image size: 64753325 bytes.
44m   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-bvbq2           Readiness probe failed: Get "http://10.244.2.18:8000/health": dial tcp 10.244.2.18:8000: connect: connection refused
44m   Normal    Pulled                         pod/llm-proxy-7dc458997b-8g496           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
44m   Normal    Created                        pod/llm-proxy-7dc458997b-8g496           Container created
44m   Normal    Started                        pod/llm-proxy-7dc458997b-8g496           Container started
44m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-8g496           Readiness probe failed: Get "http://10.244.6.20:8000/health": dial tcp 10.244.6.20:8000: connect: connection refused
43m   Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
43m   Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m   Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
43m   Normal    Pulling                        pod/llm-proxy-7dc458997b-wz85t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m   Normal    Pulled                         pod/llm-proxy-7dc458997b-wz85t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 147ms (147ms including waiting). Image size: 64753325 bytes.
43m   Normal    Created                        pod/llm-proxy-7dc458997b-wz85t           Container created
43m   Normal    Started                        pod/llm-proxy-7dc458997b-wz85t           Container started
43m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-wz85t           Readiness probe failed: Get "http://10.244.4.17:8000/health": dial tcp 10.244.4.17:8000: connect: connection refused
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-d6x54           Stopping container fastapi-proxy
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-678qz
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-d6x54           Stopping container llama-server
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-54fsg
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-cxvjm
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-lfcg2           Stopping container llama-server
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-678qz           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-lfcg2           Stopping container fastapi-proxy
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-r8wjl           Stopping container llama-server
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-r8wjl           Stopping container fastapi-proxy
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-8g496           Stopping container llama-server
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-bvbq2           Stopping container fastapi-proxy
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-bvbq2           Stopping container llama-server
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-8g496           Stopping container fastapi-proxy
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-cxvjm           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-nkmpw           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-wz85t           Stopping container llama-server
19m   Normal    Killing                        pod/llm-proxy-7dc458997b-wz85t           Stopping container fastapi-proxy
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-54fsg           Successfully assigned default/llm-proxy-7dc458997b-54fsg to ip-172-31-43-11.ec2.internal
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-54fsg           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-nkmpw           Successfully assigned default/llm-proxy-7dc458997b-nkmpw to ip-172-31-37-201.ec2.internal
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-cxvjm           Successfully assigned default/llm-proxy-7dc458997b-cxvjm to ip-172-31-32-103.ec2.internal
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-678qz           Successfully assigned default/llm-proxy-7dc458997b-678qz to ip-172-31-9-11.ec2.internal
19m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
19m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-77tcs           Successfully assigned default/llm-proxy-7dc458997b-77tcs to ip-172-31-3-254.ec2.internal
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-77tcs           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-nkmpw
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-4k9mr
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-77tcs
19m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-4k9mr           Successfully assigned default/llm-proxy-7dc458997b-4k9mr to ip-172-31-13-86.ec2.internal
19m   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-4k9mr           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-cxvjm           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-nkmpw           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-678qz           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-678qz           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-678qz           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-77tcs           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4k9mr           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-54fsg           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-77tcs           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-77tcs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-nkmpw           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Started                        pod/llm-proxy-7dc458997b-nkmpw           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-4k9mr           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-4k9mr           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-cxvjm           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-cxvjm           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-54fsg           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-54fsg           Container created
18m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
18m   Normal    Created                        pod/llm-proxy-7dc458997b-54fsg           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-54fsg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 105ms (105ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-54fsg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Started                        pod/llm-proxy-7dc458997b-54fsg           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-54fsg           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-54fsg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-54fsg           Readiness probe failed: Get "http://10.244.1.17:8000/health": dial tcp 10.244.1.17:8000: connect: connection refused
18m   Normal    Started                        pod/llm-proxy-7dc458997b-54fsg           Container started
18m   Normal    Started                        pod/llm-proxy-7dc458997b-4k9mr           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-4k9mr           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4k9mr           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-4k9mr           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-4k9mr           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 112ms (113ms including waiting). Image size: 64753325 bytes.
18m   Normal    Started                        pod/llm-proxy-7dc458997b-4k9mr           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-4k9mr           Container created
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-4k9mr           Readiness probe failed: Get "http://10.244.2.19:8000/health": dial tcp 10.244.2.19:8000: connect: connection refused
18m   Normal    Started                        pod/llm-proxy-7dc458997b-nkmpw           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-nkmpw           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 110ms (110ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-nkmpw           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Created                        pod/llm-proxy-7dc458997b-nkmpw           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-nkmpw           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-nkmpw           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-nkmpw           Container started
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-nkmpw           Readiness probe failed: Get "http://10.244.5.13:8000/health": dial tcp 10.244.5.13:8000: connect: connection refused
18m   Normal    Started                        pod/llm-proxy-7dc458997b-cxvjm           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-cxvjm           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-cxvjm           Container created
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-cxvjm           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 159ms (159ms including waiting). Image size: 64753325 bytes.
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-cxvjm           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Started                        pod/llm-proxy-7dc458997b-cxvjm           Container started
18m   Normal    Created                        pod/llm-proxy-7dc458997b-cxvjm           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-678qz           Container started
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-678qz           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m   Normal    Created                        pod/llm-proxy-7dc458997b-678qz           Container created
18m   Normal    Started                        pod/llm-proxy-7dc458997b-678qz           Container started
18m   Normal    Pulling                        pod/llm-proxy-7dc458997b-678qz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
18m   Normal    Pulled                         pod/llm-proxy-7dc458997b-678qz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 126ms (126ms including waiting). Image size: 64753325 bytes.
18m   Normal    Created                        pod/llm-proxy-7dc458997b-678qz           Container created
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-678qz           Readiness probe failed: Get "http://10.244.6.21:8000/health": dial tcp 10.244.6.21:8000: connect: connection refused
18m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-cxvjm           Readiness probe failed: Get "http://10.244.3.17:8000/health": dial tcp 10.244.3.17:8000: connect: connection refused
17m   Normal    Pulled                         pod/llm-proxy-7dc458997b-77tcs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
17m   Normal    Created                        pod/llm-proxy-7dc458997b-77tcs           Container created
17m   Normal    Started                        pod/llm-proxy-7dc458997b-77tcs           Container started
17m   Normal    Pulling                        pod/llm-proxy-7dc458997b-77tcs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
17m   Normal    Pulled                         pod/llm-proxy-7dc458997b-77tcs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 114ms (114ms including waiting). Image size: 64753325 bytes.
17m   Normal    Created                        pod/llm-proxy-7dc458997b-77tcs           Container created
17m   Normal    Started                        pod/llm-proxy-7dc458997b-77tcs           Container started
17m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-77tcs           Readiness probe failed: Get "http://10.244.4.18:8000/health": dial tcp 10.244.4.18:8000: connect: connection refused
run_end=1788187284
interrupted=0
