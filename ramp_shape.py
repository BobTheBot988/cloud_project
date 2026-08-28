# LoadTestShape for Test A (sawtooth elasticity): shapes the Locust run as
# warm-up -> ramp1 -> hold1 -> ramp2 -> hold2 -> ramp3 -> valley1 ->
# ramp4 -> valley2 -> ramp-down -> drain so the HPA scales out AND in
# repeatedly mid-run (1->3->6->4->2->1 approx) instead of a single
# out-and-back cycle.
#
# Pod counts are emergent (CPU vs the 60% HPA target); user levels are the
# knobs. The plateau segments (hold1/hold2/valley1/valley2) are FLAT so the
# CPU spends a sustained window above/below the target — scale-in only fires
# after HPA's 300s scale-down stabilization window, so valleys must stay
# long enough (>= ~6 min total below target incl. the descent ramp).
#
# Phases (total ~39 min by default):
#   warm-up   60s   1                  (baseline, 1 pod)
#   ramp1     60s   1 -> HOLD1_USERS   (CPU crosses 60% -> scale toward 3)
#   hold1    300s   HOLD1_USERS        (settle ~3 pods)
#   ramp2     60s   -> U_MAX           (up to the 6-pod ceiling)
#   hold2    480s   U_MAX              (settle 6 pods)
#   ramp3     60s   -> VALLEY1_USERS   (quick descent, not a hold)
#   valley1  360s   VALLEY1_USERS      (flat low load, scale-in -> ~4 pods)
#   ramp4     60s   -> VALLEY2_USERS   (quick descent)
#   valley2  360s   VALLEY2_USERS      (flat low load, scale-in -> ~2 pods)
#   ramp-down 60s   -> 0               (load off)
#   drain    480s   0                  (idle -> 1 pod)
#
# All durations/user counts overridable via env for dev iterations
# and for post-run-1 calibration of the plateau levels.

# boiler plate
from locust import LoadTestShape
import os
import sys


def _posint(name, default, minimum):
    raw = os.environ.get(name)
    if raw is None:
        return default
    try:
        value = int(raw)
    except ValueError:
        sys.exit(f"FATAL: {name} must be an integer >= {minimum} (got '{raw}')")
    if value < minimum:
        sys.exit(f"FATAL: {name} must be an integer >= {minimum} (got '{raw}')")
    return value


U_MAX = _posint("U_MAX", 50, 1)
WARMUP_SECS = _posint("WARMUP_SECS", 60, 0)
RAMP1_SECS = _posint("RAMP1_SECS", 60, 0)
HOLD1_USERS = _posint("HOLD1_USERS", 20, 1)
HOLD1_SECS = _posint("HOLD1_SECS", 300, 0)
RAMP2_SECS = _posint("RAMP2_SECS", 60, 0)
HOLD2_SECS = _posint("HOLD2_SECS", 480, 0)
RAMP3_SECS = _posint("RAMP3_SECS", 60, 0)
VALLEY1_USERS = _posint("VALLEY1_USERS", 35, 1)
VALLEY1_SECS = _posint("VALLEY1_SECS", 360, 0)
RAMP4_SECS = _posint("RAMP4_SECS", 60, 0)
VALLEY2_USERS = _posint("VALLEY2_USERS", 10, 1)
VALLEY2_SECS = _posint("VALLEY2_SECS", 360, 0)
RAMPDOWN_SECS = _posint("RAMPDOWN_SECS", 60, 0)
DRAIN_SECS = _posint("DRAIN_SECS", 480, 0)

# boiler plate
PHASES = [
    (WARMUP_SECS, 1),
    (RAMP1_SECS, HOLD1_USERS),
    (HOLD1_SECS, HOLD1_USERS),
    (RAMP2_SECS, U_MAX),
    (HOLD2_SECS, U_MAX),
    (RAMP3_SECS, VALLEY1_USERS),
    (VALLEY1_SECS, VALLEY1_USERS),
    (RAMP4_SECS, VALLEY2_USERS),
    (VALLEY2_SECS, VALLEY2_USERS),
    (RAMPDOWN_SECS, 0),
    (DRAIN_SECS, 0),
]


class RampShape(LoadTestShape):
    # tick: linear ramp between the previous phase target and the current
    # phase target, returns (users, spawn_rate)
    def tick(self):
        run_time = self.get_run_time()
        elapsed = 0
        prev = 1.0
        for duration, target in PHASES:
            if run_time < elapsed + duration:
                t = run_time - elapsed
                frac = t / duration
                users = prev + (target - prev) * frac
                return (round(users), 1)
            prev = target
            elapsed += duration
        return None
