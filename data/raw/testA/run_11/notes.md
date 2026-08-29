# scenario=testA run=11
collect_start=1787992290
interval_sec=60
run=11
run_start=1787992294
test=TestA(ramp)
u_max=50 size=mix
target=http://32.185.81.12:30080 loadgen=ec2-user@54.173.228.20
runs_total=20
collect_stop=1787994655
--- events ---
50m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-z7s5f
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-z7s5f           Stopping container llama-server
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-z7s5f           Stopping container fastapi-proxy
49m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-z7s5f           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-vgfnn           Stopping container llama-server
46m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-vgfnn
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-vgfnn           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-v4zcr           Stopping container llama-server
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-75wvz
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-v4zcr
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 2
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-75wvz           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-75wvz           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-v4zcr           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-dgjwp
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-dgjwp           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-dgjwp           Stopping container fastapi-proxy
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-9p9dk
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-9p9dk           Successfully assigned default/llm-proxy-7dc458997b-9p9dk to ip-172-31-39-115.us-west-2.compute.internal
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-xlp8h           Stopping container llama-server
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-xlp8h           Stopping container fastapi-proxy
40m     Normal    Started                        pod/llm-proxy-7dc458997b-9p9dk           Container started
40m     Normal    Created                        pod/llm-proxy-7dc458997b-9p9dk           Container created
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9p9dk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-9p9dk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Created                        pod/llm-proxy-7dc458997b-9p9dk           Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9p9dk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 330ms (330ms including waiting). Image size: 64753325 bytes.
39m     Normal    Started                        pod/llm-proxy-7dc458997b-9p9dk           Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-9p9dk           Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9p9dk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Started                        pod/llm-proxy-7dc458997b-9p9dk           Container started
39m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9p9dk           Readiness probe failed: Get "http://10.244.6.4:8000/health": dial tcp 10.244.6.4:8000: connect: connection refused
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-wtbxb           Successfully assigned default/llm-proxy-7dc458997b-wtbxb to ip-172-31-32-201.us-west-2.compute.internal
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-wtbxb
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wtbxb           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-wtbxb           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-wtbxb           Container started
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wtbxb           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 359ms (359ms including waiting). Image size: 64753325 bytes.
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wtbxb           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-wtbxb           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-wtbxb           Container started
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wtbxb           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Created                        pod/llm-proxy-7dc458997b-wtbxb           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-wtbxb           Container started
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-8fphm
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-c4fh2
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-8fphm           Successfully assigned default/llm-proxy-7dc458997b-8fphm to ip-172-31-37-168.us-west-2.compute.internal
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-c4fh2           Successfully assigned default/llm-proxy-7dc458997b-c4fh2 to ip-172-31-16-180.us-west-2.compute.internal
37m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
37m     Normal    Created                        pod/llm-proxy-7dc458997b-c4fh2           Container created
37m     Normal    Created                        pod/llm-proxy-7dc458997b-8fphm           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8fphm           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-8fphm           Container started
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c4fh2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-c4fh2           Container started
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8fphm           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 328ms (328ms including waiting). Image size: 64753325 bytes.
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8fphm           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-8fphm           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Started                        pod/llm-proxy-7dc458997b-8fphm           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-8fphm           Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-8fphm           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-8fphm           Container created
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-8fphm           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-c4fh2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c4fh2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 327ms (327ms including waiting). Image size: 64753325 bytes.
37m     Normal    Started                        pod/llm-proxy-7dc458997b-c4fh2           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-c4fh2           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-c4fh2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-c4fh2           Container created
37m     Normal    Started                        pod/llm-proxy-7dc458997b-c4fh2           Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-c4fh2           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-cdpwx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 5
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-cdpwx
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-cdpwx           Successfully assigned default/llm-proxy-7dc458997b-cdpwx to ip-172-31-16-158.us-west-2.compute.internal
31m     Normal    Started                        pod/llm-proxy-7dc458997b-cdpwx           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-cdpwx           Container created
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Started                        pod/llm-proxy-7dc458997b-7ld9t           Container started
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-7ld9t           Successfully assigned default/llm-proxy-7dc458997b-7ld9t to ip-172-31-18-121.us-west-2.compute.internal
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 5 to 6
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-7ld9t
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7ld9t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-7ld9t           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-cdpwx           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-cdpwx           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-cdpwx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-cdpwx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Started                        pod/llm-proxy-7dc458997b-cdpwx           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-cdpwx           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-cdpwx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 349ms (349ms including waiting). Image size: 64753325 bytes.
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-cdpwx           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-7ld9t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Created                        pod/llm-proxy-7dc458997b-7ld9t           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7ld9t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 343ms (343ms including waiting). Image size: 64753325 bytes.
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-7ld9t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-7ld9t           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-7ld9t           Container started
31m     Normal    Started                        pod/llm-proxy-7dc458997b-7ld9t           Container started
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-7ld9t           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
5m30s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-c4fh2
5m30s   Normal    Killing                        pod/llm-proxy-7dc458997b-c4fh2           Stopping container llama-server
5m30s   Normal    Killing                        pod/llm-proxy-7dc458997b-c4fh2           Stopping container fastapi-proxy
5m30s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
5m30s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
5m      Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-cdpwx
5m      Normal    Killing                        pod/llm-proxy-7dc458997b-cdpwx           Stopping container llama-server
5m      Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
5m      Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
5m      Normal    Killing                        pod/llm-proxy-7dc458997b-cdpwx           Stopping container fastapi-proxy
4m15s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-8fphm
4m15s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
4m15s   Normal    Killing                        pod/llm-proxy-7dc458997b-8fphm           Stopping container llama-server
4m15s   Normal    Killing                        pod/llm-proxy-7dc458997b-8fphm           Stopping container fastapi-proxy
4m15s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
3m30s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-wtbxb
3m30s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
3m30s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
3m29s   Normal    Killing                        pod/llm-proxy-7dc458997b-wtbxb           Stopping container fastapi-proxy
3m29s   Normal    Killing                        pod/llm-proxy-7dc458997b-wtbxb           Stopping container llama-server
2m59s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m59s   Normal    Killing                        pod/llm-proxy-7dc458997b-7ld9t           Stopping container fastapi-proxy
2m59s   Normal    Killing                        pod/llm-proxy-7dc458997b-7ld9t           Stopping container llama-server
2m59s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
2m59s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-7ld9t
run_end=1787994655
interrupted=0
