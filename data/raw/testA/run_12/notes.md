# scenario=testA run=12
collect_start=1787994706
interval_sec=60
run=12
run_start=1787994709
test=TestA(ramp)
u_max=50 size=mix
target=http://32.185.81.12:30080 loadgen=ec2-user@54.173.228.20
runs_total=20
collect_stop=1787997070
--- events ---
45m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-c4fh2
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-c4fh2           Stopping container llama-server
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-c4fh2           Stopping container fastapi-proxy
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-cdpwx           Stopping container llama-server
45m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
45m     Normal    Killing                        pod/llm-proxy-7dc458997b-cdpwx           Stopping container fastapi-proxy
45m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
45m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-cdpwx
44m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-8fphm
44m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-8fphm           Stopping container fastapi-proxy
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-8fphm           Stopping container llama-server
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-wtbxb
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-wtbxb           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-wtbxb           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-7ld9t           Stopping container llama-server
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-7ld9t
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-7ld9t           Stopping container fastapi-proxy
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-9p9dk           Stopping container llama-server
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-9p9dk           Stopping container fastapi-proxy
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-spbk6
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-spbk6           Successfully assigned default/llm-proxy-7dc458997b-spbk6 to ip-172-31-32-201.us-west-2.compute.internal
40m     Normal    Started                        pod/llm-proxy-7dc458997b-spbk6           Container started
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-spbk6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    Created                        pod/llm-proxy-7dc458997b-spbk6           Container created
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-spbk6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-7dc458997b-spbk6           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-spbk6           Container started
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-spbk6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-spbk6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
39m     Normal    Created                        pod/llm-proxy-7dc458997b-spbk6           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-spbk6           Container started
39m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-spbk6           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-4fcnv
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4fcnv           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    Created                        pod/llm-proxy-7dc458997b-4fcnv           Container created
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-4fcnv           Successfully assigned default/llm-proxy-7dc458997b-4fcnv to ip-172-31-39-115.us-west-2.compute.internal
38m     Normal    Started                        pod/llm-proxy-7dc458997b-4fcnv           Container started
38m     Normal    Started                        pod/llm-proxy-7dc458997b-4fcnv           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-4fcnv           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4fcnv           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-4fcnv           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-4fcnv           Readiness probe failed: Get "http://10.244.6.5:8000/health": dial tcp 10.244.6.5:8000: connect: connection refused
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-4fcnv           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 383ms (383ms including waiting). Image size: 64753325 bytes.
38m     Normal    Created                        pod/llm-proxy-7dc458997b-4fcnv           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-4fcnv           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-vlzkm           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5xsb2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-5xsb2
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-vlzkm           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-5xsb2           Successfully assigned default/llm-proxy-7dc458997b-5xsb2 to ip-172-31-37-168.us-west-2.compute.internal
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-vlzkm           Successfully assigned default/llm-proxy-7dc458997b-vlzkm to ip-172-31-16-180.us-west-2.compute.internal
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-vlzkm
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
37m     Normal    Started                        pod/llm-proxy-7dc458997b-vlzkm           Container started
37m     Normal    Started                        pod/llm-proxy-7dc458997b-5xsb2           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-5xsb2           Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-5xsb2           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-5xsb2           Container created
37m     Normal    Created                        pod/llm-proxy-7dc458997b-5xsb2           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5xsb2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-5xsb2           Container started
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-5xsb2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-5xsb2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 293ms (293ms including waiting). Image size: 64753325 bytes.
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5xsb2           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-vlzkm           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Created                        pod/llm-proxy-7dc458997b-vlzkm           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-vlzkm           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-vlzkm           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-vlzkm           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-vlzkm           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
37m     Normal    Started                        pod/llm-proxy-7dc458997b-vlzkm           Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-vlzkm           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qbjbq
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 6
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-fn88z           Successfully assigned default/llm-proxy-7dc458997b-fn88z to ip-172-31-18-121.us-west-2.compute.internal
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-qbjbq           Successfully assigned default/llm-proxy-7dc458997b-qbjbq to ip-172-31-16-158.us-west-2.compute.internal
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-fn88z
31m     Normal    Started                        pod/llm-proxy-7dc458997b-qbjbq           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fn88z           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-fn88z           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-fn88z           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qbjbq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-qbjbq           Container created
31m     Normal    Created                        pod/llm-proxy-7dc458997b-fn88z           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fn88z           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 354ms (354ms including waiting). Image size: 64753325 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-fn88z           Container created
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-fn88z           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Started                        pod/llm-proxy-7dc458997b-fn88z           Container started
31m     Normal    Started                        pod/llm-proxy-7dc458997b-fn88z           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-fn88z           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-fn88z           Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
31m     Normal    Created                        pod/llm-proxy-7dc458997b-qbjbq           Container created
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-qbjbq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qbjbq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Started                        pod/llm-proxy-7dc458997b-qbjbq           Container started
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qbjbq           Readiness probe failed: Get "http://10.244.5.4:8000/health": dial tcp 10.244.5.4:8000: connect: connection refused
31m     Normal    Started                        pod/llm-proxy-7dc458997b-qbjbq           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-qbjbq           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qbjbq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 330ms (330ms including waiting). Image size: 64753325 bytes.
3m27s   Normal    Killing                        pod/llm-proxy-7dc458997b-4fcnv           Stopping container llama-server
3m27s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-4fcnv
3m27s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
3m27s   Normal    Killing                        pod/llm-proxy-7dc458997b-4fcnv           Stopping container fastapi-proxy
3m27s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-spbk6           Stopping container llama-server
3m12s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-vlzkm           Stopping container llama-server
3m12s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 3
3m12s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-spbk6
3m12s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-vlzkm
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-vlzkm           Stopping container fastapi-proxy
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-spbk6           Stopping container fastapi-proxy
2m57s   Normal    Killing                        pod/llm-proxy-7dc458997b-5xsb2           Stopping container fastapi-proxy
2m57s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-5xsb2
2m57s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
2m57s   Normal    Killing                        pod/llm-proxy-7dc458997b-5xsb2           Stopping container llama-server
2m57s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
2m12s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m12s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-qbjbq
2m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-qbjbq           Stopping container fastapi-proxy
2m12s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
2m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-qbjbq           Stopping container llama-server
run_end=1787997070
interrupted=0
