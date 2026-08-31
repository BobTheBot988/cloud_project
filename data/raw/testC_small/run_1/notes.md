# scenario=testC_small run=1
collect_start=1788161267
interval_sec=60
run=1
run_start=1788161269
scenario=testC_small
test=TestB(steady)
level_users=20 steady_min=3 size=small
target=http://34.228.95.133:30080 loadgen=ec2-user@54.157.203.165
runs_total=10
run_tag=6pod-fixed slots=12
collect_stop=1788161470
--- events ---
11m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        
10m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       
11m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        
10m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        
10m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         
10m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        
11m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       
3h14m   Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Container llama-server failed liveness probe, will be restarted
3h6m    Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
3h4m    Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: HTTP probe failed with statuscode: 404
179m    Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
179m    Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: HTTP probe failed with statuscode: 404
179m    Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
176m    Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
175m    Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
174m    Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: HTTP probe failed with statuscode: 404
174m    Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: HTTP probe failed with statuscode: 404
174m    Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Container llama-server failed liveness probe, will be restarted
174m    Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Liveness probe failed: HTTP probe failed with statuscode: 404
11m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        Starting kubelet.
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-3-254.ec2.internal        Updated Node Allocatable limit across pods
11m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       Starting kubelet.
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-37-201.ec2.internal       Updated Node Allocatable limit across pods
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-103.ec2.internal       Updated Node Allocatable limit across pods
11m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        Starting kubelet.
11m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        Starting kubelet.
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-86.ec2.internal        Updated Node Allocatable limit across pods
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-9-11.ec2.internal         Updated Node Allocatable limit across pods
11m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         Starting kubelet.
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-43-11.ec2.internal        Updated Node Allocatable limit across pods
11m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       Starting kubelet.
11m     Normal    NodeHasSufficientPID           node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientPID           node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-19.ec2.internal        Updated Node Allocatable limit across pods
11m     Normal    NodeHasSufficientPID           node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasSufficientPID           node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        Starting kubelet.
11m     Normal    NodeHasSufficientPID           node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasSufficientPID           node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasSufficientPID           node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientPID
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientMemory
11m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasNoDiskPressure
11m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientMemory
11m     Warning   Rebooted                       node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal has been rebooted, boot id: 23a382d0-ea30-43d4-8ddc-6296950b44e5
11m     Warning   Rebooted                       node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal has been rebooted, boot id: 959a8480-534b-4340-a1ee-06ab4842f465
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-hq9h8           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "6232c2d3c6e61f5ade0dd75a827e954bb3a72b323431247a369ba16fd70ab649": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
11m     Warning   Rebooted                       node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal has been rebooted, boot id: dff3d161-f01b-4816-a2d3-1f7f3e7c35fc
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-pls6d           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "1b1bc8ab0b17693e37cc6c3e37ad57a4a43fa91fade3bb4e9f60416fc897e525": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
11m     Warning   Rebooted                       node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal has been rebooted, boot id: 07173eb3-2d19-46b2-8df3-3fd19c23a0fa
11m     Warning   Rebooted                       node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal has been rebooted, boot id: 81e9dd67-220f-48dd-a6bc-0d8136ef1082
11m     Warning   Rebooted                       node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal has been rebooted, boot id: 1f1ca172-4f25-4222-8dfe-997f639df1f1
11m     Warning   Rebooted                       node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal has been rebooted, boot id: e3e0842f-e8ed-4098-8135-d9145092fcf9
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-hq9h8           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "b9cbb60ce808f6174f32cb6cc1722708f82034938d10861127a98e21dfae0e78": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-pls6d           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "f6f005723632b3112e1026c418a9c7896b554b69b03fcf9c5cfc7978af106bb0": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-k8vmh           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "0e8046ed22445dca4bea5e9b112deca997e14927f06ac1e4fbe94009956c7bba": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
11m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-k8vmh           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "f222158e9e41cb5dcb22105e46deda46580944e20d3fbbc7631c735a35351638": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
10m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-k8vmh           Pod sandbox changed, it will be killed and re-created.
10m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-pls6d           Pod sandbox changed, it will be killed and re-created.
10m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-hq9h8           Pod sandbox changed, it will be killed and re-created.
10m     Normal    RegisteredNode                 node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal event: Registered Node ip-172-31-37-201.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal event: Registered Node ip-172-31-13-86.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal event: Registered Node ip-172-31-32-103.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal event: Registered Node ip-172-31-3-254.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal event: Registered Node ip-172-31-43-11.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal event: Registered Node ip-172-31-9-11.ec2.internal in Controller
10m     Normal    RegisteredNode                 node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal event: Registered Node ip-172-31-44-19.ec2.internal in Controller
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
10m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
10m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get memory usage: unable to get metrics for resource memory: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
10m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
10m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: Get "http://10.244.2.8:8000/ready": dial tcp 10.244.2.8:8000: connect: connection refused
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
10m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-hq9h8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: Get "http://10.244.2.8:8000/ready": dial tcp 10.244.2.8:8000: connect: connection refused
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 175ms (175ms including waiting). Image size: 64753325 bytes.
10m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-pls6d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-k8vmh           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
10m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: Get "http://10.244.6.9:8000/ready": dial tcp 10.244.6.9:8000: connect: connection refused
10m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: Get "http://10.244.3.6:8000/ready": dial tcp 10.244.3.6:8000: connect: connection refused
10m     Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
10m     Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
10m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 175ms (175ms including waiting). Image size: 64753325 bytes.
9m59s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get memory usage: unable to get metrics for resource memory: no metrics returned from resource metrics API
9m59s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
9m12s   Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Container llama-server failed liveness probe, will be restarted
9m11s   Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
9m11s   Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
9m11s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m10s   Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
9m10s   Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
9m10s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
9m10s   Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Container llama-server failed liveness probe, will be restarted
8m29s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
8m27s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Liveness probe failed: HTTP probe failed with statuscode: 404
8m25s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Liveness probe failed: HTTP probe failed with statuscode: 404
8m19s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: HTTP probe failed with statuscode: 404
8m19s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: HTTP probe failed with statuscode: 404
8m19s   Normal    Killing                        pod/llm-proxy-65577dbdfb-hq9h8           Container llama-server failed liveness probe, will be restarted
8m18s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: HTTP probe failed with statuscode: 404
8m18s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
8m18s   Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Stopping container llama-server
8m18s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-jj4sk
8m18s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-k8vmh
8m18s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-pls6d
8m18s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: HTTP probe failed with statuscode: 404
8m18s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 3 to 1
8m18s   Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
8m18s   Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
8m18s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-jj4sk           Successfully assigned default/llm-proxy-7dc458997b-jj4sk to ip-172-31-3-254.ec2.internal
8m18s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 0 to 1
8m18s   Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Stopping container fastapi-proxy
8m18s   Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Stopping container llama-server
8m18s   Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Stopping container fastapi-proxy
8m17s   Normal    Created                        pod/llm-proxy-7dc458997b-jj4sk           Container created
8m17s   Normal    Pulled                         pod/llm-proxy-7dc458997b-jj4sk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m17s   Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-jwk8d
8m17s   Normal    Scheduled                      pod/llm-proxy-65577dbdfb-jwk8d           Successfully assigned default/llm-proxy-65577dbdfb-jwk8d to ip-172-31-37-201.ec2.internal
8m17s   Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "curlimages/curl:8.21.0"
8m17s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-ql6mx           Successfully assigned default/llm-proxy-7dc458997b-ql6mx to ip-172-31-3-254.ec2.internal
8m17s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ql6mx
8m17s   Normal    Killing                        pod/llm-proxy-65577dbdfb-hq9h8           Stopping container fastapi-proxy
8m17s   Normal    Killing                        pod/llm-proxy-7dc458997b-jj4sk           Stopping container model-prefetch
8m17s   Normal    Started                        pod/llm-proxy-7dc458997b-jj4sk           Container started
8m16s   Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
8m16s   Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
8m16s   Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
8m16s   Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
8m16s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m16s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "curlimages/curl:8.21.0" in 828ms (828ms including waiting). Image size: 10652192 bytes.
8m14s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
8m14s   Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-6lnnz
8m14s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-nx868           Successfully assigned default/llm-proxy-7dc458997b-nx868 to ip-172-31-32-103.ec2.internal
8m14s   Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m14s   Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
8m14s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
8m14s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-65577dbdfb from 1 to 2
8m14s   Normal    Scheduled                      pod/llm-proxy-65577dbdfb-6lnnz           Successfully assigned default/llm-proxy-65577dbdfb-6lnnz to ip-172-31-9-11.ec2.internal
8m14s   Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
8m14s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-nx868
8m14s   Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
8m14s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: Current number of replicas below Spec.MinReplicas
8m13s   Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
7m59s   Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: Current number of replicas below Spec.MinReplicas
7m59s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-65577dbdfb from 2 to 4
7m59s   Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-j2sqt
7m59s   Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
7m59s   Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m59s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-pxn5p           Successfully assigned default/llm-proxy-7dc458997b-pxn5p to ip-172-31-13-86.ec2.internal
7m59s   Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-657nt
7m59s   Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
7m59s   Warning   FailedScheduling               pod/llm-proxy-65577dbdfb-657nt           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
7m59s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-lv79g           Successfully assigned default/llm-proxy-7dc458997b-lv79g to ip-172-31-43-11.ec2.internal
7m59s   Warning   FailedScheduling               pod/llm-proxy-65577dbdfb-j2sqt           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
7m59s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-pxn5p
7m59s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
7m59s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-lv79g
7m59s   Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "curlimages/curl:8.21.0"
7m58s   Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
7m58s   Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "curlimages/curl:8.21.0" in 943ms (943ms including waiting). Image size: 10652192 bytes.
7m57s   Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
7m44s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m44s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
7m41s   Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
7m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m41s   Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
7m41s   Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
7m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 126ms (126ms including waiting). Image size: 64753325 bytes.
7m41s   Normal    Pulling                        pod/llm-proxy-7dc458997b-nx868           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m41s   Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
7m39s   Normal    Pulling                        pod/llm-proxy-7dc458997b-ql6mx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m39s   Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
7m39s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m39s   Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
7m37s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ql6mx           Readiness probe failed: Get "http://10.244.4.8:8000/health": dial tcp 10.244.4.8:8000: connect: connection refused
7m37s   Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
7m37s   Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.717s (1.717s including waiting). Image size: 64753325 bytes.
7m37s   Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
7m33s   Normal    Pulling                        pod/llm-proxy-65577dbdfb-6lnnz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m33s   Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
7m33s   Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
7m33s   Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
7m33s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 128ms (128ms including waiting). Image size: 64753325 bytes.
7m33s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m33s   Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
7m33s   Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
7m32s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Readiness probe failed: Get "http://10.244.6.10:8000/ready": dial tcp 10.244.6.10:8000: connect: connection refused
7m29s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
7m29s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
7m28s   Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
7m27s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 4 to 3
7m27s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 5
7m26s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-657nt
7m26s   Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
7m26s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-sg488
7m26s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-sg488           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
7m26s   Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
7m26s   Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
7m26s   Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
7m26s   Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
7m26s   Normal    Pulling                        pod/llm-proxy-7dc458997b-pxn5p           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m26s   Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 118ms (118ms including waiting). Image size: 64753325 bytes.
7m25s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-pxn5p           Readiness probe failed: Get "http://10.244.2.9:8000/health": dial tcp 10.244.2.9:8000: connect: connection refused
7m21s   Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m21s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.56s (12.56s including waiting). Image size: 309793402 bytes.
7m19s   Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
7m19s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.706s (1.706s including waiting). Image size: 64753325 bytes.
7m19s   Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
7m15s   Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
7m15s   Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
7m15s   Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
7m15s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-98hkx
7m15s   Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.197s (13.197s including waiting). Image size: 309793402 bytes.
7m15s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-j2sqt
7m15s   Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 3 to 2
7m14s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Liveness probe failed: HTTP probe failed with statuscode: 404
7m13s   Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.643s (1.643s including waiting). Image size: 64753325 bytes.
7m13s   Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
7m13s   Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
7m12s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-lv79g           Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
7m11s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-6lnnz
7m11s   Normal    Killing                        pod/llm-proxy-65577dbdfb-6lnnz           Stopping container fastapi-proxy
7m11s   Normal    Killing                        pod/llm-proxy-65577dbdfb-6lnnz           Stopping container llama-server
7m11s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Readiness probe failed: HTTP probe failed with statuscode: 404
7m10s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-98hkx           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
7m10s   Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
7m10s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-sg488           Successfully assigned default/llm-proxy-7dc458997b-sg488 to ip-172-31-9-11.ec2.internal
7m10s   Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
7m9s    Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
6m41s   Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
6m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 100ms (100ms including waiting). Image size: 64753325 bytes.
6m41s   Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
6m41s   Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m41s   Normal    Pulling                        pod/llm-proxy-7dc458997b-sg488           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
6m41s   Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
6m40s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-sg488           Readiness probe failed: Get "http://10.244.6.11:8000/health": dial tcp 10.244.6.11:8000: connect: connection refused
6m40s   Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
6m32s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Liveness probe failed: HTTP probe failed with statuscode: 404
6m32s   Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Container llama-server failed liveness probe, will be restarted
6m31s   Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
6m31s   Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
6m31s   Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
6m30s   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Readiness probe failed: HTTP probe failed with statuscode: 404
6m30s   Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-jwk8d
6m30s   Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Stopping container llama-server
6m30s   Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Stopping container fastapi-proxy
6m30s   Normal    ScalingReplicaSet              deployment/llm-proxy                     (combined from similar events): Scaled down replica set llm-proxy-65577dbdfb from 1 to 0
6m      Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Readiness probe failed: Get "http://10.244.5.2:8000/ready": dial tcp 10.244.5.2:8000: connect: connection refused
5m59s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-98hkx           Successfully assigned default/llm-proxy-7dc458997b-98hkx to ip-172-31-37-201.ec2.internal
5m59s   Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
5m59s   Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
5m59s   Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
5m8s    Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 100ms (100ms including waiting). Image size: 64753325 bytes.
5m8s    Normal    Pulling                        pod/llm-proxy-7dc458997b-98hkx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
5m8s    Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
5m8s    Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
5m8s    Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
5m8s    Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
5m8s    Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
5m7s    Warning   Unhealthy                      pod/llm-proxy-7dc458997b-98hkx           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
run_end=1788161470
interrupted=0
