# scenario=testA run=3
collect_start=1787930890
interval_sec=60
run=3
run_start=1787930892
test=TestA(ramp)
u_max=50 size=mix
target=http://52.43.216.224:30080 loadgen=ec2-user@54.83.155.35
runs_total=4
collect_stop=1787933250
--- events ---
50m   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-r5tlg
50m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 6 to 5
50m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 5; reason: All metrics below target
50m   Normal    Killing             pod/llm-proxy-7dc458997b-r5tlg           Stopping container fastapi-proxy
50m   Normal    Killing             pod/llm-proxy-7dc458997b-r5tlg           Stopping container llama-server
49m   Normal    Killing             pod/llm-proxy-7dc458997b-9v7hs           Stopping container fastapi-proxy
49m   Normal    Killing             pod/llm-proxy-7dc458997b-9v7hs           Stopping container llama-server
49m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 5 to 4
49m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 4; reason: All metrics below target
49m   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-9v7hs
49m   Warning   Unhealthy           pod/llm-proxy-7dc458997b-9v7hs           Readiness probe failed: Get "http://10.244.1.4:8000/health": dial tcp 10.244.1.4:8000: connect: connection refused
48m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: All metrics below target
48m   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-ghrd6
48m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 4 to 3
48m   Normal    Killing             pod/llm-proxy-7dc458997b-ghrd6           Stopping container llama-server
48m   Normal    Killing             pod/llm-proxy-7dc458997b-ghrd6           Stopping container fastapi-proxy
48m   Warning   Unhealthy           pod/llm-proxy-7dc458997b-ghrd6           Readiness probe failed: Get "http://10.244.3.3:8000/health": dial tcp 10.244.3.3:8000: connect: connection refused
47m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 2; reason: All metrics below target
47m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 3 to 2
47m   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-mxxlg
47m   Normal    Killing             pod/llm-proxy-7dc458997b-mxxlg           Stopping container fastapi-proxy
47m   Normal    Killing             pod/llm-proxy-7dc458997b-mxxlg           Stopping container llama-server
46m   Normal    SuccessfulDelete    replicaset/llm-proxy-7dc458997b          Deleted pod: llm-proxy-7dc458997b-zz6z2
46m   Normal    SuccessfulRescale   horizontalpodautoscaler/llm-proxy-exp6   New size: 1; reason: All metrics below target
46m   Normal    Killing             pod/llm-proxy-7dc458997b-zz6z2           Stopping container llama-server
46m   Normal    Killing             pod/llm-proxy-7dc458997b-zz6z2           Stopping container fastapi-proxy
46m   Normal    ScalingReplicaSet   deployment/llm-proxy                     Scaled down replica set llm-proxy-7dc458997b from 2 to 1
46m   Warning   Unhealthy           pod/llm-proxy-7dc458997b-mxxlg           Readiness probe failed: Get "http://10.244.6.3:8000/health": dial tcp 10.244.6.3:8000: connect: connection refused
46m   Warning   Unhealthy           pod/llm-proxy-7dc458997b-zz6z2           Readiness probe failed: Get "http://10.244.2.3:8000/health": dial tcp 10.244.2.3:8000: connect: connection refused
run_end=1787933250
interrupted=0
service_hang=1 (llama.cpp deadlock under sustained 50-user mix; node load 0, single 32-token req >120s; fixed by pod restart, 5.15s after)
