# scenario=testC_small run=1
collect_start=1787503489
interval_sec=60
run=1
run_start=1787503492
scenario=testC_small
test=TestB(steady)
level_users=4 steady_min=3 size=small
target=http://32.198.206.89:30080 loadgen=ec2-user@3.80.181.173
runs_total=5
collect_stop=1787503689
--- events ---
58m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-99zhv      Successfully assigned default/llm-proxy-7dc458997b-99zhv to ip-172-31-3-188.ec2.internal
58m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-99zhv
58m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99zhv      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
58m     Normal    Created                        pod/llm-proxy-7dc458997b-99zhv      Container created
58m     Normal    Started                        pod/llm-proxy-7dc458997b-99zhv      Container started
57m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99zhv      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
57m     Normal    Created                        pod/llm-proxy-7dc458997b-99zhv      Container created
57m     Normal    Started                        pod/llm-proxy-7dc458997b-99zhv      Container started
57m     Normal    Pulled                         pod/llm-proxy-7dc458997b-99zhv      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 118ms (119ms including waiting). Image size: 64753325 bytes.
57m     Normal    Created                        pod/llm-proxy-7dc458997b-99zhv      Container created
57m     Normal    Started                        pod/llm-proxy-7dc458997b-99zhv      Container started
57m     Normal    Pulling                        pod/llm-proxy-7dc458997b-99zhv      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-99zhv      Readiness probe failed: Get "http://10.244.2.6:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
42m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
36m     Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container fastapi-proxy
36m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-7dc458997b from 2 to 1
36m     Normal    SuccessfulDelete               replicaset/llm-proxy-7dc458997b     Deleted pod: llm-proxy-7dc458997b-99zhv
36m     Normal    Killing                        pod/llm-proxy-7dc458997b-99zhv      Stopping container llama-server
36m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
36m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-99zhv      Readiness probe failed: Get "http://10.244.2.6:8000/health": dial tcp 10.244.2.6:8000: connect: connection refused
5m37s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-9psrm      Successfully assigned default/llm-proxy-7dc458997b-9psrm to ip-172-31-3-188.ec2.internal
5m37s   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
5m37s   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
5m37s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m37s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-9psrm
5m37s   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container fastapi-proxy
5m37s   Normal    Killing                        pod/llm-proxy-7dc458997b-2kjx2      Stopping container llama-server
5m35s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-2kjx2      Readiness probe failed: Get "http://10.244.1.5:8000/health": dial tcp 10.244.1.5:8000: connect: connection refused
4m55s   Normal    Pulling                        pod/llm-proxy-7dc458997b-9psrm      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
4m55s   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
4m55s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 140ms (140ms including waiting). Image size: 64753325 bytes.
4m55s   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
4m55s   Normal    Started                        pod/llm-proxy-7dc458997b-9psrm      Container started
4m55s   Normal    Pulled                         pod/llm-proxy-7dc458997b-9psrm      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
4m55s   Normal    Created                        pod/llm-proxy-7dc458997b-9psrm      Container created
4m54s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-9psrm      Readiness probe failed: Get "http://10.244.2.7:8000/health": dial tcp 10.244.2.7:8000: connect: connection refused
4m36s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
4m36s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
4m21s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
4m21s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
3m51s   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-7dc458997b from 1 to 2
3m51s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
3m51s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ts754      Successfully assigned default/llm-proxy-7dc458997b-ts754 to ip-172-31-38-68.ec2.internal
3m51s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b     Created pod: llm-proxy-7dc458997b-ts754
3m50s   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
3m50s   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
3m50s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
2m55s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
2m55s   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
2m55s   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
2m55s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ts754      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 130ms (130ms including waiting). Image size: 64753325 bytes.
2m55s   Normal    Pulling                        pod/llm-proxy-7dc458997b-ts754      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
2m55s   Normal    Started                        pod/llm-proxy-7dc458997b-ts754      Container started
2m55s   Normal    Created                        pod/llm-proxy-7dc458997b-ts754      Container created
2m54s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ts754      Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
run_end=1787503689
interrupted=0
