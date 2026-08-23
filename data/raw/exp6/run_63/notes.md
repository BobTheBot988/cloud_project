# scenario=exp6 run=63
collect_start=1787471114
interval_sec=60
run=63
run_start=1787471118
scenario=exp6
test=TestB(steady)
level_users=40 steady_min=2 size=mix
target=http://172.31.22.58:30080 loadgen=ec2-user@52.34.136.66
runs_total=20
collect_stop=1787471277
--- events ---
60m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-pbtz2           Successfully assigned default/llm-proxy-857bf6d79d-pbtz2 to ip-172-31-41-114.us-west-2.compute.internal
60m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-pbtz2
60m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 0 to 1
60m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2           Pulling image "curlimages/curl:8.21.0"
60m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2           Container created
60m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2           Successfully pulled image "curlimages/curl:8.21.0" in 1.863s (1.863s including waiting). Image size: 10652192 bytes.
60m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2           Container started
60m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
60m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-pbtz2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
60m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 19.446s (19.446s including waiting). Image size: 307230405 bytes.
59m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: connection refused
59m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2           Container created
59m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 7.703s (7.703s including waiting). Image size: 64753325 bytes.
59m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2           Container started
59m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
59m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
53m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-79btg
53m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg           Pulling image "curlimages/curl:8.21.0"
53m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 1 to 2
53m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-79btg           Successfully assigned default/llm-proxy-857bf6d79d-79btg to ip-172-31-35-116.us-west-2.compute.internal
53m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
53m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg           Container started
53m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg           Container created
53m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg           Successfully pulled image "curlimages/curl:8.21.0" in 1.631s (1.631s including waiting). Image size: 10652192 bytes.
52m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
52m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 18.666s (18.666s including waiting). Image size: 307230405 bytes.
52m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-79btg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
52m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg           Container created
52m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg           Container started
52m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
52m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-79btg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.787s (5.787s including waiting). Image size: 64753325 bytes.
52m     Normal    Created                        pod/llm-proxy-857bf6d79d-79btg           Container created
52m     Normal    Started                        pod/llm-proxy-857bf6d79d-79btg           Container started
50m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-ccwbz
50m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-ccwbz           Successfully assigned default/llm-proxy-857bf6d79d-ccwbz to ip-172-31-46-207.us-west-2.compute.internal
50m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-r4b5d           Successfully assigned default/llm-proxy-857bf6d79d-r4b5d to ip-172-31-19-200.us-west-2.compute.internal
50m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-r4b5d
50m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 2 to 4
50m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "curlimages/curl:8.21.0"
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "curlimages/curl:8.21.0"
50m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz           Container started
50m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d           Container started
50m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d           Container created
50m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "curlimages/curl:8.21.0" in 1.606s (1.606s including waiting). Image size: 10652192 bytes.
50m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz           Container created
50m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "curlimages/curl:8.21.0" in 1.711s (1.711s including waiting). Image size: 10652192 bytes.
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
50m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
49m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-ccwbz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz           Container started
49m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz           Container created
49m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 15.448s (15.448s including waiting). Image size: 307230405 bytes.
49m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d           Container started
49m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.136s (17.136s including waiting). Image size: 307230405 bytes.
49m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-ccwbz           Readiness probe failed: Get "http://10.244.5.2:8000/health": dial tcp 10.244.5.2:8000: connect: connection refused
49m     Normal    Started                        pod/llm-proxy-857bf6d79d-ccwbz           Container started
49m     Normal    Created                        pod/llm-proxy-857bf6d79d-ccwbz           Container created
49m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-ccwbz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.958s (5.958s including waiting). Image size: 64753325 bytes.
49m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d           Container created
49m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-r4b5d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-r4b5d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.597s (5.597s including waiting). Image size: 64753325 bytes.
49m     Normal    Created                        pod/llm-proxy-857bf6d79d-r4b5d           Container created
49m     Normal    Started                        pod/llm-proxy-857bf6d79d-r4b5d           Container started
49m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-r4b5d           Readiness probe failed: Get "http://10.244.4.2:8000/health": dial tcp 10.244.4.2:8000: connect: connection refused
48m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-9lnw2
48m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 4 to 5
48m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-9lnw2           Successfully assigned default/llm-proxy-857bf6d79d-9lnw2 to ip-172-31-27-126.us-west-2.compute.internal
48m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: cpu resource utilization (percentage of request) above target
48m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "curlimages/curl:8.21.0"
48m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2           Container started
48m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2           Container created
48m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "curlimages/curl:8.21.0" in 1.697s (1.697s including waiting). Image size: 10652192 bytes.
47m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
47m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-857bf6d79d from 5 to 6
47m     Normal    Scheduled                      pod/llm-proxy-857bf6d79d-cmt7h           Successfully assigned default/llm-proxy-857bf6d79d-cmt7h to ip-172-31-29-57.us-west-2.compute.internal
47m     Normal    SuccessfulCreate               replicaset/llm-proxy-857bf6d79d          Created pod: llm-proxy-857bf6d79d-cmt7h
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "curlimages/curl:8.21.0"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "curlimages/curl:8.21.0" in 2.963s (2.963s including waiting). Image size: 10652192 bytes.
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h           Container started
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h           Container created
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h           Container created
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h           Container started
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 17.894s (17.894s including waiting). Image size: 307230405 bytes.
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-cmt7h           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.883s (12.883s including waiting). Image size: 307230405 bytes.
47m     Normal    Pulling                        pod/llm-proxy-857bf6d79d-9lnw2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2           Container started
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2           Container created
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-cmt7h           Container created
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-cmt7h           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 6.497s (6.497s including waiting). Image size: 64753325 bytes.
47m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-cmt7h           Readiness probe failed: Get "http://10.244.1.3:8000/health": dial tcp 10.244.1.3:8000: connect: connection refused
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-cmt7h           Container started
47m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-9lnw2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 5.455s (5.455s including waiting). Image size: 64753325 bytes.
47m     Normal    Created                        pod/llm-proxy-857bf6d79d-9lnw2           Container created
47m     Normal    Started                        pod/llm-proxy-857bf6d79d-9lnw2           Container started
47m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-9lnw2           Readiness probe failed: Get "http://10.244.6.2:8000/health": dial tcp 10.244.6.2:8000: connect: connection refused
35m     Normal    Created                        pod/llm-proxy-857bf6d79d-pbtz2           Container created
35m     Normal    Pulled                         pod/llm-proxy-857bf6d79d-pbtz2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Normal    Started                        pod/llm-proxy-857bf6d79d-pbtz2           Container started
25m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2           Stopping container llama-server
25m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 6 to 5
25m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-pbtz2
25m     Normal    Killing                        pod/llm-proxy-857bf6d79d-pbtz2           Stopping container fastapi-proxy
25m     Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-pbtz2           Readiness probe failed: Get "http://10.244.7.2:8000/health": dial tcp 10.244.7.2:8000: connect: no route to host
24m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-9lnw2
24m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2           Stopping container fastapi-proxy
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-9lnw2           Stopping container llama-server
24m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 5 to 4
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz           Stopping container fastapi-proxy
24m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-r4b5d
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-ccwbz           Stopping container llama-server
24m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
24m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 4 to 2
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d           Stopping container llama-server
24m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-ccwbz
24m     Normal    Killing                        pod/llm-proxy-857bf6d79d-r4b5d           Stopping container fastapi-proxy
21m     Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h           Stopping container fastapi-proxy
21m     Normal    Killing                        pod/llm-proxy-857bf6d79d-cmt7h           Stopping container llama-server
21m     Normal    SuccessfulDelete               replicaset/llm-proxy-857bf6d79d          Deleted pod: llm-proxy-857bf6d79d-cmt7h
21m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
21m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-857bf6d79d from 2 to 1
4m49s   Warning   Unhealthy                      pod/llm-proxy-857bf6d79d-79btg           Readiness probe failed: Get "http://10.244.2.2:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1787471277
interrupted=0
