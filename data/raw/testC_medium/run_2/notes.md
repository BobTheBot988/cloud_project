# scenario=testC_medium run=2
collect_start=1787504687
interval_sec=60
run=2
run_start=1787504689
scenario=testC_medium
test=TestB(steady)
level_users=4 steady_min=3 size=medium
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787504888
--- events ---
56m   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-99zhv
56m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
56m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
56m   Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container llama-server
56m   Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container fastapi-proxy
56m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-99zhv      Readiness probe failed: Get "http://10.244.2.6:8000/health": dial tcp 10.244.2.6:8000: connect: connection refused
25m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9psrm      Successfully assigned default/llm-proxy-7dc458997b-9psrm to ip-172-31-3-188.ec2.internal
25m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
25m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
25m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
25m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container fastapi-proxy
25m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container llama-server
25m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9psrm
25m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
24m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
24m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 140ms (140ms including waiting). Image size: 64753325 bytes.
24m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
24m   Normal    Pulling                        pod/llm-proxy-7dc458997b-9psrm      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
24m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
24m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
24m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
24m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9psrm      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
24m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
24m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
24m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
24m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
23m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
23m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
23m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-ts754
23m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ts754      Successfully assigned default/llm-proxy-7dc458997b-ts754 to ip-172-31-38-68.ec2.internal
23m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
23m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
23m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
22m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
22m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
22m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
22m   Normal    Pulling                        pod/llm-proxy-7dc458997b-ts754      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
22m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
22m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
22m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
22m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ts754      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787504888
interrupted=0
