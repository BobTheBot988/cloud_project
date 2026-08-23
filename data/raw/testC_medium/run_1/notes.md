# scenario=testC_medium run=1
collect_start=1787504487
interval_sec=60
run=1
run_start=1787504489
scenario=testC_medium
test=TestB(steady)
level_users=4 steady_min=3 size=medium
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787504687
--- events ---
58m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
53m   Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-99zhv
53m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
53m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
53m   Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container llama-server
53m   Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container fastapi-proxy
53m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-99zhv      Readiness probe failed: Get "http://10.244.2.6:8000/health": dial tcp 10.244.2.6:8000: connect: connection refused
22m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9psrm      Successfully assigned default/llm-proxy-7dc458997b-9psrm to ip-172-31-3-188.ec2.internal
22m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
22m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
22m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9psrm
22m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container llama-server
22m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
22m   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container fastapi-proxy
22m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
21m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
21m   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
21m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
21m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 140ms (140ms including waiting). Image size: 64753325 bytes.
21m   Normal    Pulling                        pod/llm-proxy-7dc458997b-9psrm      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
21m   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
21m   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
21m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9psrm      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
21m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
21m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
20m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
20m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
20m   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ts754      Successfully assigned default/llm-proxy-7dc458997b-ts754 to ip-172-31-38-68.ec2.internal
20m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
20m   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-ts754
20m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
20m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
20m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
20m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
19m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
19m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
19m   Normal    Pulling                        pod/llm-proxy-7dc458997b-ts754      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
19m   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
19m   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ts754      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787504687
interrupted=0
