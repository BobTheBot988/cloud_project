#!/usr/bin/env bash
# Purpose: print recent account spend (Cost Explorer) + the estimated cost of
# one full experimental run, so the budget can be checked before launching.
# Learner Lab budgets update every 8-12h, so this is a sanity check only.
set -uo pipefail

# boiler plate: load env for PROFILE/REGION/AWS
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/00-env.sh"

echo "==> account spend (last 14 days, daily, USD)"
"${AWS[@]}" ce get-cost-and-usage \
  --time-period Start="$(date -d '14 days ago' +%F)",End="$(date +%F)" \
  --granularity DAILY --metrics UnblendedCost \
  --query 'ResultsByTime[].[Start,Total.UnblendedCost.Amount]' --output table 2>/dev/null \
  || echo "    WARN: Cost Explorer unavailable (permissions); check the budget bar in the lab console"

echo "==> estimated cost of one 4h run (master t3.small + 2x t3.medium)"
echo "    master t3.small      1 x ~$0.020/h x 4h = ~$0.08"
echo "    workers t3.medium    2 x ~$0.042/h x 4h = ~$0.34"
echo "    total per run                     ~$0.42 (runtime only)"
echo "==> remember: always 'just cluster-down' before ending the session"
