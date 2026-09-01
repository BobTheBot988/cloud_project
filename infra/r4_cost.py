#!/usr/bin/env python3
"""R4 cost estimate: 6-month EC2 stack vs single large EC2 vs AWS Lambda.

Writes tables/r4_cost_6mo.csv (raw line items) and tables/r4_comparison.csv
(six-month totals). Prices are us-east-1 on-demand list (rounded to PLAN.md
guide values); override via env vars.
"""

import os
from pathlib import Path

import pandas as pd

REPO = Path(__file__).resolve().parent.parent
TABLES = REPO / "tables"

HOURS_6MO = 24 * 365.25 / 2
DAYS_6MO = HOURS_6MO / 24
T3_SMALL = float(os.environ.get("T3_SMALL", "0.020"))
T3_MEDIUM = float(os.environ.get("T3_MEDIUM", "0.042"))
T3_MICRO = float(os.environ.get("T3_MICRO", "0.011"))
T3_XLARGE = float(os.environ.get("T3_XLARGE", "0.1664"))
M5_4XLARGE = float(os.environ.get("M5_4XLARGE", "0.96"))
EBS_GP3_PER_GB_MO = float(os.environ.get("EBS_GP3", "0.08"))
EBS_GB = int(os.environ.get("EBS_GB", "40"))
LAMBDA_PER_1M = float(os.environ.get("LAMBDA_PER_1M", "0.20"))
LAMBDA_GBS = float(os.environ.get("LAMBDA_GBS", "0.0000166667"))
LAMBDA_GB = float(os.environ.get("LAMBDA_GB", "2.0"))
LAMBDA_DUR_S = float(os.environ.get("LAMBDA_DUR_S", "40"))


def ec2_line(node, qty, price_h, size_gb):
    compute = qty * price_h * HOURS_6MO
    ebs = qty * size_gb * EBS_GP3_PER_GB_MO * 6
    return compute + ebs


def build():
    TABLES.mkdir(parents=True, exist_ok=True)
    rows = []

    # two EC2 footprints: the 2-worker service footprint (production) and
    # the 6-worker bench actually used for the measurements
    def ec2_stack(n_master, n_worker, label, single_label, single_price):
        comp = n_master * T3_SMALL * HOURS_6MO + n_worker * T3_MEDIUM * HOURS_6MO
        ebs = (n_master + n_worker) * EBS_GB * EBS_GP3_PER_GB_MO * 6
        single = single_price * HOURS_6MO + EBS_GB * EBS_GP3_PER_GB_MO * 6
        return {
            "label": label, "n_master": n_master, "n_worker": n_worker,
            "compute": comp, "ebs": ebs, "total": comp + ebs,
            "single_label": single_label, "single": single,
        }

    footprint = ec2_stack(1, 2, "Service footprint (1 master + 2 workers, HPA 1-2 pods)",
                          "Single t3.xlarge (4 vCPU, no autoscaling)", T3_XLARGE)
    bench = ec2_stack(1, 6, "Experiment bench (1 master + 6 workers, HPA 1-6 pods)",
                      "Single m5.4xlarge (16 vCPU, no autoscaling)", M5_4XLARGE)

    loadgen = T3_MICRO * HOURS_6MO + EBS_GB * EBS_GP3_PER_GB_MO * 6

    invocations_6mo = float(os.environ.get("LAMBDA_INVOCATIONS", "2840000"))
    lambda_req = invocations_6mo / 1e6 * LAMBDA_PER_1M
    lambda_gbs = invocations_6mo * LAMBDA_GB * LAMBDA_DUR_S
    lambda_compute = lambda_gbs * LAMBDA_GBS
    lambda_total = lambda_req + lambda_compute

    items = [
        ("master t3.small", footprint["n_master"], T3_SMALL, footprint["n_master"] * T3_SMALL * HOURS_6MO, footprint["n_master"] * EBS_GB * EBS_GP3_PER_GB_MO * 6),
        ("worker t3.medium", footprint["n_worker"], T3_MEDIUM, footprint["n_worker"] * T3_MEDIUM * HOURS_6MO, footprint["n_worker"] * EBS_GB * EBS_GP3_PER_GB_MO * 6),
        ("load-gen t3.micro (test only)", 1, T3_MICRO, loadgen - EBS_GB * EBS_GP3_PER_GB_MO * 6, EBS_GB * EBS_GP3_PER_GB_MO * 6),
    ]
    for name, qty, price, comp, ebs in items:
        rows.append({
            "item": name, "qty": qty, "price_per_h": price,
            "compute_6mo_usd": round(comp, 2), "ebs_6mo_usd": round(ebs, 2),
            "total_6mo_usd": round(comp + ebs, 2),
        })
    rows.append({"item": "STACK TOTAL (incl. load-gen)", "qty": "", "price_per_h": "",
                 "compute_6mo_usd": round(footprint["compute"] + loadgen - EBS_GB * EBS_GP3_PER_GB_MO * 6, 2),
                 "ebs_6mo_usd": round(footprint["ebs"] + EBS_GB * EBS_GP3_PER_GB_MO * 6, 2),
                 "total_6mo_usd": round(footprint["total"] + loadgen, 2)})
    pd.DataFrame(rows).to_csv(TABLES / "r4_cost_6mo.csv", index=False)

    comp = pd.DataFrame({
        "solution": [
            footprint["label"],
            footprint["single_label"],
            bench["label"],
            bench["single_label"],
            "AWS Lambda (same AI app)",
        ],
        "compute_6mo_usd": [
            round(footprint["compute"], 2),
            round(T3_XLARGE * HOURS_6MO, 2),
            round(bench["compute"], 2),
            round(M5_4XLARGE * HOURS_6MO, 2),
            round(lambda_compute, 2),
        ],
        "requests_6mo_usd": [0.0, 0.0, 0.0, 0.0, round(lambda_req, 2)],
        "storage_6mo_usd": [round(footprint["ebs"], 2), round(EBS_GB * EBS_GP3_PER_GB_MO * 6, 2),
                            round(bench["ebs"], 2), round(EBS_GB * EBS_GP3_PER_GB_MO * 6, 2), 0.0],
        "total_6mo_usd": [round(footprint["total"], 2), round(footprint["single"], 2),
                          round(bench["total"], 2), round(bench["single"], 2), round(lambda_total, 2)],
        "notes": [
            f"always-on; {footprint['n_master']} master + {footprint['n_worker']} workers; HPA 1-2 pods; {EBS_GB}GB gp3 each",
            f"4 vCPU / 16GB, {EBS_GB}GB gp3; same peak as 2x t3.medium, no elasticity",
            f"always-on; {bench['n_master']} master + {bench['n_worker']} workers; HPA 1-6 pods; {EBS_GB}GB gp3 each",
            f"16 vCPU / 64GB, {EBS_GB}GB gp3; same peak as 6x t3.medium, no elasticity",
            f"{LAMBDA_GB:.0f}GB, {LAMBDA_DUR_S:.0f}s/inv, {invocations_6mo:.0f} inv/6mo",
        ],
    })
    comp.to_csv(TABLES / "r4_comparison.csv", index=False)

    print("R4 cost tables ->", TABLES)
    print(f"  Service footprint 6mo: ${footprint['total']:.2f}")
    print(f"  Single t3.xlarge 6mo: ${footprint['single']:.2f}")
    print(f"  Experiment bench 6mo: ${bench['total']:.2f}")
    print(f"  Single m5.4xlarge 6mo: ${bench['single']:.2f}")
    print(f"  Lambda 6mo: ${lambda_total:.2f}  ({lambda_gbs:.0f} GB-s, {lambda_req:.2f} req charges)")
    return 0


if __name__ == "__main__":
    raise SystemExit(build())
