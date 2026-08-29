# scenario=testA run=13
collect_start=1787997107
interval_sec=60
run=13
run_start=1787997110
test=TestA(ramp)
u_max=50 size=mix
target=http://32.185.81.12:30080 loadgen=ec2-user@54.173.228.20
runs_total=20
collect_stop=1787999472
--- events ---
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-4fcnv
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-4fcnv           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-4fcnv           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-vlzkm           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-spbk6           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-spbk6           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-vlzkm           Stopping container llama-server
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 3
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-spbk6
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-vlzkm
42m     Normal    Killing                        pod/llm-proxy-7dc458997b-5xsb2           Stopping container llama-server
42m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-5xsb2
42m     Normal    Killing                        pod/llm-proxy-7dc458997b-5xsb2           Stopping container fastapi-proxy
42m     Normal    Killing                        pod/llm-proxy-7dc458997b-qbjbq           Stopping container llama-server
42m     Normal    Killing                        pod/llm-proxy-7dc458997b-qbjbq           Stopping container fastapi-proxy
42m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-qbjbq
39m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-gmrtv
39m     Normal    Killing                        pod/llm-proxy-7dc458997b-fn88z           Stopping container llama-server
39m     Normal    Killing                        pod/llm-proxy-7dc458997b-fn88z           Stopping container fastapi-proxy
39m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-gmrtv           Successfully assigned default/llm-proxy-7dc458997b-gmrtv to ip-172-31-39-115.us-west-2.compute.internal
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gmrtv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-7dc458997b-gmrtv           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-gmrtv           Container started
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gmrtv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Started                        pod/llm-proxy-7dc458997b-gmrtv           Container started
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-gmrtv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 393ms (393ms including waiting). Image size: 64753325 bytes.
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-gmrtv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Started                        pod/llm-proxy-7dc458997b-gmrtv           Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-gmrtv           Container created
39m     Normal    Created                        pod/llm-proxy-7dc458997b-gmrtv           Container created
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-9vk9r           Successfully assigned default/llm-proxy-7dc458997b-9vk9r to ip-172-31-32-201.us-west-2.compute.internal
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-9vk9r
38m     Normal    Created                        pod/llm-proxy-7dc458997b-9vk9r           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vk9r           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Started                        pod/llm-proxy-7dc458997b-9vk9r           Container started
38m     Normal    Started                        pod/llm-proxy-7dc458997b-9vk9r           Container started
38m     Normal    Started                        pod/llm-proxy-7dc458997b-9vk9r           Container started
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-9vk9r           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vk9r           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
38m     Normal    Created                        pod/llm-proxy-7dc458997b-9vk9r           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vk9r           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-9vk9r           Container created
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-bq5gq           Successfully assigned default/llm-proxy-7dc458997b-bq5gq to ip-172-31-16-180.us-west-2.compute.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-bq5gq
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-2bngl           Successfully assigned default/llm-proxy-7dc458997b-2bngl to ip-172-31-37-168.us-west-2.compute.internal
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-2bngl
37m     Normal    Started                        pod/llm-proxy-7dc458997b-2bngl           Container started
37m     Normal    Started                        pod/llm-proxy-7dc458997b-bq5gq           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-bq5gq           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-bq5gq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-2bngl           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-2bngl           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
36m     Normal    Created                        pod/llm-proxy-7dc458997b-2bngl           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-2bngl           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-2bngl           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-2bngl           Container started
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2bngl           Readiness probe failed: Get "http://10.244.4.5:8000/health": dial tcp 10.244.4.5:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-7dc458997b-2bngl           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-2bngl           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-2bngl           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 357ms (357ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-bq5gq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-bq5gq           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-bq5gq           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-bq5gq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Started                        pod/llm-proxy-7dc458997b-bq5gq           Container started
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-bq5gq           Readiness probe failed: Get "http://10.244.3.5:8000/health": dial tcp 10.244.3.5:8000: connect: connection refused
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-bq5gq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 381ms (381ms including waiting). Image size: 64753325 bytes.
36m     Normal    Created                        pod/llm-proxy-7dc458997b-bq5gq           Container created
31m     Normal    Created                        pod/llm-proxy-7dc458997b-5wfqc           Container created
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-5wfqc
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5wfqc           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-5wfqc           Successfully assigned default/llm-proxy-7dc458997b-5wfqc to ip-172-31-18-121.us-west-2.compute.internal
31m     Normal    Started                        pod/llm-proxy-7dc458997b-5wfqc           Container started
31m     Normal    Started                        pod/llm-proxy-7dc458997b-g8lb4           Container started
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-g8lb4
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 6
31m     Normal    Created                        pod/llm-proxy-7dc458997b-g8lb4           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lb4           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-g8lb4           Successfully assigned default/llm-proxy-7dc458997b-g8lb4 to ip-172-31-16-158.us-west-2.compute.internal
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lb4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-g8lb4           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Created                        pod/llm-proxy-7dc458997b-g8lb4           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-g8lb4           Container started
31m     Normal    Started                        pod/llm-proxy-7dc458997b-5wfqc           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5wfqc           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-5wfqc           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-5wfqc           Container started
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5wfqc           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5wfqc           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 581ms (581ms including waiting). Image size: 64753325 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-5wfqc           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-g8lb4           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.878s (1.878s including waiting). Image size: 64753325 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-g8lb4           Container created
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5wfqc           Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
31m     Normal    Started                        pod/llm-proxy-7dc458997b-g8lb4           Container started
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-g8lb4           Readiness probe failed: Get "http://10.244.5.5:8000/health": dial tcp 10.244.5.5:8000: connect: connection refused
9m26s   Normal    Killing                        pod/llm-proxy-7dc458997b-gmrtv           Stopping container llama-server
9m26s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
9m26s   Normal    Killing                        pod/llm-proxy-7dc458997b-gmrtv           Stopping container fastapi-proxy
9m26s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-gmrtv
9m26s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
9m11s   Normal    Killing                        pod/llm-proxy-7dc458997b-bq5gq           Stopping container fastapi-proxy
9m11s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-bq5gq
9m11s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
9m11s   Normal    Killing                        pod/llm-proxy-7dc458997b-bq5gq           Stopping container llama-server
9m11s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
9m4s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-gmrtv           Readiness probe failed: Get "http://10.244.6.6:8000/health": dial tcp 10.244.6.6:8000: connect: connection refused
8m11s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
8m11s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
8m11s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9vk9r
8m11s   Normal    Killing                        pod/llm-proxy-7dc458997b-9vk9r           Stopping container fastapi-proxy
8m11s   Normal    Killing                        pod/llm-proxy-7dc458997b-9vk9r           Stopping container llama-server
7m45s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9vk9r           Readiness probe failed: Get "http://10.244.2.5:8000/health": dial tcp 10.244.2.5:8000: connect: connection refused
4m41s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
4m41s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-5wfqc
4m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-5wfqc           Stopping container llama-server
4m41s   Normal    Killing                        pod/llm-proxy-7dc458997b-5wfqc           Stopping container fastapi-proxy
4m41s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
2m56s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-g8lb4
2m56s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m56s   Normal    Killing                        pod/llm-proxy-7dc458997b-g8lb4           Stopping container llama-server
2m56s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
2m56s   Normal    Killing                        pod/llm-proxy-7dc458997b-g8lb4           Stopping container fastapi-proxy
run_end=1787999472
interrupted=0
