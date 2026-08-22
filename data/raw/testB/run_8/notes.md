# scenario=testB run=8
collect_start=1787353978
interval_sec=60
run=8
run_start=1787353981
test=TestB(steady)
level_users=20 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787354371
--- events ---
60m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hrj5h
60m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
60m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
60m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container llama-server
60m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container fastapi-proxy
47m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
47m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
47m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
47m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-vb4kw      Successfully assigned default/llm-proxy-857bf6d79d-vb4kw to ip-172-31-30-49.us-west-2.compute.internal
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-vb4kw
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
46m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-vb4kw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
46m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 334ms (334ms including waiting). Image size: 64752814 bytes.
46m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
46m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
46m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
25m     Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
25m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
25m     Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
12m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
2m13s   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
2m13s   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
2m13s   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
run_end=1787354371
interrupted=0
