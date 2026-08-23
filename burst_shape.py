# LoadTestShape for Test D (bursty workload): alternates a normal baseline
# of LOW_USERS with short bursts of HIGH_USERS so the HPA has to react —
# scale out (1->2) during a burst and back in after it ends. Repeated
# CYCLES times in a single Locust run (no -t/-u flags needed; the shape
# drives both the user count and the run length).
#
# Phases (default total ~6 min):
#   normal  120s  LOW_USERS   (baseline, below the 60% CPU target)
#   burst    60s  HIGH_USERS  (spike -> HPA should scale 1->2)
#   ... repeated CYCLES (default 2) times
#
# Durations/users overridable via env.

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


LOW_USERS = _posint("LOW_USERS", 2, 1)
HIGH_USERS = _posint("HIGH_USERS", 12, 1)
NORMAL_SECS = _posint("NORMAL_SECS", 120, 1)
BURST_SECS = _posint("BURST_SECS", 60, 1)
CYCLES = _posint("CYCLES", 2, 1)

# boiler plate
PHASES = []
for _ in range(CYCLES):
    PHASES.append((NORMAL_SECS, LOW_USERS))
    PHASES.append((BURST_SECS, HIGH_USERS))


class BurstShape(LoadTestShape):
    # tick: step change between phases (flat baseline, flat burst), fast spawn
    def tick(self):
        run_time = self.get_run_time()
        elapsed = 0
        for duration, users in PHASES:
            if run_time < elapsed + duration:
                return (users, 5)
            elapsed += duration
        return None
