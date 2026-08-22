# Locust load generator for the proxy: posts OpenAI-compat /generate
# requests. Prompts are split into three size buckets (small/medium/large)
# with a configurable `SIZE` (env) and a weighted `mix` pool used by
# Test A/B/C. `max_tokens` per bucket sets the generated-token budget.

# boiler plate
from locust import HttpUser, task, between
import random
import os
import time
import sys

# boiler plate
SIZE_BUCKETS = {
    "small": {
        "max_tokens": 32,
        "prompts": [
            "List the top three benefits of managed Kubernetes in production.",
            "Explain the difference between horizontal and vertical scaling for a stateless web service behind a load balancer.",
            "Describe the steps to build a CI/CD pipeline that builds a Docker image, runs tests, and deploys to staging on every push to main.",
        ],
    },
    "medium": {
        "max_tokens": 128,
        "prompts": [
            "What causes cold starts in serverless functions and how can developers mitigate them with provisioned concurrency and warmup triggers?",
            "Compare Infrastructure as Code tools such as Terraform and CloudFormation on state management, drift detection, and multi-cloud support, and recommend one for a small platform team.",
            "Outline a security hardening checklist for a publicly exposed API gateway, covering TLS configuration, rate limiting, OAuth token validation, input sanitization, secret rotation, and audit logging of administrative actions.",
        ],
    },
    "large": {
        "max_tokens": 256,
        "prompts": [
            "Design a cost optimization strategy for a Kubernetes cluster running batch jobs, including spot instance usage for interruptible workloads, right-sizing requests and limits, node-level cluster autoscaling, and automated cleanup of orphaned persistent volumes so that idle resources never linger past their retention window.",
            "Walk through a full incident response playbook for a database connection pool exhaustion event: first, correlate metrics like active connections and queue depth with the failing endpoint; second, identify the offending query patterns through slow query logs; third, apply a temporary connection limit and scale out replicas; fourth, run a postmortem that traces the root cause to a misconfigured ORM leaving idle transactions open; and fifth, implement connection validation, statement timeouts, and retry with exponential backoff as permanent mitigations so the same failure mode cannot recur during peak traffic.",
            "Explain why an observability stack built on OpenTelemetry tracing, Prometheus metrics, and Loki log aggregation gives a platform team end-to-end visibility: traces link a single request across the API gateway, the auth service, the message queue, and the worker nodes; metrics quantify error rates, latency percentiles, and saturation for every dependency; logs provide the raw detail needed to debug a single failing request. Describe how to propagate trace context through a chain of microservices using W3C headers, how to set up alerting rules that fire on p95 latency breaching a budget for more than five minutes, and how to correlate a slow database query visible in metrics with the exact code path that issued it, using the trace and log data pulled together from the three backends in a single query.",
            "Write a detailed migration plan for moving a monolith from a single EC2 instance to a containerized deployment on EKS: first, inventory every service boundary, database connection, cron job, and file-system dependency that the monolith relies on; second, split the application into deployable services with explicit ownership and versioned APIs; third, define Kubernetes manifests for deployments, services, ingress rules, and horizontal pod autoscaling based on CPU and memory utilization; fourth, set up a Helm chart with environments for development, staging, and production using values files that override resource limits and replica counts; fifth, migrate the database using a dual-write strategy that runs the old and new systems in parallel and verifies read consistency; sixth, shift traffic gradually through a weighted load balancer while monitoring error rates, p99 latency, and queue depths; and finally, cut over after the old stack has been idle for two full business cycles, then decommission the legacy instance and document the rollback procedure that restores traffic to the previous architecture if the new platform shows unexplained instability. Throughout the migration, track a readiness scorecard that covers deployment success rate, p99 latency, error budget burn, and data consistency checks, and gate every traffic-shift step on the scorecard passing its targets; schedule the cutover during a low-traffic window, keep the old instance running for a full week in read-only mode, and require sign-off from the on-call engineer before final decommissioning. Include a section on training: run a tabletop exercise where the team practices failing over, roll back, and restoring the old stack from a snapshot, and record the runbook in the incident repository so any engineer can execute the procedure without consulting the original author.",
        ],
    },
}

# pool weights for the mixed workload: small/medium/large by probability
MIX_POOL = [("small", 0.5), ("medium", 0.3), ("large", 0.2)]

# size selection: `SIZE` env in {small,medium,large,mix}, default mix
SIZE = os.environ.get("SIZE") or "mix"

if SIZE not in set(SIZE_BUCKETS) | {"mix"}:
    sys.exit(f"FATAL: SIZE must be one of small|medium|large|mix (got '{SIZE}')")


def pick_request():
    # pick a size bucket (mix -> weighted choice), then a prompt + max_tokens
    if SIZE == "mix":
        names, weights = zip(*MIX_POOL)
        size = random.choices(names, weights=weights)[0]
    else:
        size = SIZE
    bucket = SIZE_BUCKETS[size]
    prompt = random.choice(bucket["prompts"])
    return size, prompt, bucket["max_tokens"]


# per-request detail capture: {ts,status,size,total_ms,upstream_ms} appended
# to the CSV named by DETAIL_CSV (set by the exp runner per run dir). total_ms
# = locust client-side latency; upstream_ms = proxy->llama round-trip
# (X-Upstream-Ms header); orchestrator+transport = total_ms - upstream_ms.
# status lets analysis filter to successful (2xx) rows — timeouts otherwise
# misattribute to orchestrator.
DETAIL_CSV = os.environ.get("DETAIL_CSV", "")
_detail_fh = None


def detail_write(status, size, total_ms, upstream_ms):
    global _detail_fh
    if not DETAIL_CSV:
        return
    if _detail_fh is None:
        _detail_fh = open(DETAIL_CSV, "a", newline="")
        _detail_fh.write("ts,status,size,total_ms,upstream_ms\n")
    _detail_fh.write(f"{int(time.time())},{status},{size},{total_ms:.1f},{upstream_ms:.1f}\n")
    _detail_fh.flush()


# boiler plate
from locust import events


@events.test_stop.add_listener
def _close_detail_csv(environment, **kw):
    global _detail_fh
    if _detail_fh is not None:
        _detail_fh.close()
        _detail_fh = None


class LLMUser(HttpUser):
    wait_time = between(0.5, 2.0)

    # Locust task: sends a non-streaming generation request with a prompt
    # sampled from the selected size bucket.
    @task
    def generate(self):
        size, prompt, max_tokens = pick_request()
        r = self.client.post("/generate", json={
            "messages": [{"role": "user", "content": prompt}],
            "max_tokens": max_tokens,
            "stream": False,
        })
        total_ms = r.elapsed.total_seconds() * 1000
        try:
            upstream_ms = float(r.headers.get("X-Upstream-Ms", "0") or 0)
        except ValueError:
            upstream_ms = 0.0
        detail_write(r.status_code, size, total_ms, upstream_ms)
