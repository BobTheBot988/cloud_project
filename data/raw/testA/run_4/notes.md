# scenario=testA run=4
collect_start=1787933250
interval_sec=60
run=4
run_start=1787933252
test=TestA(ramp)
u_max=50 size=mix
target=http://52.43.216.224:30080 loadgen=ec2-user@54.83.155.35
runs_total=4
collect_stop=1787935605
--- events ---

run_end=1787935605
interrupted=0
service_hang=1 (llama.cpp deadlock under sustained 50-user mix; node load 0, single 32-token req >120s; fixed by pod restart, 5.15s after)
