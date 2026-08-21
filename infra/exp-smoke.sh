#!/usr/bin/env bash
# Purpose: Phase 0 smoke gate — prove the size buckets work before any
# AWS spend. Starts the compose stack, runs a 1-user Locust burst per
# bucket (small/medium/large) against the local proxy, asserts zero
# failures and a non-empty generation, then tears the stack down.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$DIR/.." && pwd)"
TARGET="${TARGET:-http://127.0.0.1:8000}"
PY="$REPO/.venv/bin/python"
BURST_SECS=20

echo "==> compose up"
podman-compose -f "$REPO/compose.yaml" up -d --build

echo "==> waiting for proxy /health"
ok=0
for _ in $(seq 1 60); do
  if curl -s -m 2 "$TARGET/health" | grep -q '"ok"'; then ok=1; break; fi
  sleep 2
done
[ "$ok" = 1 ] || { echo "FATAL: proxy not healthy at $TARGET"; podman-compose -f "$REPO/compose.yaml" down; exit 1; }

fail=0
for size in small medium large; do
  echo "==> smoke SIZE=$size ($BURST_SECS s, 1 user)"
  tmp=$(mktemp -d)
  SIZE="$size" .venv/bin/locust -f "$REPO/locustfile.py" --headless \
    --host "$TARGET" -u 1 -r 1 --run-time "${BURST_SECS}s" --csv "$tmp/locust" >"$tmp/locust.out" 2>&1
  "$PY" - "$tmp/locust_stats.csv" <<'PYEOF' || fail=1
import sys, csv
rows = list(csv.DictReader(open(sys.argv[1])))
reqs = sum(int(r["Request Count"]) for r in rows)
fails = sum(int(r["Failure Count"]) for r in rows)
print(f"    requests={reqs} failures={fails}")
if reqs == 0 or fails > 0:
    print("FAIL: no requests or failures detected")
    sys.exit(1)
PYEOF
  # verify a real non-empty generation via the API
  PYTHONPATH="$REPO" SIZE="$size" "$PY" - "$size" "$TARGET" <<'PYEOF' || fail=1
import sys, urllib.request, json
size, target = sys.argv[1], sys.argv[2]
from locustfile import pick_request
prompt, max_tokens = pick_request()
body = json.dumps({"messages": [{"role": "user", "content": prompt}], "max_tokens": max_tokens, "stream": False}).encode()
req = urllib.request.Request(target + "/generate", data=body, headers={"Content-Type": "application/json"})
resp = json.load(urllib.request.urlopen(req, timeout=120))
content = resp["choices"][0]["message"]["content"]
if not content.strip():
    print(f"FAIL: empty generation for size={size}")
    sys.exit(1)
print(f"    generate ok, {len(content)} chars")
PYEOF
  rm -rf "$tmp"
done

echo "==> compose down"
podman-compose -f "$REPO/compose.yaml" down

if [ "$fail" = 0 ]; then
  echo "==> exp-smoke PASS (all buckets ok)"
else
  echo "==> exp-smoke FAIL"
  exit 1
fi
