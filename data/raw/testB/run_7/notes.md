# scenario=testB run=7
collect_start=1787353585
interval_sec=60
run=7
run_start=1787353589
test=TestB(steady)
level_users=20 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787353978
--- events ---
54m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hrj5h
54m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
54m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
54m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container llama-server
54m     Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container fastapi-proxy
40m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
40m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
40m     Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
40m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
40m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-vb4kw      Successfully assigned default/llm-proxy-857bf6d79d-vb4kw to ip-172-31-30-49.us-west-2.compute.internal
40m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-vb4kw
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
40m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-vb4kw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 334ms (334ms including waiting). Image size: 64752814 bytes.
40m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
40m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
40m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
18m     Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
18m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
18m     Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
16m     Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
16m     Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
16m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m57s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787353978
interrupted=0
