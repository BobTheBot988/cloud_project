# scenario=testA run=6
collect_start=1787947322
interval_sec=60
run=2
run_start=1787947326
test=TestA(ramp)
u_max=50 size=mix
target=http://35.162.102.130:30080 loadgen=ec2-user@54.82.207.167
runs_total=8
collect_stop=1787949687
--- events ---
50m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
50m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-99rt2
50m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-99rt2           Stopping container fastapi-proxy
50m     Normal    Killing                        pod/llm-proxy-7dc458997b-99rt2           Stopping container llama-server
48m     Normal    Killing                        pod/llm-proxy-7dc458997b-fqzsr           Stopping container llama-server
48m     Normal    Killing                        pod/llm-proxy-7dc458997b-fqzsr           Stopping container fastapi-proxy
48m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
48m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-fqzsr
48m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-prlkf           Stopping container llama-server
46m     Normal    Killing                        pod/llm-proxy-7dc458997b-prlkf           Stopping container fastapi-proxy
46m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-prlkf
45m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-prlkf           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-gpprg           Stopping container fastapi-proxy
44m     Normal    Killing                        pod/llm-proxy-7dc458997b-gpprg           Stopping container llama-server
44m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-gpprg
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-qj658           Stopping container llama-server
43m     Normal    Killing                        pod/llm-proxy-7dc458997b-qj658           Stopping container fastapi-proxy
43m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-qj658
40m     Normal    Started                        pod/llm-proxy-7dc458997b-8pk5f           Container started
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-wnhg9           Stopping container llama-server
40m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-8pk5f           Successfully assigned default/llm-proxy-7dc458997b-8pk5f to ip-172-31-44-1.us-west-2.compute.internal
40m     Normal    Killing                        pod/llm-proxy-7dc458997b-wnhg9           Stopping container fastapi-proxy
40m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8pk5f           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-8pk5f
40m     Normal    Created                        pod/llm-proxy-7dc458997b-8pk5f           Container created
39m     Normal    Started                        pod/llm-proxy-7dc458997b-8pk5f           Container started
39m     Normal    Pulling                        pod/llm-proxy-7dc458997b-8pk5f           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
39m     Normal    Created                        pod/llm-proxy-7dc458997b-8pk5f           Container created
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8pk5f           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-7dc458997b-8pk5f           Container created
39m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-8pk5f           Readiness probe failed: Get "http://10.244.8.4:8000/health": dial tcp 10.244.8.4:8000: connect: connection refused
39m     Normal    Started                        pod/llm-proxy-7dc458997b-8pk5f           Container started
39m     Normal    Pulled                         pod/llm-proxy-7dc458997b-8pk5f           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 382ms (382ms including waiting). Image size: 64753325 bytes.
39m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-mg7hk           Successfully assigned default/llm-proxy-7dc458997b-mg7hk to ip-172-31-38-225.us-west-2.compute.internal
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-mg7hk
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
38m     Normal    Created                        pod/llm-proxy-7dc458997b-mg7hk           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mg7hk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Started                        pod/llm-proxy-7dc458997b-mg7hk           Container started
36m     Normal    Pulling                        pod/llm-proxy-7dc458997b-mg7hk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
36m     Normal    Started                        pod/llm-proxy-7dc458997b-mg7hk           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-mg7hk           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mg7hk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 385ms (385ms including waiting). Image size: 64753325 bytes.
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mg7hk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
36m     Normal    Created                        pod/llm-proxy-7dc458997b-mg7hk           Container created
36m     Normal    Started                        pod/llm-proxy-7dc458997b-mg7hk           Container started
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: cpu resource utilization (percentage of request) above target
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ltlhz           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 3
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ltlhz
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-ltlhz           Successfully assigned default/llm-proxy-7dc458997b-ltlhz to ip-172-31-22-91.us-west-2.compute.internal
31m     Normal    Started                        pod/llm-proxy-7dc458997b-ltlhz           Container started
31m     Normal    Created                        pod/llm-proxy-7dc458997b-ltlhz           Container created
31m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
31m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-9vbfk
31m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 3 to 4
31m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-9vbfk           Successfully assigned default/llm-proxy-7dc458997b-9vbfk to ip-172-31-44-19.us-west-2.compute.internal
31m     Normal    Created                        pod/llm-proxy-7dc458997b-9vbfk           Container created
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vbfk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
31m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ltlhz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ltlhz           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m     Normal    Created                        pod/llm-proxy-7dc458997b-ltlhz           Container created
31m     Normal    Started                        pod/llm-proxy-7dc458997b-ltlhz           Container started
31m     Normal    Started                        pod/llm-proxy-7dc458997b-9vbfk           Container started
31m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ltlhz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 309ms (309ms including waiting). Image size: 64753325 bytes.
31m     Normal    Started                        pod/llm-proxy-7dc458997b-ltlhz           Container started
31m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ltlhz           Readiness probe failed: Get "http://10.244.4.3:8000/health": dial tcp 10.244.4.3:8000: connect: connection refused
31m     Normal    Created                        pod/llm-proxy-7dc458997b-ltlhz           Container created
30m     Normal    Pulling                        pod/llm-proxy-7dc458997b-9vbfk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vbfk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
30m     Normal    Created                        pod/llm-proxy-7dc458997b-9vbfk           Container created
30m     Normal    Started                        pod/llm-proxy-7dc458997b-9vbfk           Container started
30m     Normal    Started                        pod/llm-proxy-7dc458997b-9vbfk           Container started
30m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9vbfk           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
30m     Normal    Created                        pod/llm-proxy-7dc458997b-9vbfk           Container created
30m     Normal    Pulled                         pod/llm-proxy-7dc458997b-9vbfk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 345ms (345ms including waiting). Image size: 64753325 bytes.
6m3s    Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
6m3s    Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-mg7hk
6m3s    Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
6m2s    Normal    Killing                        pod/llm-proxy-7dc458997b-mg7hk           Stopping container fastapi-proxy
6m2s    Normal    Killing                        pod/llm-proxy-7dc458997b-mg7hk           Stopping container llama-server
5m46s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mg7hk           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
5m18s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
5m18s   Normal    Killing                        pod/llm-proxy-7dc458997b-8pk5f           Stopping container llama-server
5m18s   Normal    Killing                        pod/llm-proxy-7dc458997b-8pk5f           Stopping container fastapi-proxy
5m18s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
5m18s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-8pk5f
2m47s   Normal    Killing                        pod/llm-proxy-7dc458997b-9vbfk           Stopping container fastapi-proxy
2m47s   Normal    Killing                        pod/llm-proxy-7dc458997b-9vbfk           Stopping container llama-server
2m47s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9vbfk
2m47s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
2m47s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
run_end=1787949687
interrupted=0
