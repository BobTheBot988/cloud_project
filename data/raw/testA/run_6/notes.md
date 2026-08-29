# scenario=testA run=6
collect_start=1787959322
interval_sec=60
run=6
run_start=1787959325
test=TestA(ramp)
u_max=50 size=mix
target=http://34.217.168.212:30080 loadgen=ec2-user@3.81.139.164
runs_total=10
collect_stop=1787961686
--- events ---
50m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-5m98z
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-5m98z           Stopping container llama-server
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-5m98z           Stopping container fastapi-proxy
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-wjrh7           Stopping container fastapi-proxy
50m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-wjrh7
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-wjrh7           Stopping container llama-server
50m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5m98z           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
49m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-kzl6t           Successfully assigned default/llm-proxy-7dc458997b-kzl6t to ip-172-31-40-224.us-west-2.compute.internal
49m     Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q           Container created
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-xkk6q
49m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-kzl6t
49m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-xkk6q           Successfully assigned default/llm-proxy-7dc458997b-xkk6q to ip-172-31-33-72.us-west-2.compute.internal
49m     Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t           Container created
49m     Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t           Container started
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m     Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q           Container started
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 356ms (356ms including waiting). Image size: 64753325 bytes.
49m     Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q           Container created
49m     Normal    Pulling                        pod/llm-proxy-7dc458997b-xkk6q           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q           Container started
49m     Normal    Created                        pod/llm-proxy-7dc458997b-xkk6q           Container created
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-xkk6q           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-xkk6q           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
49m     Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t           Container created
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Normal    Started                        pod/llm-proxy-7dc458997b-xkk6q           Container started
49m     Normal    Created                        pod/llm-proxy-7dc458997b-kzl6t           Container created
49m     Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t           Container started
49m     Normal    Pulled                         pod/llm-proxy-7dc458997b-kzl6t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 323ms (323ms including waiting). Image size: 64753325 bytes.
49m     Normal    Started                        pod/llm-proxy-7dc458997b-kzl6t           Container started
49m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-kzl6t           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
49m     Normal    Pulling                        pod/llm-proxy-7dc458997b-kzl6t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-kzl6t           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-kzl6t           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-kzl6t
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-xkk6q           Stopping container llama-server
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-xkk6q
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-xkk6q           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-sspc6
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-sspc6           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-ppzrl           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-ppzrl           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-hmnnv
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-ppzrl
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-hmnnv           Stopping container fastapi-proxy
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-hmnnv           Stopping container llama-server
43m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hmnnv           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
43m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 1
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-sspc6           Stopping container fastapi-proxy
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-ctwm4           Successfully assigned default/llm-proxy-7dc458997b-ctwm4 to ip-172-31-31-154.us-west-2.compute.internal
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ctwm4
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-5rjdx           Stopping container fastapi-proxy
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-5rjdx           Stopping container llama-server
40m     Normal    Started                        pod/llm-proxy-7dc458997b-ctwm4           Container started
40m     Normal    Created                        pod/llm-proxy-7dc458997b-ctwm4           Container created
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ctwm4           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ctwm4           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 363ms (363ms including waiting). Image size: 64753325 bytes.
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ctwm4           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ctwm4           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-7dc458997b-ctwm4           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-ctwm4           Container started
39m     Normal    Created                        pod/llm-proxy-7dc458997b-ctwm4           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-ctwm4           Container started
39m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ctwm4           Readiness probe failed: Get "http://10.244.6.4:8000/health": dial tcp 10.244.6.4:8000: connect: connection refused
38m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-md9lt           Successfully assigned default/llm-proxy-7dc458997b-md9lt to ip-172-31-33-72.us-west-2.compute.internal
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-md9lt
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    Started                        pod/llm-proxy-7dc458997b-md9lt           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-md9lt           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-md9lt           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-md9lt           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-md9lt           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 285ms (285ms including waiting). Image size: 64753325 bytes.
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-md9lt           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Started                        pod/llm-proxy-7dc458997b-md9lt           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-md9lt           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-md9lt           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-md9lt           Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-md9lt           Readiness probe failed: Get "http://10.244.2.4:8000/health": dial tcp 10.244.2.4:8000: connect: connection refused
36m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qf7tn
36m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 3
36m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
36m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-qf7tn           Successfully assigned default/llm-proxy-7dc458997b-qf7tn to ip-172-31-40-224.us-west-2.compute.internal
36m     Normal    Started                        pod/llm-proxy-7dc458997b-qf7tn           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-qf7tn           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qf7tn           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
36m     Normal    Started                        pod/llm-proxy-7dc458997b-qf7tn           Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-qf7tn           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Created                        pod/llm-proxy-7dc458997b-qf7tn           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qf7tn           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qf7tn           Readiness probe failed: Get "http://10.244.3.4:8000/health": dial tcp 10.244.3.4:8000: connect: connection refused
36m     Normal    Started                        pod/llm-proxy-7dc458997b-qf7tn           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-qf7tn           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qf7tn           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 337ms (337ms including waiting). Image size: 64753325 bytes.
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j8s4w           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m     Normal    Created                        pod/llm-proxy-7dc458997b-j8s4w           Container created
35m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-j8s4w           Successfully assigned default/llm-proxy-7dc458997b-j8s4w to ip-172-31-42-209.us-west-2.compute.internal
35m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-j8s4w
35m     Normal    Started                        pod/llm-proxy-7dc458997b-j8s4w           Container started
35m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
35m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 3 to 4
35m     Normal    Created                        pod/llm-proxy-7dc458997b-j8s4w           Container created
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j8s4w           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-j8s4w           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-j8s4w           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
35m     Normal    Started                        pod/llm-proxy-7dc458997b-j8s4w           Container started
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-j8s4w           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 321ms (321ms including waiting). Image size: 64753325 bytes.
35m     Normal    Created                        pod/llm-proxy-7dc458997b-j8s4w           Container created
35m     Normal    Started                        pod/llm-proxy-7dc458997b-j8s4w           Container started
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 6
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-b92v6
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-zrv9p           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-zrv9p           Container created
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-zrv9p           Successfully assigned default/llm-proxy-7dc458997b-zrv9p to ip-172-31-21-191.us-west-2.compute.internal
31m     Normal    Started                        pod/llm-proxy-7dc458997b-b92v6           Container started
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zrv9p
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-b92v6           Successfully assigned default/llm-proxy-7dc458997b-b92v6 to ip-172-31-30-105.us-west-2.compute.internal
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-b92v6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-b92v6           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-zrv9p           Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-zrv9p           Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-zrv9p           Container started
30m     Normal    Created                        pod/llm-proxy-7dc458997b-zrv9p           Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-zrv9p           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 325ms (325ms including waiting). Image size: 64753325 bytes.
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-zrv9p           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-zrv9p           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Started                        pod/llm-proxy-7dc458997b-zrv9p           Container started
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-zrv9p           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
30m     Normal    Created                        pod/llm-proxy-7dc458997b-b92v6           Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-b92v6           Container started
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-b92v6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Normal    Started                        pod/llm-proxy-7dc458997b-b92v6           Container started
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-b92v6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-b92v6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 369ms (369ms including waiting). Image size: 64753325 bytes.
30m     Normal    Created                        pod/llm-proxy-7dc458997b-b92v6           Container created
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-b92v6           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
5m42s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
5m42s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-j8s4w
5m42s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
5m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-j8s4w           Stopping container llama-server
5m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-j8s4w           Stopping container fastapi-proxy
5m12s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
5m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-qf7tn           Stopping container llama-server
5m12s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
5m12s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-qf7tn
5m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-qf7tn           Stopping container fastapi-proxy
3m27s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
3m27s   Normal    Killing                        pod/llm-proxy-7dc458997b-md9lt           Stopping container fastapi-proxy
3m27s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
3m27s   Normal    Killing                        pod/llm-proxy-7dc458997b-md9lt           Stopping container llama-server
3m27s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-md9lt
3m12s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
3m12s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-zrv9p
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-zrv9p           Stopping container fastapi-proxy
3m12s   Normal    Killing                        pod/llm-proxy-7dc458997b-zrv9p           Stopping container llama-server
3m12s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
2m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-b92v6           Stopping container llama-server
2m42s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m42s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-b92v6
2m42s   Normal    Killing                        pod/llm-proxy-7dc458997b-b92v6           Stopping container fastapi-proxy
2m42s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
run_end=1787961686
interrupted=0
