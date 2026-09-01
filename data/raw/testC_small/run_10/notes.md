# scenario=testC_small run=10
collect_start=1788163103
interval_sec=60
run=10
run_start=1788163106
scenario=testC_small
test=TestB(steady)
level_users=20 steady_min=3 size=small
target=http://34.228.95.133:30080 loadgen=ec2-user@54.157.203.165
runs_total=10
run_tag=6pod-fixed slots=12
collect_stop=1788163306
--- events ---
41m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        
41m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       
41m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        
41m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        
41m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         
41m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        
41m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       
3h45m   Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Container llama-server failed liveness probe, will be restarted
3h37m   Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
3h35m   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: HTTP probe failed with statuscode: 404
3h30m   Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3h30m   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: HTTP probe failed with statuscode: 404
3h30m   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
3h27m   Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3h25m   Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3h25m   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: HTTP probe failed with statuscode: 404
3h25m   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: HTTP probe failed with statuscode: 404
3h25m   Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Container llama-server failed liveness probe, will be restarted
3h25m   Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Liveness probe failed: HTTP probe failed with statuscode: 404
41m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        Starting kubelet.
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-3-254.ec2.internal        Updated Node Allocatable limit across pods
41m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       Starting kubelet.
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-37-201.ec2.internal       Updated Node Allocatable limit across pods
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-103.ec2.internal       Updated Node Allocatable limit across pods
41m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        Starting kubelet.
41m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        Starting kubelet.
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-86.ec2.internal        Updated Node Allocatable limit across pods
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-9-11.ec2.internal         Updated Node Allocatable limit across pods
41m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         Starting kubelet.
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-43-11.ec2.internal        Updated Node Allocatable limit across pods
41m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       Starting kubelet.
41m     Normal    NodeHasSufficientPID           node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasSufficientPID           node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-19.ec2.internal        Updated Node Allocatable limit across pods
41m     Normal    NodeHasSufficientPID           node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasSufficientPID           node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        Starting kubelet.
41m     Normal    NodeHasSufficientPID           node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasSufficientPID           node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeHasSufficientPID           node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientPID
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientMemory
41m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasNoDiskPressure
41m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientMemory
41m     Warning   Rebooted                       node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal has been rebooted, boot id: 23a382d0-ea30-43d4-8ddc-6296950b44e5
41m     Warning   Rebooted                       node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal has been rebooted, boot id: 959a8480-534b-4340-a1ee-06ab4842f465
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-hq9h8           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "6232c2d3c6e61f5ade0dd75a827e954bb3a72b323431247a369ba16fd70ab649": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Warning   Rebooted                       node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal has been rebooted, boot id: dff3d161-f01b-4816-a2d3-1f7f3e7c35fc
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-pls6d           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "1b1bc8ab0b17693e37cc6c3e37ad57a4a43fa91fade3bb4e9f60416fc897e525": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Warning   Rebooted                       node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal has been rebooted, boot id: 07173eb3-2d19-46b2-8df3-3fd19c23a0fa
41m     Warning   Rebooted                       node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal has been rebooted, boot id: 81e9dd67-220f-48dd-a6bc-0d8136ef1082
41m     Warning   Rebooted                       node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal has been rebooted, boot id: 1f1ca172-4f25-4222-8dfe-997f639df1f1
41m     Warning   Rebooted                       node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal has been rebooted, boot id: e3e0842f-e8ed-4098-8135-d9145092fcf9
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-hq9h8           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "b9cbb60ce808f6174f32cb6cc1722708f82034938d10861127a98e21dfae0e78": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-pls6d           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "f6f005723632b3112e1026c418a9c7896b554b69b03fcf9c5cfc7978af106bb0": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-k8vmh           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "0e8046ed22445dca4bea5e9b112deca997e14927f06ac1e4fbe94009956c7bba": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Warning   FailedCreatePodSandBox         pod/llm-proxy-65577dbdfb-k8vmh           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "f222158e9e41cb5dcb22105e46deda46580944e20d3fbbc7631c735a35351638": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
41m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-k8vmh           Pod sandbox changed, it will be killed and re-created.
41m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-pls6d           Pod sandbox changed, it will be killed and re-created.
41m     Normal    SandboxChanged                 pod/llm-proxy-65577dbdfb-hq9h8           Pod sandbox changed, it will be killed and re-created.
41m     Normal    RegisteredNode                 node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal event: Registered Node ip-172-31-37-201.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal event: Registered Node ip-172-31-13-86.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal event: Registered Node ip-172-31-32-103.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal event: Registered Node ip-172-31-3-254.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal event: Registered Node ip-172-31-43-11.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal event: Registered Node ip-172-31-9-11.ec2.internal in Controller
41m     Normal    RegisteredNode                 node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal event: Registered Node ip-172-31-44-19.ec2.internal in Controller
41m     Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
41m     Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
41m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
41m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
41m     Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
41m     Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
41m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
41m     Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
41m     Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
41m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
41m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get memory usage: unable to get metrics for resource memory: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
41m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
40m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
40m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: Get "http://10.244.2.8:8000/ready": dial tcp 10.244.2.8:8000: connect: connection refused
40m     Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
40m     Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
40m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-hq9h8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: Get "http://10.244.2.8:8000/ready": dial tcp 10.244.2.8:8000: connect: connection refused
40m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 175ms (175ms including waiting). Image size: 64753325 bytes.
40m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-pls6d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-k8vmh           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
40m     Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
40m     Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
40m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: Get "http://10.244.6.9:8000/ready": dial tcp 10.244.6.9:8000: connect: connection refused
40m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: Get "http://10.244.3.6:8000/ready": dial tcp 10.244.3.6:8000: connect: connection refused
40m     Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
40m     Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
40m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 175ms (175ms including waiting). Image size: 64753325 bytes.
40m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get memory usage: unable to get metrics for resource memory: no metrics returned from resource metrics API
40m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (2 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
39m     Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Container llama-server failed liveness probe, will be restarted
39m     Normal    Started                        pod/llm-proxy-65577dbdfb-k8vmh           Container started
39m     Normal    Created                        pod/llm-proxy-65577dbdfb-k8vmh           Container created
39m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-k8vmh           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Created                        pod/llm-proxy-65577dbdfb-pls6d           Container created
39m     Normal    Started                        pod/llm-proxy-65577dbdfb-pls6d           Container started
39m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-pls6d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
39m     Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Container llama-server failed liveness probe, will be restarted
39m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 2), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
39m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Liveness probe failed: HTTP probe failed with statuscode: 404
39m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Liveness probe failed: HTTP probe failed with statuscode: 404
38m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Readiness probe failed: HTTP probe failed with statuscode: 404
38m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-hq9h8           Liveness probe failed: HTTP probe failed with statuscode: 404
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-hq9h8           Container llama-server failed liveness probe, will be restarted
38m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-pls6d           Readiness probe failed: HTTP probe failed with statuscode: 404
38m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-hq9h8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Stopping container llama-server
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-jj4sk
38m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-k8vmh
38m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-pls6d
38m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-k8vmh           Readiness probe failed: HTTP probe failed with statuscode: 404
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 3 to 1
38m     Normal    Created                        pod/llm-proxy-65577dbdfb-hq9h8           Container created
38m     Normal    Started                        pod/llm-proxy-65577dbdfb-hq9h8           Container started
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-jj4sk           Successfully assigned default/llm-proxy-7dc458997b-jj4sk to ip-172-31-3-254.ec2.internal
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 0 to 1
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-pls6d           Stopping container fastapi-proxy
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Stopping container llama-server
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-k8vmh           Stopping container fastapi-proxy
38m     Normal    Created                        pod/llm-proxy-7dc458997b-jj4sk           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-jj4sk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-jwk8d
38m     Normal    Scheduled                      pod/llm-proxy-65577dbdfb-jwk8d           Successfully assigned default/llm-proxy-65577dbdfb-jwk8d to ip-172-31-37-201.ec2.internal
38m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "curlimages/curl:8.21.0"
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-ql6mx           Successfully assigned default/llm-proxy-7dc458997b-ql6mx to ip-172-31-3-254.ec2.internal
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-ql6mx
38m     Normal    Killing                        pod/llm-proxy-65577dbdfb-hq9h8           Stopping container fastapi-proxy
38m     Normal    Killing                        pod/llm-proxy-7dc458997b-jj4sk           Stopping container model-prefetch
38m     Normal    Started                        pod/llm-proxy-7dc458997b-jj4sk           Container started
38m     Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
38m     Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "curlimages/curl:8.21.0" in 828ms (828ms including waiting). Image size: 10652192 bytes.
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 1 to 2
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-6lnnz
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-nx868           Successfully assigned default/llm-proxy-7dc458997b-nx868 to ip-172-31-32-103.ec2.internal
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
38m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-65577dbdfb from 1 to 2
38m     Normal    Scheduled                      pod/llm-proxy-65577dbdfb-6lnnz           Successfully assigned default/llm-proxy-65577dbdfb-6lnnz to ip-172-31-9-11.ec2.internal
38m     Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-nx868
38m     Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 3; reason: Current number of replicas below Spec.MinReplicas
38m     Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
38m     Normal    SuccessfulRescale              horizontalpodautoscaler/llm-proxy-exp6   New size: 6; reason: Current number of replicas below Spec.MinReplicas
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-65577dbdfb from 2 to 4
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-j2sqt
38m     Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-pxn5p           Successfully assigned default/llm-proxy-7dc458997b-pxn5p to ip-172-31-13-86.ec2.internal
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-65577dbdfb          Created pod: llm-proxy-65577dbdfb-657nt
38m     Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
38m     Warning   FailedScheduling               pod/llm-proxy-65577dbdfb-657nt           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
38m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-lv79g           Successfully assigned default/llm-proxy-7dc458997b-lv79g to ip-172-31-43-11.ec2.internal
38m     Warning   FailedScheduling               pod/llm-proxy-65577dbdfb-j2sqt           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-pxn5p
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 2 to 4
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-lv79g
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "curlimages/curl:8.21.0"
38m     Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "curlimages/curl:8.21.0" in 943ms (943ms including waiting). Image size: 10652192 bytes.
38m     Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
38m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
38m     Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-nx868           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-nx868           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 126ms (126ms including waiting). Image size: 64753325 bytes.
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-nx868           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Started                        pod/llm-proxy-7dc458997b-nx868           Container started
38m     Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ql6mx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-ql6mx           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-ql6mx           Container created
38m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ql6mx           Readiness probe failed: Get "http://10.244.4.8:8000/health": dial tcp 10.244.4.8:8000: connect: connection refused
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ql6mx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.717s (1.717s including waiting). Image size: 64753325 bytes.
38m     Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
38m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
38m     Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
38m     Normal    Started                        pod/llm-proxy-65577dbdfb-6lnnz           Container started
38m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-6lnnz           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-6lnnz           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 128ms (128ms including waiting). Image size: 64753325 bytes.
38m     Normal    Created                        pod/llm-proxy-65577dbdfb-6lnnz           Container created
38m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Readiness probe failed: Get "http://10.244.6.10:8000/ready": dial tcp 10.244.6.10:8000: connect: connection refused
38m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "ghcr.io/ggml-org/llama.cpp:server"
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 4 to 3
38m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled up replica set llm-proxy-7dc458997b from 4 to 5
38m     Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
38m     Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
38m     Normal    Started                        pod/llm-proxy-7dc458997b-pxn5p           Container started
38m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-sg488           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
38m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-657nt
38m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-sg488
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
38m     Normal    Created                        pod/llm-proxy-7dc458997b-pxn5p           Container created
38m     Normal    Pulled                         pod/llm-proxy-7dc458997b-pxn5p           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 118ms (118ms including waiting). Image size: 64753325 bytes.
38m     Normal    Pulling                        pod/llm-proxy-7dc458997b-pxn5p           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
38m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-pxn5p           Readiness probe failed: Get "http://10.244.2.9:8000/health": dial tcp 10.244.2.9:8000: connect: connection refused
37m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 12.56s (12.56s including waiting). Image size: 309793402 bytes.
37m     Normal    Pulling                        pod/llm-proxy-65577dbdfb-jwk8d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
37m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.706s (1.706s including waiting). Image size: 64753325 bytes.
37m     Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
37m     Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-98hkx
37m     Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-j2sqt
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "ghcr.io/ggml-org/llama.cpp:server" in 13.197s (13.197s including waiting). Image size: 309793402 bytes.
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     Scaled down replica set llm-proxy-65577dbdfb from 3 to 2
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-lv79g           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Liveness probe failed: HTTP probe failed with statuscode: 404
37m     Normal    Started                        pod/llm-proxy-7dc458997b-lv79g           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-lv79g           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-lv79g           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 1.643s (1.643s including waiting). Image size: 64753325 bytes.
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-lv79g           Readiness probe failed: Get "http://10.244.1.6:8000/health": dial tcp 10.244.1.6:8000: connect: connection refused
37m     Normal    Killing                        pod/llm-proxy-65577dbdfb-6lnnz           Stopping container fastapi-proxy
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-6lnnz
37m     Normal    Killing                        pod/llm-proxy-65577dbdfb-6lnnz           Stopping container llama-server
37m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-6lnnz           Readiness probe failed: HTTP probe failed with statuscode: 404
37m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-sg488           Successfully assigned default/llm-proxy-7dc458997b-sg488 to ip-172-31-9-11.ec2.internal
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
37m     Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
37m     Warning   FailedScheduling               pod/llm-proxy-7dc458997b-98hkx           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
37m     Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 100ms (100ms including waiting). Image size: 64753325 bytes.
37m     Normal    Pulling                        pod/llm-proxy-7dc458997b-sg488           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
37m     Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
37m     Normal    Created                        pod/llm-proxy-7dc458997b-sg488           Container created
37m     Normal    Pulled                         pod/llm-proxy-7dc458997b-sg488           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    Started                        pod/llm-proxy-7dc458997b-sg488           Container started
37m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-sg488           Readiness probe failed: Get "http://10.244.6.11:8000/health": dial tcp 10.244.6.11:8000: connect: connection refused
37m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Liveness probe failed: HTTP probe failed with statuscode: 404
37m     Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Container llama-server failed liveness probe, will be restarted
37m     Normal    Started                        pod/llm-proxy-65577dbdfb-jwk8d           Container started
37m     Normal    Created                        pod/llm-proxy-65577dbdfb-jwk8d           Container created
37m     Normal    Pulled                         pod/llm-proxy-65577dbdfb-jwk8d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
37m     Normal    ScalingReplicaSet              deployment/llm-proxy                     (combined from similar events): Scaled down replica set llm-proxy-65577dbdfb from 1 to 0
37m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Readiness probe failed: HTTP probe failed with statuscode: 404
37m     Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Stopping container fastapi-proxy
37m     Normal    Killing                        pod/llm-proxy-65577dbdfb-jwk8d           Stopping container llama-server
37m     Normal    SuccessfulDelete               replicaset/llm-proxy-65577dbdfb          Deleted pod: llm-proxy-65577dbdfb-jwk8d
36m     Warning   Unhealthy                      pod/llm-proxy-65577dbdfb-jwk8d           Readiness probe failed: Get "http://10.244.5.2:8000/ready": dial tcp 10.244.5.2:8000: connect: connection refused
36m     Normal    Scheduled                      pod/llm-proxy-7dc458997b-98hkx           Successfully assigned default/llm-proxy-7dc458997b-98hkx to ip-172-31-37-201.ec2.internal
36m     Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
36m     Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
36m     Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
35m     Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
35m     Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
35m     Normal    Pulling                        pod/llm-proxy-7dc458997b-98hkx           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 100ms (100ms including waiting). Image size: 64753325 bytes.
35m     Normal    Created                        pod/llm-proxy-7dc458997b-98hkx           Container created
35m     Normal    Started                        pod/llm-proxy-7dc458997b-98hkx           Container started
35m     Normal    Pulled                         pod/llm-proxy-7dc458997b-98hkx           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
35m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-98hkx           Readiness probe failed: Get "http://10.244.5.3:8000/health": dial tcp 10.244.5.3:8000: connect: connection refused
2m57s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-98hkx           Readiness probe failed: Get "http://10.244.5.3:8000/health": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
run_end=1788163306
interrupted=0
