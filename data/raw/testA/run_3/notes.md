# scenario=testA run=7
collect_start=1787949783
interval_sec=60
run=3
run_start=1787949786
test=TestA(ramp)
u_max=50 size=mix
target=http://35.162.102.130:30080 loadgen=ec2-user@54.82.207.167
runs_total=8
collect_stop=1787952147
--- events ---
47m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-mg7hk
47m     Normal    Killing                        pod/llm-proxy-7dc458997b-mg7hk           Stopping container fastapi-proxy
47m     Normal    Killing                        pod/llm-proxy-7dc458997b-mg7hk           Stopping container llama-server
46m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mg7hk           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
46m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-8pk5f
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-8pk5f           Stopping container llama-server
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-8pk5f           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-9vbfk           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-9vbfk           Stopping container llama-server
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9vbfk
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-v4dpf           Successfully assigned default/llm-proxy-7dc458997b-v4dpf to ip-172-31-44-1.us-west-2.compute.internal
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-ltlhz           Stopping container llama-server
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-ltlhz           Stopping container fastapi-proxy
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-v4dpf
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-v4dpf           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    Started                        pod/llm-proxy-7dc458997b-v4dpf           Container started
40m     Normal    Created                        pod/llm-proxy-7dc458997b-v4dpf           Container created
40m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    Started                        pod/llm-proxy-7dc458997b-v4dpf           Container started
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-v4dpf           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-7dc458997b-v4dpf           Container created
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-v4dpf           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Started                        pod/llm-proxy-7dc458997b-v4dpf           Container started
39m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-v4dpf           Readiness probe failed: Get "http://10.244.8.5:8000/health": dial tcp 10.244.8.5:8000: connect: connection refused
39m     Normal    Created                        pod/llm-proxy-7dc458997b-v4dpf           Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-v4dpf           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 344ms (344ms including waiting). Image size: 64753325 bytes.
38m     Normal    Created                        pod/llm-proxy-7dc458997b-ssdls           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ssdls           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ssdls
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    Started                        pod/llm-proxy-7dc458997b-ssdls           Container started
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-ssdls           Successfully assigned default/llm-proxy-7dc458997b-ssdls to ip-172-31-38-225.us-west-2.compute.internal
37m     Normal    Created                        pod/llm-proxy-7dc458997b-ssdls           Container created
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ssdls           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Started                        pod/llm-proxy-7dc458997b-ssdls           Container started
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ssdls           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ssdls           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 353ms (353ms including waiting). Image size: 64753325 bytes.
37m     Normal    Created                        pod/llm-proxy-7dc458997b-ssdls           Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-ssdls           Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ssdls           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
37m     Normal    Created                        pod/llm-proxy-7dc458997b-l5lm7           Container created
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-l5lm7
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-l5lm7           Successfully assigned default/llm-proxy-7dc458997b-l5lm7 to ip-172-31-22-91.us-west-2.compute.internal
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l5lm7           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-rx9f6
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-rx9f6           Successfully assigned default/llm-proxy-7dc458997b-rx9f6 to ip-172-31-44-19.us-west-2.compute.internal
37m     Normal    Started                        pod/llm-proxy-7dc458997b-l5lm7           Container started
37m     Normal    Started                        pod/llm-proxy-7dc458997b-rx9f6           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-rx9f6           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rx9f6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-l5lm7           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-l5lm7           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-l5lm7           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l5lm7           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 285ms (285ms including waiting). Image size: 64753325 bytes.
36m     Normal    Started                        pod/llm-proxy-7dc458997b-l5lm7           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-l5lm7           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-l5lm7           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-l5lm7           Readiness probe failed: Get "http://10.244.4.4:8000/health": dial tcp 10.244.4.4:8000: connect: connection refused
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rx9f6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-rx9f6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-rx9f6           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-rx9f6           Container created
36m     Normal    Created                        pod/llm-proxy-7dc458997b-rx9f6           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-rx9f6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 343ms (343ms including waiting). Image size: 64753325 bytes.
36m     Normal    Started                        pod/llm-proxy-7dc458997b-rx9f6           Container started
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 6
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-xf9lt
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-86282           Successfully assigned default/llm-proxy-7dc458997b-86282 to ip-172-31-24-76.us-west-2.compute.internal
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-86282
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-xf9lt           Successfully assigned default/llm-proxy-7dc458997b-xf9lt to ip-172-31-25-68.us-west-2.compute.internal
31m     Normal    Started                        pod/llm-proxy-7dc458997b-86282           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-86282           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-86282           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xf9lt           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-xf9lt           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-xf9lt           Container started
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-xf9lt           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Created                        pod/llm-proxy-7dc458997b-xf9lt           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-xf9lt           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xf9lt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xf9lt           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 330ms (330ms including waiting). Image size: 64753325 bytes.
31m     Normal    Created                        pod/llm-proxy-7dc458997b-xf9lt           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-xf9lt           Container started
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-xf9lt           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
30m     Normal    Created                        pod/llm-proxy-7dc458997b-86282           Container created
30m     Normal    Created                        pod/llm-proxy-7dc458997b-86282           Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-86282           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Normal    Started                        pod/llm-proxy-7dc458997b-86282           Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-86282           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 327ms (327ms including waiting). Image size: 64753325 bytes.
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-86282           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Started                        pod/llm-proxy-7dc458997b-86282           Container started
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-86282           Readiness probe failed: Get "http://10.244.7.3:8000/health": dial tcp 10.244.7.3:8000: connect: connection refused
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-rx9f6           Stopping container llama-server
10m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
10m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-rx9f6
10m     Normal    Killing                        pod/llm-proxy-7dc458997b-rx9f6           Stopping container fastapi-proxy
10m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
9m55s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-rx9f6           Readiness probe failed: Get "http://10.244.5.4:8000/health": dial tcp 10.244.5.4:8000: connect: connection refused
4m      Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
4m      Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-86282
4m      Normal    Killing                        pod/llm-proxy-7dc458997b-86282           Stopping container llama-server
4m      Normal    Killing                        pod/llm-proxy-7dc458997b-86282           Stopping container fastapi-proxy
4m      Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
3m30s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-ssdls
3m30s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
3m30s   Normal    Killing                        pod/llm-proxy-7dc458997b-ssdls           Stopping container llama-server
3m30s   Normal    Killing                        pod/llm-proxy-7dc458997b-ssdls           Stopping container fastapi-proxy
3m30s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
3m      Normal    Killing                        pod/llm-proxy-7dc458997b-xf9lt           Stopping container llama-server
3m      Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
3m      Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-xf9lt
3m      Normal    Killing                        pod/llm-proxy-7dc458997b-xf9lt           Stopping container fastapi-proxy
3m      Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
2m45s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m45s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-l5lm7
2m45s   Normal    Killing                        pod/llm-proxy-7dc458997b-l5lm7           Stopping container fastapi-proxy
2m45s   Normal    Killing                        pod/llm-proxy-7dc458997b-l5lm7           Stopping container llama-server
2m45s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
run_end=1787952147
interrupted=0
