# LoadTestShape for Test A (continuous ramp): shapes the Locust run as
# warm-up -> ramp-up -> steady -> ramp-down -> drain so the HPA has a
# clean window to scale out (1->2) and back in (2->1).
#
# Phases (total ~27 min by default):
#   warm-up   60s   1 user            (no cold-start noise in the signal)
#   ramp-up   180s  1 -> U_MAX        (CPU crosses 60% -> HPA scales 1->2)
#   steady    600s  U_MAX             (hold above target at 2 pods)
#   ramp-down 180s  U_MAX -> 0        (load falls off)
#   drain     600s  0                 (>=10 min idle for scale-in 2->1)
#
# Durations overridable via env (WARMUP_SECS, RAMP_SECS, STEADY_SECS,
# RAMPDOWN_SECS, DRAIN_SECS) — used for short dev iterations.

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


U_MAX = _posint("U_MAX", 20, 1)
WARMUP_SECS = _posint("WARMUP_SECS", 60, 0)
RAMP_SECS = _posint("RAMP_SECS", 180, 0)
STEADY_SECS = _posint("STEADY_SECS", 600, 0)
RAMPDOWN_SECS = _posint("RAMPDOWN_SECS", 180, 0)
DRAIN_SECS = _posint("DRAIN_SECS", 600, 0)

# boiler plate
PHASES = [
    (WARMUP_SECS, 1),
    (RAMP_SECS, U_MAX),
    (STEADY_SECS, U_MAX),
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
