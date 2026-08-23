# scenario=testC_medium run=4
collect_start=1787505091
interval_sec=60
run=4
run_start=1787505094
scenario=testC_medium
test=TestB(steady)
level_users=4 steady_min=3 size=medium
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787505290
--- events ---
32m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9psrm
32m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container llama-server
32m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container fastapi-proxy
32m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9psrm      Successfully assigned default/llm-proxy-7dc458997b-9psrm to ip-172-31-3-188.ec2.internal
32m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
32m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
32m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
32m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
31m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
31m   Normal    Pulling                        pod/llm-proxy-7dc458997b-9psrm      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
31m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 140ms (140ms including waiting). Image size: 64753325 bytes.
31m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
31m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
31m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
31m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
31m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9psrm      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
31m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
31m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
31m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
31m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
30m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ts754      Successfully assigned default/llm-proxy-7dc458997b-ts754 to ip-172-31-38-68.ec2.internal
30m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
30m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
30m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-ts754
30m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
30m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
30m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
29m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
29m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
29m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
29m   Normal    Pulling                        pod/llm-proxy-7dc458997b-ts754      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
29m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
29m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
29m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
29m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ts754      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787505290
interrupted=0
