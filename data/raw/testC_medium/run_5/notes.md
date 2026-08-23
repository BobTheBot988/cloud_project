# scenario=testC_medium run=5
collect_start=1787505290
interval_sec=60
run=5
run_start=1787505292
scenario=testC_medium
test=TestB(steady)
level_users=4 steady_min=3 size=medium
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787505492
--- events ---
35m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9psrm
35m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container llama-server
35m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container fastapi-proxy
35m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9psrm      Successfully assigned default/llm-proxy-7dc458997b-9psrm to ip-172-31-3-188.ec2.internal
35m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
35m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
35m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
34m   Normal    Pulling                        pod/llm-proxy-7dc458997b-9psrm      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
34m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
34m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
34m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 140ms (140ms including waiting). Image size: 64753325 bytes.
34m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
34m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
34m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
34m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9psrm      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
34m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
34m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
34m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
34m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
33m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-ts754
33m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
33m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
33m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ts754      Successfully assigned default/llm-proxy-7dc458997b-ts754 to ip-172-31-38-68.ec2.internal
33m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
33m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
33m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
32m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
32m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
32m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
32m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
32m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
32m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
32m   Normal    Pulling                        pod/llm-proxy-7dc458997b-ts754      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
91s   Normal    Killing                        pod/llm-proxy-7dc458997b-ts754      Stopping container fastapi-proxy
91s   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-ts754
91s   Normal    Killing                        pod/llm-proxy-7dc458997b-ts754      Stopping container llama-server
91s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
91s   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
66s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ts754      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787505492
interrupted=0
