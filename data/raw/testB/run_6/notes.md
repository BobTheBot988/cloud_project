# scenario=testB run=6
collect_start=1787353188
interval_sec=60
run=6
run_start=1787353192
test=TestB(steady)
level_users=20 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787353585
--- events ---
47m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hrj5h
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
47m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
47m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container llama-server
47m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container fastapi-proxy
34m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
34m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
34m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-vb4kw
34m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
34m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
34m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
34m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-vb4kw      Successfully assigned default/llm-proxy-857bf6d79d-vb4kw to ip-172-31-30-49.us-west-2.compute.internal
34m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
34m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
33m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-vb4kw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
33m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
33m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
33m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 334ms (334ms including waiting). Image size: 64752814 bytes.
33m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
12m     Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
12m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
12m     Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
9m46s   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
9m46s   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
9m46s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787353585
interrupted=0
