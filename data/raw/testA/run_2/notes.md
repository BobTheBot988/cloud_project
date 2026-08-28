# scenario=testA run=2
collect_start=1787928534
interval_sec=60
run=2
run_start=1787928536
test=TestA(ramp)
u_max=50 size=mix
target=http://52.43.216.224:30080 loadgen=ec2-user@54.83.155.35
runs_total=4
collect_stop=1787930890
--- events ---
60m     Normal    Killing             pod/llm-proxy-7dc458997b-gxd5j           Stopping container fastapi-proxy
60m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-gxd5j
60m     Normal    Killing             pod/llm-proxy-7dc458997b-gxd5j           Stopping container llama-server
60m     Normal    Killing             pod/llm-proxy-7dc458997b-5rdc2           Stopping container llama-server
60m     Normal    Killing             pod/llm-proxy-7dc458997b-5rdc2           Stopping container fastapi-proxy
60m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-5rdc2
55m     Normal    Killing             pod/llm-proxy-7dc458997b-87wf2           Stopping container llama-server
55m     Normal    Killing             pod/llm-proxy-7dc458997b-87wf2           Stopping container fastapi-proxy
55m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-87wf2
55m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-p2zdm
55m     Warning   Unhealthy           pod/llm-proxy-7dc458997b-p2zdm           Readiness probe failed: Get "http://10.244.2.2:8000/health": dial tcp 10.244.2.2:8000: connect: connection refused
55m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9dwsh
55m     Normal    Killing             pod/llm-proxy-7dc458997b-p2zdm           Stopping container fastapi-proxy
55m     Normal    Killing             pod/llm-proxy-7dc458997b-p2zdm           Stopping container llama-server
55m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 1
55m     Normal    Killing             pod/llm-proxy-7dc458997b-9dwsh           Stopping container fastapi-proxy
55m     Normal    Killing             pod/llm-proxy-7dc458997b-9dwsh           Stopping container llama-server
51m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: cpu resource utilization (percentage of request) above target
51m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
51m     Normal    SuccessfulCreate    replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-mxxlg
51m     Normal    Scheduled           pod/llm-proxy-7dc458997b-mxxlg           Successfully assigned default/llm-proxy-7dc458997b-mxxlg to ip-172-31-47-198.us-west-2.compute.internal
51m     Normal    Started             pod/llm-proxy-7dc458997b-mxxlg           Container started
51m     Normal    Created             pod/llm-proxy-7dc458997b-mxxlg           Container created
51m     Normal    Pulled              pod/llm-proxy-7dc458997b-mxxlg           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
51m     Normal    Pulled              pod/llm-proxy-7dc458997b-mxxlg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
51m     Normal    Created             pod/llm-proxy-7dc458997b-mxxlg           Container created
51m     Normal    Started             pod/llm-proxy-7dc458997b-mxxlg           Container started
51m     Normal    Pulling             pod/llm-proxy-7dc458997b-mxxlg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
51m     Normal    Started             pod/llm-proxy-7dc458997b-mxxlg           Container started
51m     Normal    Created             pod/llm-proxy-7dc458997b-mxxlg           Container created
51m     Normal    Pulled              pod/llm-proxy-7dc458997b-mxxlg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 405ms (405ms including waiting). Image size: 64753325 bytes.
50m     Normal    SuccessfulCreate    replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ghrd6
50m     Normal    Scheduled           pod/llm-proxy-7dc458997b-ghrd6           Successfully assigned default/llm-proxy-7dc458997b-ghrd6 to ip-172-31-16-122.us-west-2.compute.internal
50m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
50m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: cpu resource utilization (percentage of request) above target
50m     Normal    SuccessfulCreate    replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-zz6z2
50m     Normal    Scheduled           pod/llm-proxy-7dc458997b-zz6z2           Successfully assigned default/llm-proxy-7dc458997b-zz6z2 to ip-172-31-34-42.us-west-2.compute.internal
50m     Normal    Started             pod/llm-proxy-7dc458997b-zz6z2           Container started
50m     Normal    Created             pod/llm-proxy-7dc458997b-ghrd6           Container created
50m     Normal    Pulled              pod/llm-proxy-7dc458997b-ghrd6           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
50m     Normal    Started             pod/llm-proxy-7dc458997b-ghrd6           Container started
50m     Normal    Created             pod/llm-proxy-7dc458997b-zz6z2           Container created
50m     Normal    Pulled              pod/llm-proxy-7dc458997b-zz6z2           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
49m     Normal    Pulled              pod/llm-proxy-7dc458997b-ghrd6           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Normal    Created             pod/llm-proxy-7dc458997b-ghrd6           Container created
49m     Normal    Pulled              pod/llm-proxy-7dc458997b-ghrd6           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 310ms (310ms including waiting). Image size: 64753325 bytes.
49m     Normal    Pulled              pod/llm-proxy-7dc458997b-zz6z2           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
49m     Normal    Pulling             pod/llm-proxy-7dc458997b-ghrd6           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Started             pod/llm-proxy-7dc458997b-zz6z2           Container started
49m     Normal    Created             pod/llm-proxy-7dc458997b-zz6z2           Container created
49m     Normal    Created             pod/llm-proxy-7dc458997b-ghrd6           Container created
49m     Normal    Started             pod/llm-proxy-7dc458997b-ghrd6           Container started
49m     Normal    Started             pod/llm-proxy-7dc458997b-ghrd6           Container started
49m     Normal    Pulling             pod/llm-proxy-7dc458997b-zz6z2           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
49m     Normal    Started             pod/llm-proxy-7dc458997b-zz6z2           Container started
49m     Normal    Created             pod/llm-proxy-7dc458997b-zz6z2           Container created
49m     Normal    Pulled              pod/llm-proxy-7dc458997b-zz6z2           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 352ms (352ms including waiting). Image size: 64753325 bytes.
44m     Normal    Scheduled           pod/llm-proxy-7dc458997b-r5tlg           Successfully assigned default/llm-proxy-7dc458997b-r5tlg to ip-172-31-17-115.us-west-2.compute.internal
44m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: cpu resource utilization (percentage of request) above target
44m     Normal    Scheduled           pod/llm-proxy-7dc458997b-9v7hs           Successfully assigned default/llm-proxy-7dc458997b-9v7hs to ip-172-31-26-20.us-west-2.compute.internal
44m     Normal    SuccessfulCreate    replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-9v7hs
44m     Normal    SuccessfulCreate    replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-r5tlg
44m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 6
44m     Normal    Pulled              pod/llm-proxy-7dc458997b-9v7hs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m     Normal    Started             pod/llm-proxy-7dc458997b-r5tlg           Container started
44m     Normal    Created             pod/llm-proxy-7dc458997b-r5tlg           Container created
44m     Normal    Pulled              pod/llm-proxy-7dc458997b-r5tlg           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
44m     Normal    Started             pod/llm-proxy-7dc458997b-9v7hs           Container started
44m     Normal    Created             pod/llm-proxy-7dc458997b-9v7hs           Container created
43m     Normal    Pulling             pod/llm-proxy-7dc458997b-r5tlg           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Pulled              pod/llm-proxy-7dc458997b-r5tlg           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Created             pod/llm-proxy-7dc458997b-r5tlg           Container created
43m     Normal    Started             pod/llm-proxy-7dc458997b-r5tlg           Container started
43m     Normal    Pulled              pod/llm-proxy-7dc458997b-r5tlg           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 318ms (318ms including waiting). Image size: 64753325 bytes.
43m     Normal    Started             pod/llm-proxy-7dc458997b-r5tlg           Container started
43m     Normal    Created             pod/llm-proxy-7dc458997b-r5tlg           Container created
43m     Warning   Unhealthy           pod/llm-proxy-7dc458997b-r5tlg           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
43m     Normal    Created             pod/llm-proxy-7dc458997b-9v7hs           Container created
43m     Normal    Created             pod/llm-proxy-7dc458997b-9v7hs           Container created
43m     Normal    Pulled              pod/llm-proxy-7dc458997b-9v7hs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
43m     Normal    Started             pod/llm-proxy-7dc458997b-9v7hs           Container started
43m     Normal    Pulling             pod/llm-proxy-7dc458997b-9v7hs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
43m     Normal    Pulled              pod/llm-proxy-7dc458997b-9v7hs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 371ms (371ms including waiting). Image size: 64753325 bytes.
43m     Normal    Started             pod/llm-proxy-7dc458997b-9v7hs           Container started
11m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
11m     Normal    Killing             pod/llm-proxy-7dc458997b-r5tlg           Stopping container llama-server
11m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-r5tlg
11m     Normal    Killing             pod/llm-proxy-7dc458997b-r5tlg           Stopping container fastapi-proxy
11m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
10m     Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
10m     Normal    Killing             pod/llm-proxy-7dc458997b-9v7hs           Stopping container llama-server
10m     Normal    Killing             pod/llm-proxy-7dc458997b-9v7hs           Stopping container fastapi-proxy
10m     Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9v7hs
10m     Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
9m55s   Warning   Unhealthy           pod/llm-proxy-7dc458997b-9v7hs           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
9m10s   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-ghrd6
9m10s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
9m10s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
9m9s    Normal    Killing             pod/llm-proxy-7dc458997b-ghrd6           Stopping container llama-server
9m9s    Normal    Killing             pod/llm-proxy-7dc458997b-ghrd6           Stopping container fastapi-proxy
8m47s   Warning   Unhealthy           pod/llm-proxy-7dc458997b-ghrd6           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
7m55s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
7m55s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
7m54s   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-mxxlg
7m54s   Normal    Killing             pod/llm-proxy-7dc458997b-mxxlg           Stopping container fastapi-proxy
7m54s   Normal    Killing             pod/llm-proxy-7dc458997b-mxxlg           Stopping container llama-server
7m39s   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
7m39s   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-zz6z2
7m39s   Normal    Killing             pod/llm-proxy-7dc458997b-zz6z2           Stopping container fastapi-proxy
7m39s   Normal    Killing             pod/llm-proxy-7dc458997b-zz6z2           Stopping container llama-server
7m39s   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
7m30s   Warning   Unhealthy           pod/llm-proxy-7dc458997b-mxxlg           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
7m16s   Warning   Unhealthy           pod/llm-proxy-7dc458997b-zz6z2           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
run_end=1787930890
interrupted=0
sawtooth=partial (run_1: 1->2->4->6->5->4->3->1; run_2: flat-6 then 6->1 at drain; run_3/4: corrupt via llama hang, stuck-1 504 storm)
