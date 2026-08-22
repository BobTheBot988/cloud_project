# scenario=testB run=4
collect_start=1787352327
interval_sec=60
run=4
run_start=1787352331
test=TestB(steady)
level_users=10 steady_min=6 size=mix
target=http://172.31.28.201:30080 loadgen=ec2-user@52.33.163.126
runs_total=5
collect_stop=1787352729
--- events ---
60m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9gm2k      Successfully assigned default/llm-proxy-857bf6d79d-9gm2k to ip-172-31-38-45.us-west-2.compute.internal
60m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-9gm2k
60m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
60m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k      Pulling image "curlimages/curl:8.21.0"
60m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Successfully pulled image "curlimages/curl:8.21.0" in 1.63s (1.63s including waiting). Image size: 10652192 bytes.
60m   Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
60m   Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
60m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k      Pulling image "ghcr.io/ggml-org/llama.cpp:server"
60m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.655s (16.655s including waiting). Image size: 307655741 bytes.
60m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-9gm2k      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m   Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
60m   Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
60m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.214s (5.214s including waiting). Image size: 64752814 bytes.
60m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9gm2k      Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
59m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
59m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
54m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-hrj5h      Successfully assigned default/llm-proxy-857bf6d79d-hrj5h to ip-172-31-30-49.us-west-2.compute.internal
54m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-hrj5h
54m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h      Pulling image "curlimages/curl:8.21.0"
54m   Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h      Container started
54m   Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h      Container created
54m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h      Successfully pulled image "curlimages/curl:8.21.0" in 1.715s (1.715s including waiting). Image size: 10652192 bytes.
53m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h      Pulling image "ghcr.io/ggml-org/llama.cpp:server"
53m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h      Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 16.814s (16.814s including waiting). Image size: 307655741 bytes.
53m   Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h      Container created
53m   Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h      Container started
53m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-hrj5h      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
53m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-hrj5h      Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
53m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-hrj5h      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.413s (6.413s including waiting). Image size: 64752814 bytes.
53m   Normal    Created                        pod/llm-proxy-857bf6d79d-hrj5h      Container created
53m   Normal    Started                        pod/llm-proxy-857bf6d79d-hrj5h      Container started
33m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 1; reason: All metrics below target
33m   Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d     Deleted pod: llm-proxy-857bf6d79d-hrj5h
33m   Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container fastapi-proxy
33m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
33m   Normal    Killing                        pod/llm-proxy-857bf6d79d-hrj5h      Stopping container llama-server
20m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-9gm2k      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
20m   Normal    Started                        pod/llm-proxy-857bf6d79d-9gm2k      Container started
20m   Normal    Created                        pod/llm-proxy-857bf6d79d-9gm2k      Container created
20m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
20m   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
19m   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
19m   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy   New size: 2; reason: cpu resource utilization (percentage of request) above target
19m   Normal    ScalingReplicaSet              deployment/llm-proxy                Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
19m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
19m   Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d     Created pod: llm-proxy-857bf6d79d-vb4kw
19m   Normal    Scheduled                      pod/llm-proxy-857bf6d79d-vb4kw      Successfully assigned default/llm-proxy-857bf6d79d-vb4kw to ip-172-31-30-49.us-west-2.compute.internal
19m   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
19m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
19m   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
19m   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
19m   Normal    Pulled                         pod/llm-proxy-857bf6d79d-vb4kw      Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 334ms (334ms including waiting). Image size: 64752814 bytes.
19m   Normal    Pulling                        pod/llm-proxy-857bf6d79d-vb4kw      Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
19m   Normal    Started                        pod/llm-proxy-857bf6d79d-vb4kw      Container started
19m   Normal    Created                        pod/llm-proxy-857bf6d79d-vb4kw      Container created
19m   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-vb4kw      Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
run_end=1787352729
interrupted=0
