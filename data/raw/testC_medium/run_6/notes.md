# scenario=testC_medium run=6
collect_start=1788179386
interval_sec=60
run=6
run_start=1788179388
scenario=testC_medium
test=TestB(steady)
level_users=20 steady_min=3 size=medium
target=http://34.228.95.133:30080 loadgen=ec2-user@3.85.82.239
runs_total=10
run_tag=6pod-fixed slots=12 drain90 restart5
collect_stop=1788179586
--- events ---
56m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       
56m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         
56m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        
56m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        
56m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        
56m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        
56m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-43-11.ec2.internal        Updated Node Allocatable limit across pods
56m     Normal    Starting                       node/ip-172-31-43-11.ec2.internal        Starting kubelet.
56m     Normal    Starting                       node/ip-172-31-37-201.ec2.internal       Starting kubelet.
56m     Normal    Starting                       node/ip-172-31-9-11.ec2.internal         Starting kubelet.
56m     Normal    Starting                       node/ip-172-31-13-86.ec2.internal        Starting kubelet.
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-37-201.ec2.internal       Updated Node Allocatable limit across pods
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-9-11.ec2.internal         Updated Node Allocatable limit across pods
56m     Normal    NodeHasSufficientPID           node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    Starting                       node/ip-172-31-3-254.ec2.internal        Starting kubelet.
56m     Normal    NodeHasSufficientPID           node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-13-86.ec2.internal        Updated Node Allocatable limit across pods
56m     Normal    Starting                       node/ip-172-31-44-19.ec2.internal        Starting kubelet.
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-44-19.ec2.internal        Updated Node Allocatable limit across pods
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-3-254.ec2.internal        Updated Node Allocatable limit across pods
56m     Normal    NodeHasSufficientPID           node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    NodeHasSufficientPID           node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    NodeAllocatableEnforced        node/ip-172-31-32-103.ec2.internal       Updated Node Allocatable limit across pods
56m     Normal    NodeHasSufficientPID           node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    Starting                       node/ip-172-31-32-103.ec2.internal       Starting kubelet.
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasSufficientPID           node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    NodeHasSufficientPID           node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientPID
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasNoDiskPressure          node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasNoDiskPressure
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal status is now: NodeHasSufficientMemory
56m     Normal    NodeHasSufficientMemory        node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal status is now: NodeHasSufficientMemory
56m     Warning   Rebooted                       node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal has been rebooted, boot id: 4abeb0e1-b48b-402c-b01f-b9f707f96363
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-qz7kq           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "bb91e4e4c1b3c8e6aecb5dacf0820dd49d8c00ada109361417c7d41fa3e4d8c7": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   Rebooted                       node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal has been rebooted, boot id: 0866c25b-45ed-48a3-8779-ecebf9882ff0
56m     Warning   Rebooted                       node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal has been rebooted, boot id: ef402732-3beb-4f34-8269-3b334581903f
56m     Warning   Rebooted                       node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal has been rebooted, boot id: 2b726800-f2e3-41bc-b7ae-437beb3536db
56m     Warning   Rebooted                       node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal has been rebooted, boot id: 1717ae47-6120-480e-91bb-d247682d825e
56m     Warning   Rebooted                       node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal has been rebooted, boot id: 55b528e5-cac6-4c95-bb56-ab4ae40a9ae1
56m     Warning   Rebooted                       node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal has been rebooted, boot id: 36e43af7-0a34-4601-8205-60606ef33e02
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-mmn2x           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "870fa99ee76150df8fc9a84f12536acbcf2ef47377af95e74d3209a5a4a84a7c": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-qz7kq           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "873240e59bfcf6fc4b6e1d454aada0a29e4b347e55f83032edb69b791daa73de": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-ln97t           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "55da585b6b81d5722a4cc7ffb8e55a00cfd923481e3fb795a747b959e90c3cda": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-ln97t           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "b3440a2b76a63a62e86323464e3dbaf81162e3da0dce78a3c248f5899712092a": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-wll5c           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "862d02dbeb87141b80c6bd014f08eef7d540e2e12461860afd4b948a7570e763": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-z5ltk           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "48b71f92f18dddbb5726fbc1225bfb07a9fa0384b75ea317f8b8b8acc82b0c58": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-z5ltk           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "bc6c12c7afc0e727af2b7ce8e59d817ad4988a93c0b037829282db6f4e75a0e1": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-tr4hs           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "79b5d58248b7b767a9355b4b5377fc7a4ef01765a3627f6afa5894ca0787395d": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-wll5c           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "44db44dca46782dffc31aa3a1b9edb523c8d2b596f0a913d0b19aa1ed907af9d": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-tr4hs           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "28a7fb7d67d8f5b4fbca3bf5ab0b8cae0c3a59a45538aa6ec992406a90b5de8e": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
56m     Warning   FailedCreatePodSandBox         pod/llm-proxy-7dc458997b-mmn2x           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox "5a597378460b1ad02938c2b4f9b7070040985253f4997a1e3b45c823eec0cbd3": plugin type="flannel" failed (add): failed to load flannel 'subnet.env' file: open /run/flannel/subnet.env: no such file or directory. Check the flannel pod log for this node.
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-qz7kq           Pod sandbox changed, it will be killed and re-created.
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-wll5c           Pod sandbox changed, it will be killed and re-created.
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-mmn2x           Pod sandbox changed, it will be killed and re-created.
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-z5ltk           Pod sandbox changed, it will be killed and re-created.
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-ln97t           Pod sandbox changed, it will be killed and re-created.
55m     Normal    Created                        pod/llm-proxy-7dc458997b-tr4hs           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-tr4hs           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    SandboxChanged                 pod/llm-proxy-7dc458997b-tr4hs           Pod sandbox changed, it will be killed and re-created.
55m     Normal    Started                        pod/llm-proxy-7dc458997b-tr4hs           Container started
55m     Normal    RegisteredNode                 node/ip-172-31-13-86.ec2.internal        Node ip-172-31-13-86.ec2.internal event: Registered Node ip-172-31-13-86.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-3-254.ec2.internal        Node ip-172-31-3-254.ec2.internal event: Registered Node ip-172-31-3-254.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-32-103.ec2.internal       Node ip-172-31-32-103.ec2.internal event: Registered Node ip-172-31-32-103.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-44-19.ec2.internal        Node ip-172-31-44-19.ec2.internal event: Registered Node ip-172-31-44-19.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-37-201.ec2.internal       Node ip-172-31-37-201.ec2.internal event: Registered Node ip-172-31-37-201.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-43-11.ec2.internal        Node ip-172-31-43-11.ec2.internal event: Registered Node ip-172-31-43-11.ec2.internal in Controller
55m     Normal    RegisteredNode                 node/ip-172-31-9-11.ec2.internal         Node ip-172-31-9-11.ec2.internal event: Registered Node ip-172-31-9-11.ec2.internal in Controller
55m     Normal    Started                        pod/llm-proxy-7dc458997b-qz7kq           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-qz7kq           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qz7kq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mmn2x           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Created                        pod/llm-proxy-7dc458997b-mmn2x           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-mmn2x           Container started
55m     Normal    Started                        pod/llm-proxy-7dc458997b-wll5c           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-wll5c           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wll5c           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-z5ltk           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Created                        pod/llm-proxy-7dc458997b-z5ltk           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-z5ltk           Container started
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ln97t           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
55m     Normal    Started                        pod/llm-proxy-7dc458997b-ln97t           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-ln97t           Container created
55m     Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
55m     Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-tr4hs           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Started                        pod/llm-proxy-7dc458997b-tr4hs           Container started
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-tr4hs           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-tr4hs           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 157ms (157ms including waiting). Image size: 64753325 bytes.
55m     Normal    Created                        pod/llm-proxy-7dc458997b-tr4hs           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-tr4hs           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-tr4hs           Container created
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-tr4hs           Readiness probe failed: Get "http://10.244.6.16:8000/health": dial tcp 10.244.6.16:8000: connect: connection refused
55m     Normal    Created                        pod/llm-proxy-7dc458997b-z5ltk           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-z5ltk           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-z5ltk           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Started                        pod/llm-proxy-7dc458997b-z5ltk           Container started
55m     Normal    Started                        pod/llm-proxy-7dc458997b-ln97t           Container started
55m     Normal    Started                        pod/llm-proxy-7dc458997b-ln97t           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-ln97t           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ln97t           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 143ms (143ms including waiting). Image size: 64753325 bytes.
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-ln97t           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-z5ltk           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 144ms (144ms including waiting). Image size: 64753325 bytes.
55m     Normal    Started                        pod/llm-proxy-7dc458997b-z5ltk           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-z5ltk           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-ln97t           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Created                        pod/llm-proxy-7dc458997b-ln97t           Container created
55m     Normal    Created                        pod/llm-proxy-7dc458997b-qz7kq           Container created
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-wll5c           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Started                        pod/llm-proxy-7dc458997b-wll5c           Container started
55m     Normal    Created                        pod/llm-proxy-7dc458997b-wll5c           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wll5c           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-wll5c           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 485ms (485ms including waiting). Image size: 64753325 bytes.
55m     Normal    Created                        pod/llm-proxy-7dc458997b-wll5c           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-wll5c           Container started
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qz7kq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Created                        pod/llm-proxy-7dc458997b-qz7kq           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-qz7kq           Container started
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-qz7kq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-qz7kq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 216ms (216ms including waiting). Image size: 64753325 bytes.
55m     Normal    Started                        pod/llm-proxy-7dc458997b-qz7kq           Container started
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qz7kq           Readiness probe failed: Get "http://10.244.3.12:8000/health": dial tcp 10.244.3.12:8000: connect: connection refused
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-wll5c           Readiness probe failed: Get "http://10.244.5.8:8000/health": dial tcp 10.244.5.8:8000: connect: connection refused
55m     Normal    Created                        pod/llm-proxy-7dc458997b-mmn2x           Container created
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mmn2x           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
55m     Normal    Started                        pod/llm-proxy-7dc458997b-mmn2x           Container started
55m     Normal    Pulling                        pod/llm-proxy-7dc458997b-mmn2x           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
55m     Normal    Pulled                         pod/llm-proxy-7dc458997b-mmn2x           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 250ms (250ms including waiting). Image size: 64753325 bytes.
55m     Normal    Created                        pod/llm-proxy-7dc458997b-mmn2x           Container created
55m     Normal    Started                        pod/llm-proxy-7dc458997b-mmn2x           Container started
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mmn2x           Readiness probe failed: Get "http://10.244.4.13:8000/health": dial tcp 10.244.4.13:8000: connect: connection refused
55m     Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mmn2x           Readiness probe failed: HTTP probe failed with statuscode: 503
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container llama-server
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-5f27d
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container fastapi-proxy
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-z5ltk           Stopping container fastapi-proxy
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container fastapi-proxy
4m20s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-968sq           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m20s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-z5ltk           Readiness probe failed: Get "http://10.244.1.11:8000/health": dial tcp 10.244.1.11:8000: connect: connection refused
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container fastapi-proxy
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-wll5c           Stopping container llama-server
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-qz7kq           Stopping container llama-server
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-968sq
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-tr4hs           Stopping container llama-server
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-mtj4g
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container llama-server
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-ln97t           Stopping container fastapi-proxy
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container fastapi-proxy
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-qg977
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-k6dv8
4m20s   Normal    Killing                        pod/llm-proxy-7dc458997b-mmn2x           Stopping container llama-server
4m20s   Normal    SuccessfulCreate               replicaset/llm-proxy-7dc458997b          Created pod: llm-proxy-7dc458997b-hndtn
4m19s   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
4m19s   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
4m19s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-5f27d           Successfully assigned default/llm-proxy-7dc458997b-5f27d to ip-172-31-32-103.ec2.internal
4m19s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-hndtn           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m19s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-mtj4g           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m19s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-k6dv8           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m19s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-k6dv8           Successfully assigned default/llm-proxy-7dc458997b-k6dv8 to ip-172-31-43-11.ec2.internal
4m19s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-qg977           Successfully assigned default/llm-proxy-7dc458997b-qg977 to ip-172-31-9-11.ec2.internal
4m19s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-qg977           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m19s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-ln97t           Readiness probe failed: Get "http://10.244.2.14:8000/health": dial tcp 10.244.2.14:8000: connect: connection refused
4m19s   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
4m19s   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
4m19s   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m19s   Warning   FailedScheduling               pod/llm-proxy-7dc458997b-5f27d           0/7 nodes are available: 1 node(s) had untolerated taint(s), 6 Insufficient cpu. no new claims to deallocate, preemption: 0/7 nodes are available: 1 Preemption is not helpful for scheduling, 6 No preemption victims found for incoming pod.
4m19s   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m19s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-968sq           Successfully assigned default/llm-proxy-7dc458997b-968sq to ip-172-31-37-201.ec2.internal
4m19s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-mtj4g           Successfully assigned default/llm-proxy-7dc458997b-mtj4g to ip-172-31-3-254.ec2.internal
4m19s   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m18s   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
4m18s   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
4m18s   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
4m18s   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
4m18s   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m18s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m18s   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
4m18s   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
4m17s   Normal    Scheduled                      pod/llm-proxy-7dc458997b-hndtn           Successfully assigned default/llm-proxy-7dc458997b-hndtn to ip-172-31-13-86.ec2.internal
4m16s   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
4m16s   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "curlimages/curl:8.21.0" already present on machine and can be accessed by the pod
4m16s   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
3m40s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
3m40s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: unable to get metrics for resource cpu: no metrics returned from resource metrics API
3m39s   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
3m39s   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
3m39s   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
3m39s   Normal    Pulled                         pod/llm-proxy-7dc458997b-5f27d           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m39s   Normal    Pulling                        pod/llm-proxy-7dc458997b-5f27d           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m39s   Normal    Created                        pod/llm-proxy-7dc458997b-5f27d           Container created
3m39s   Normal    Started                        pod/llm-proxy-7dc458997b-5f27d           Container started
3m38s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-5f27d           Readiness probe failed: Get "http://10.244.3.13:8000/health": dial tcp 10.244.3.13:8000: connect: connection refused
3m35s   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 132ms (132ms including waiting). Image size: 64753325 bytes.
3m35s   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
3m35s   Normal    Pulled                         pod/llm-proxy-7dc458997b-mtj4g           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m35s   Normal    Created                        pod/llm-proxy-7dc458997b-mtj4g           Container created
3m35s   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
3m35s   Normal    Pulling                        pod/llm-proxy-7dc458997b-mtj4g           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m34s   Normal    Pulling                        pod/llm-proxy-7dc458997b-968sq           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m34s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-mtj4g           Readiness probe failed: Get "http://10.244.4.14:8000/health": dial tcp 10.244.4.14:8000: connect: connection refused
3m34s   Normal    Started                        pod/llm-proxy-7dc458997b-mtj4g           Container started
3m34s   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
3m34s   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
3m34s   Normal    Started                        pod/llm-proxy-7dc458997b-968sq           Container started
3m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-968sq           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 159ms (159ms including waiting). Image size: 64753325 bytes.
3m34s   Normal    Created                        pod/llm-proxy-7dc458997b-968sq           Container created
3m34s   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
3m34s   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
3m34s   Normal    Pulled                         pod/llm-proxy-7dc458997b-k6dv8           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 114ms (114ms including waiting). Image size: 64753325 bytes.
3m34s   Normal    Pulling                        pod/llm-proxy-7dc458997b-k6dv8           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m34s   Normal    Started                        pod/llm-proxy-7dc458997b-k6dv8           Container started
3m34s   Normal    Created                        pod/llm-proxy-7dc458997b-k6dv8           Container created
3m33s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m33s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-k6dv8           Readiness probe failed: Get "http://10.244.1.13:8000/health": dial tcp 10.244.1.13:8000: connect: connection refused
3m33s   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
3m33s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-968sq           Readiness probe failed: Get "http://10.244.5.9:8000/health": dial tcp 10.244.5.9:8000: connect: connection refused
3m32s   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
3m32s   Normal    Pulling                        pod/llm-proxy-7dc458997b-qg977           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m32s   Normal    Pulled                         pod/llm-proxy-7dc458997b-qg977           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 172ms (172ms including waiting). Image size: 64753325 bytes.
3m32s   Normal    Created                        pod/llm-proxy-7dc458997b-qg977           Container created
3m32s   Normal    Started                        pod/llm-proxy-7dc458997b-qg977           Container started
3m32s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-qg977           Readiness probe failed: Get "http://10.244.6.17:8000/health": dial tcp 10.244.6.17:8000: connect: connection refused
3m31s   Normal    Pulling                        pod/llm-proxy-7dc458997b-hndtn           Pulling image "ghcr.io/bobthebot988/llm-proxy:latest"
3m31s   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
3m31s   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
3m31s   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Successfully pulled image "ghcr.io/bobthebot988/llm-proxy:latest" in 134ms (134ms including waiting). Image size: 64753325 bytes.
3m31s   Normal    Started                        pod/llm-proxy-7dc458997b-hndtn           Container started
3m31s   Normal    Created                        pod/llm-proxy-7dc458997b-hndtn           Container created
3m31s   Normal    Pulled                         pod/llm-proxy-7dc458997b-hndtn           Container image "ghcr.io/ggml-org/llama.cpp:server" already present on machine and can be accessed by the pod
3m30s   Warning   Unhealthy                      pod/llm-proxy-7dc458997b-hndtn           Readiness probe failed: Get "http://10.244.2.15:8000/health": dial tcp 10.244.2.15:8000: connect: connection refused
3m10s   Warning   FailedGetResourceMetric        horizontalpodautoscaler/llm-proxy-exp6   failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
3m10s   Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/llm-proxy-exp6   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: did not receive metrics for targeted pods (pods might be unready)
run_end=1788179586
interrupted=0
