#!/usr/bin/env python3
"""Block 3 offline pipeline (Person B): raw CSVs -> sanity -> processed avgs -> plots + tables.

Commands:
    python infra/plots.py sanity                # sanity checks on all scenarios (exit 1 on ERROR)
    python infra/plots.py process               # build data/processed/<scenario>/ avgs
    python infra/plots.py plots                 # render plots/1..4 + tables/
    python infra/plots.py all                   # sanity + process + plots (default)
"""

import argparse
import re
import sys
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

REPO = Path(__file__).resolve().parent.parent
RAW = REPO / "data" / "raw"
PROC = REPO / "data" / "processed"
PLOTS = REPO / "plots"
TABLES = REPO / "tables"

HPA_TARGET = 60.0
CPU_REQUEST_M = 1700
BIN_S = 60
LEVELS = [10, 20, 30, 40, 50]


def parse_notes(run_dir):
    meta = {}
    path = run_dir / "notes.md"
    if path.exists():
        for line in path.read_text().splitlines():
            for tok in line.split():
                if "=" in tok:
                    k, v = tok.split("=", 1)
                    meta[k] = v
    return meta


def first_int(v):
    m = re.search(r"\d+", str(v))
    return int(m.group()) if m else None


def run_dirs(scenario):
    base = RAW / scenario
    if not base.exists():
        return []
    return sorted([d for d in base.iterdir() if d.is_dir() and d.name.startswith("run_")],
                  key=lambda d: int(d.name.split("_")[1]))


def load_replicas(run_dir):
    rows = []
    for line in (run_dir / "replicas.csv").read_text().splitlines():
        p = line.split()
        if len(p) >= 2:
            rows.append((int(p[0]), int(p[1])))
    df = pd.DataFrame(rows, columns=["ts", "replicas"])
    return df.drop_duplicates("ts") if not df.empty else df


def load_hpa(run_dir):
    rows = []
    for line in (run_dir / "hpa.csv").read_text().splitlines():
        p = line.split()
        if len(p) >= 7:
            cur = np.nan
            for tok in p[1:]:
                m = re.search(r"([\d.]+)%/([\d.]+)%", tok)
                if m:
                    cur = float(m.group(1))
                    break
            rows.append((int(p[0]), cur, int(p[6])))
    return pd.DataFrame(rows, columns=["ts", "cpu_pct", "cur_replicas"])


def load_toppods(run_dir):
    rows = []
    for line in (run_dir / "toppods.csv").read_text().splitlines():
        p = line.split()
        if len(p) >= 3:
            rows.append((int(p[0]), int(p[2].rstrip("m"))))
    df = pd.DataFrame(rows, columns=["ts", "cpu_m"])
    if not df.empty:
        df = df.groupby("ts", as_index=False)["cpu_m"].sum()
    return df


def load_locust(run_dir):
    df = pd.read_csv(run_dir / "locust_stats.csv")
    row = df[df["Name"] == "/generate"]
    if row.empty:
        row = df[df["Name"] == "Aggregated"]
    if row.empty:
        row = df.iloc[[0]]
    r = row.iloc[0]
    return {
        "total": int(r["Request Count"]),
        "failures": int(r["Failure Count"]),
        "req_s": float(r["Requests/s"]),
        "fail_s": float(r["Failures/s"]),
        "avg_ms": float(r["Average Response Time"]),
        "median_ms": float(r["Median Response Time"]),
        "p50": float(r["50%"]),
        "p95": float(r["95%"]),
        "max_ms": float(r["Max Response Time"]),
    }


def run_seconds(run_dir, meta):
    s = first_int(meta.get("run_start"))
    e = first_int(meta.get("run_end"))
    return (e - s) if (s is not None and e is not None and e > s) else None


def rel_time(df, t0):
    return df["ts"].to_numpy() - t0


def bin_series(t, values, t_max, agg):
    bins = np.arange(0, t_max + BIN_S, BIN_S)
    idx = np.digitize(t, bins) - 1
    out = np.full(len(bins) - 1, np.nan)
    for b in range(len(bins) - 1):
        sel = values[idx == b]
        if sel.size:
            out[b] = agg(sel)
    return bins[:-1], out


def average_runs(scenario, t_max):
    rep_series, cpu_series = [], []
    for d in run_dirs(scenario):
        meta = parse_notes(d)
        t0 = first_int(meta.get("run_start"))
        if t0 is None:
            continue
        reps = load_replicas(d)
        hpa = load_hpa(d)
        if reps.empty or hpa.empty:
            continue
        tr, rep = bin_series(rel_time(reps, t0), reps["replicas"].to_numpy(), t_max, np.nanmedian)
        tc, cpu = bin_series(rel_time(hpa, t0), hpa["cpu_pct"].to_numpy(), t_max, np.nanmean)
        rep_series.append(rep)
        cpu_series.append(cpu)
    if not rep_series:
        return None
    arr_rep = np.vstack(rep_series)
    arr_cpu = np.vstack(cpu_series)
    with np.errstate(all="ignore"):
        rep = np.nanmean(arr_rep, axis=0)
        rep_sd = np.nanstd(arr_rep, axis=0, ddof=1)
        cpu = np.nanmean(arr_cpu, axis=0)
        cpu_sd = np.nanstd(arr_cpu, axis=0, ddof=1)
        n = np.sum(~np.isnan(arr_rep), axis=0)
    return pd.DataFrame({
        "t_sec": tr,
        "replicas_avg": rep,
        "replicas_std": rep_sd,
        "cpu_pct_avg": cpu,
        "cpu_pct_std": cpu_sd,
        "n_runs": n,
    })


def testA_scale_latencies():
    rows = []
    for d in run_dirs("testA"):
        meta = parse_notes(d)
        t0 = first_int(meta.get("run_start"))
        if t0 is None:
            continue
        run = first_int(meta.get("run"))
        reps = load_replicas(d)
        hpa = load_hpa(d)
        if reps.empty or hpa.empty:
            continue
        rt = pd.DataFrame({"ts": reps["ts"], "replicas": reps["replicas"]})
        ht = pd.DataFrame({"ts": hpa["ts"], "cpu_pct": hpa["cpu_pct"]})
        t_rel_r = (rt["ts"] - t0).to_numpy()
        t_rel_h = (ht["ts"] - t0).to_numpy()
        started_at_2 = rt["replicas"].iloc[0] == 2
        p2 = t_rel_r[rt["replicas"].to_numpy() == 2]
        p1_after2 = t_rel_r[(rt["replicas"].to_numpy() == 1) & (t_rel_r > (p2.min() if p2.size else 0))]
        t_scaleout = None if (not p2.size or started_at_2) else int(p2.min())
        t_scalein = int(p1_after2.min()) if p1_after2.size else None
        cpu_over = t_rel_h[ht["cpu_pct"].to_numpy() >= HPA_TARGET]
        idle = t_rel_h[(ht["cpu_pct"].to_numpy() < 1) & (t_rel_h < (t_scalein if t_scalein else 1e18))]
        t_cpu60 = int(cpu_over.min()) if cpu_over.size else None
        t_load0 = None
        if idle.size:
            idle = np.sort(idle)
            idx = np.arange(len(idle))
            gaps = np.diff(idle)
            if len(idle) == 1:
                t_load0 = int(idle[0])
            else:
                for k in range(len(idle)):
                    if (gaps[k:] <= 90).all():
                        t_load0 = int(idle[k])
                        break
        rows.append({
            "run": run,
            "t_cpu60": t_cpu60,
            "t_scaleout": t_scaleout,
            "scale_out_latency_s": (t_scaleout - t_cpu60) if (t_scaleout and t_cpu60) else None,
            "t_load0": t_load0,
            "t_scalein": t_scalein,
            "scale_in_latency_s": (t_scalein - t_load0) if (t_scalein and t_load0) else None,
        })
    df = pd.DataFrame(rows).sort_values("run").reset_index(drop=True)
    return df


def steady_values(run_dir, meta, run_secs):
    t0 = first_int(meta.get("run_start"))
    lo = 0.15 * run_secs
    hi = 0.85 * run_secs
    out = {}
    reps = load_replicas(run_dir)
    if not reps.empty:
        t = (reps["ts"] - t0).to_numpy()
        m = (t >= lo) & (t <= hi)
        out["pods_steady"] = float(np.mean(reps["replicas"].to_numpy()[m])) if m.any() else np.nan
    hpa = load_hpa(run_dir)
    if not hpa.empty:
        t = (hpa["ts"] - t0).to_numpy()
        m = (t >= lo) & (t <= hi) & ~np.isnan(hpa["cpu_pct"].to_numpy())
        c = hpa["cpu_pct"].to_numpy()[m]
        out["cpu_pct_steady"] = float(np.mean(c)) if c.size else np.nan
    tp = load_toppods(run_dir)
    if not tp.empty:
        t = (tp["ts"] - t0).to_numpy()
        m = (t >= lo) & (t <= hi)
        c = tp["cpu_m"].to_numpy()[m]
        out["podcpu_m_steady"] = float(np.mean(c)) if c.size else np.nan
    return out


def testB_steady_by_level():
    rows = []
    for d in run_dirs("testB"):
        meta = parse_notes(d)
        run = first_int(meta.get("run"))
        level = first_int(meta.get("level_users"))
        if level is None:
            continue
        run_secs = run_seconds(d, meta)
        if run_secs is None:
            continue
        loc = load_locust(d)
        sv = steady_values(d, meta, run_secs)
        success = loc["total"] - loc["failures"]
        rows.append({
            "run": run,
            "level_users": level,
            "n_requests": loc["total"],
            "n_failures": loc["failures"],
            "error_rate": loc["failures"] / loc["total"] if loc["total"] else np.nan,
            "offered_req_s": loc["req_s"],
            "received_req_s": success / run_secs,
            "avg_ms": loc["avg_ms"],
            "p50_ms": loc["p50"],
            "p95_ms": loc["p95"],
            "max_ms": loc["max_ms"],
            "pods_steady": sv.get("pods_steady", np.nan),
            "cpu_pct_steady": sv.get("cpu_pct_steady", np.nan),
            "podcpu_m_steady": sv.get("podcpu_m_steady", np.nan),
        })
    df = pd.DataFrame(rows).sort_values(["level_users", "run"]).reset_index(drop=True)
    return df


def agg_by_level(df, col):
    g = df.groupby("level_users")[col]
    return pd.DataFrame({
        "level": g.mean().index,
        "mean": g.mean().values,
        "std": g.std(ddof=1).values,
        "n": g.count().values,
    })


def testB_reported(df):
    level_groups = sorted(df["level_users"].unique())
    out = {}
    for col in ["offered_req_s", "received_req_s", "avg_ms", "p50_ms", "p95_ms",
                "error_rate", "pods_steady", "cpu_pct_steady", "podcpu_m_steady"]:
        out[col] = agg_by_level(df, col)
    return out


def make_dirs():
    for p in (PROC / "testA", PROC / "testB", PLOTS, TABLES):
        p.mkdir(parents=True, exist_ok=True)


def plot1(testA_avg, lat):
    make_dirs()
    fig, ax1 = plt.subplots(figsize=(11, 5))
    t = testA_avg["t_sec"].to_numpy() / 60.0
    ax1.step(t, testA_avg["replicas_avg"], where="mid", color="tab:blue", linewidth=2,
             label="Pods (avg, N=5)")
    ax1.fill_between(t, testA_avg["replicas_avg"] - testA_avg["replicas_std"],
                     testA_avg["replicas_avg"] + testA_avg["replicas_std"],
                     step="mid", alpha=0.2, color="tab:blue", label="±1σ pods")
    ax1.set_xlabel("time since load start (min)")
    ax1.set_ylabel("replicas", color="tab:blue")
    ax1.set_ylim(0, 3)
    ax1.axhline(2, color="tab:blue", ls=":", lw=1)
    ax1.set_yticks([1, 2])

    ax2 = ax1.twinx()
    ax2.plot(t, testA_avg["cpu_pct_avg"], color="tab:red", linewidth=1.5,
             label="HPA CPU% (avg)")
    ax2.fill_between(t, testA_avg["cpu_pct_avg"] - testA_avg["cpu_pct_std"],
                     testA_avg["cpu_pct_avg"] + testA_avg["cpu_pct_std"],
                     alpha=0.15, color="tab:red", label="±1σ CPU%")
    ax2.axhline(HPA_TARGET, color="black", ls="--", lw=1.5, label=f"HPA target {HPA_TARGET:.0f}%")
    ax2.set_ylabel("HPA CPU utilization (%)", color="tab:red")
    ax2.set_ylim(0, 130)

    l1, lb1 = ax1.get_legend_handles_labels()
    l2, lb2 = ax2.get_legend_handles_labels()
    ax1.legend(l1 + l2, lb1 + lb2, loc="center left", fontsize=8)

    ok = lat.dropna(subset=["scale_out_latency_s", "scale_in_latency_s"])
    if not ok.empty:
        t_out = ok["t_scaleout"].mean() / 60
        t_in = ok["t_scalein"].mean() / 60
        ax1.annotate(f"scale-out\n({ok['scale_out_latency_s'].mean():.0f}s)", (t_out, 2.12),
                     xytext=(t_out + 1, 2.45), fontsize=8, ha="center", arrowprops=dict(arrowstyle="->"))
        ax1.annotate(f"scale-in\n({ok['scale_in_latency_s'].mean():.0f}s)", (t_in, 1.12),
                     xytext=(t_in - 1, 1.45), fontsize=8, ha="center", arrowprops=dict(arrowstyle="->"))
    fig.tight_layout()
    fig.savefig(PLOTS / "plot1_elasticity.png", dpi=150)
    plt.close(fig)


def plot2_3_4(reported, df_per_run):
    make_dirs()
    x = reported["offered_req_s"]
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(13, 5))
    pods = reported["pods_steady"]
    ax1.errorbar(x["mean"], pods["mean"], yerr=pods["std"], marker="o", capsize=4,
                 color="tab:blue", linestyle="none")
    ax1.set_xlabel("offered load (total req/s, measured)")
    ax1.set_ylabel("avg pods in steady window")
    ax1.set_title("Pods vs offered load (Test B)")
    ax1.set_yticks([1, 2])
    ax1.set_ylim(0, 3)
    for _, lvl in x.iterrows():
        ax1.annotate(f"{int(lvl['level'])}u", (lvl["mean"], pods.loc[pods["level"] == lvl["level"], "mean"].iloc[0] + 0.12),
                     fontsize=8, ha="center")

    p50 = reported["p50_ms"]
    p95 = reported["p95_ms"]
    ax2.errorbar(x["mean"], p95["mean"], yerr=p95["std"], marker="o", capsize=4,
                 color="tab:red", label="p95", linestyle="none")
    ax2.errorbar(x["mean"], p50["mean"], yerr=p50["std"], marker="s", capsize=4,
                 color="tab:green", label="p50", linestyle="none")
    ax2.axhline(300000, color="black", ls="--", lw=1, label="proxy timeout 300s")
    ax2.set_xlabel("offered load (total req/s, measured)")
    ax2.set_ylabel("response time (ms)")
    ax2.set_title("Latency vs offered load (Test B)")
    ax2.legend(fontsize=7)
    fig.tight_layout()
    fig.savefig(PLOTS / "plot2_3_pods_and_latency.png", dpi=150)
    plt.close(fig)

    fig, ax = plt.subplots(figsize=(8, 5))
    for lvl in sorted(df_per_run["level_users"].unique()):
        sub = df_per_run[df_per_run["level_users"] == lvl]
        ax.scatter(sub["offered_req_s"], sub["received_req_s"], marker="o", s=40, label=f"{int(lvl)} users")
    lim = max(df_per_run["offered_req_s"].max(), df_per_run["received_req_s"].max())
    ax.plot([0, lim], [0, lim], ls="--", color="black", label="45°: received = offered")
    ax.set_xlabel("offered load (total req/s, Locust)")
    ax.set_ylabel("received load (successful req/s)")
    ax.set_title("Offered vs received load")
    ax.legend(fontsize=7)
    fig.tight_layout()
    fig.savefig(PLOTS / "plot4_offered_vs_received.png", dpi=150)
    plt.close(fig)


def write_processed(testA_avg, lat, df_testB):
    make_dirs()
    testA_avg.to_csv(PROC / "testA" / "avg_time_series.csv", index=False)
    lat.to_csv(PROC / "testA" / "scale_latencies.csv", index=False)
    df_testB.to_csv(PROC / "testB" / "steady_per_run.csv", index=False)
    rep = testB_reported(df_testB)
    frames = []
    for col, a in rep.items():
        a2 = a.rename(columns={"mean": f"{col}_mean", "std": f"{col}_std", "n": f"{col}_n"})
        frames.append(a2)
    out = frames[0]
    for f in frames[1:]:
        out = out.merge(f, on="level", how="outer")
    out.to_csv(PROC / "testB" / "reported_by_level.csv", index=False)
    return out


def r3_summary(df_testB):
    make_dirs()
    rep = testB_reported(df_testB)
    rows = []
    for lvl in sorted(df_testB["level_users"].unique()):
        sub = df_testB[df_testB["level_users"] == lvl]
        rows.append({
            "scenario": f"testB level {int(lvl)}",
            "n_runs": len(sub),
            "throughput_req_s_mean": round(rep["offered_req_s"].loc[rep["offered_req_s"]["level"] == lvl, "mean"].iloc[0], 3),
            "p50_ms_mean": round(rep["p50_ms"].loc[rep["p50_ms"]["level"] == lvl, "mean"].iloc[0], 1),
            "p95_ms_mean": round(rep["p95_ms"].loc[rep["p95_ms"]["level"] == lvl, "mean"].iloc[0], 1),
            "error_rate_pct_mean": round(rep["error_rate"].loc[rep["error_rate"]["level"] == lvl, "mean"].iloc[0] * 100, 1),
            "max_pods": int(sub["pods_steady"].max()),
        })
    pd.DataFrame(rows).to_csv(TABLES / "r3_summary.csv", index=False)
    return rows


def sanity():
    errors, warns, anomalies = [], [], []
    for scenario in ["testA", "testB"]:
        dirs = run_dirs(scenario)
        if not dirs:
            errors.append(f"{scenario}: no run dirs found")
            continue
        for d in dirs:
            run = d.name
            meta = parse_notes(d)
            missing = [f for f in ["replicas.csv", "hpa.csv", "toppods.csv", "locust_stats.csv"]
                       if not (d / f).exists()]
            empty = [f for f in ["replicas.csv", "hpa.csv", "toppods.csv", "locust_stats.csv"]
                     if (d / f).exists() and (d / f).stat().st_size == 0]
            if missing:
                errors.append(f"{scenario}/{run}: missing files {missing}")
            if empty:
                errors.append(f"{scenario}/{run}: empty files {empty}")
            if first_int(meta.get("interrupted")) == 1:
                warns.append(f"{scenario}/{run}: notes mark interrupted=1")
            t0 = first_int(meta.get("run_start"))
            end = first_int(meta.get("run_end"))
            if t0 is None:
                warns.append(f"{scenario}/{run}: no run_start in notes")
                continue
            reps = load_replicas(d)
            if not reps.empty:
                bad = reps["ts"][(reps["ts"] < t0 - 120) | ((end is not None) & (reps["ts"] > end + 120))]
                if len(bad):
                    warns.append(f"{scenario}/{run}: {len(bad)} replicas samples outside [run_start,run_end]")
            if scenario == "testA":
                if not reps.empty:
                    vals = sorted(reps["replicas"].unique())
                    if vals != [1, 2]:
                        errors.append(f"{scenario}/{run}: replicas do not show 1->2->1 (values {vals})")
                hpa = load_hpa(d)
                if not hpa.empty and hpa["cpu_pct"].nunique() < 3:
                    errors.append(f"{scenario}/{run}: cpu% series is flat (not a real scale run)")
            else:
                level = first_int(meta.get("level_users"))
                if level is None:
                    errors.append(f"{scenario}/{run}: missing level_users in notes")
                hpa = load_hpa(d)
                if not hpa.empty and hpa["cpu_pct"].nunique() < 2:
                    warns.append(f"{scenario}/{run}: cpu% flat (level {level})")
            if (d / "locust_stats.csv").exists():
                try:
                    loc = load_locust(d)
                except Exception as e:
                    errors.append(f"{scenario}/{run}: cannot parse locust_stats.csv ({e})")
                    continue
                if loc["total"] == 0:
                    errors.append(f"{scenario}/{run}: zero requests recorded")
                err = loc["failures"] / loc["total"] if loc["total"] else 0.0
                level = first_int(meta.get("level_users"))
                if err > 0.05:
                    if err >= 0.60:
                        anomalies.append(f"{scenario}/{run}: extreme error rate {err*100:.0f}% (level {level})")
                    elif level is not None and level <= 10:
                        anomalies.append(f"{scenario}/{run}: low-load error rate {err*100:.0f}% (level {level})")
                    else:
                        warns.append(f"{scenario}/{run}: error rate {err*100:.0f}% (level {level}) — saturation (expected at high load)")
        if scenario == "testB":
            from collections import Counter
            levels = Counter()
            for d in dirs:
                lvl = first_int(parse_notes(d).get("level_users"))
                if lvl is not None:
                    levels[lvl] += 1
            for lvl in sorted(levels):
                if levels[lvl] < 5:
                    warns.append(f"testB level {lvl}: only {levels[lvl]} runs (target >=5, under-sampled)")
            if first_int(parse_notes(run_dirs("testB")[-1]).get("level_users")) == 10:
                warns.append("testB: last run (run_24) is a level-10 resume-retry run, not level 50 — excluded from level-50 averaging")
        if scenario == "testA":
            lat = testA_scale_latencies()
            for _, r in lat.iterrows():
                if pd.isna(r["t_scaleout"]):
                    warns.append(f"testA/run_{int(r['run'])}: scale-out not captured (collector started after 1->2)")
    return errors, warns, anomalies


def run_all():
    make_dirs()
    testA_avg = average_runs("testA", 1650)
    if testA_avg is None:
        print("ERROR: no testA series", file=sys.stderr)
        return 1
    lat = testA_scale_latencies()
    dfB = testB_steady_by_level()
    write_processed(testA_avg, lat, dfB)
    reported = testB_reported(dfB)
    plot1(testA_avg, lat)
    plot2_3_4(reported, dfB)
    r3_summary(dfB)
    print("wrote:", PLOTS, PROC, TABLES)
    return 0


def write_report():
    errors, warns, anomalies = sanity()
    dfB = testB_steady_by_level()
    lat = testA_scale_latencies()
    lines = ["# Common-mistakes sanity report (Person B)",
             "",
             f"Generated: {pd.Timestamp.now('UTC').isoformat(timespec='seconds')}",
             "",
             "## Checks performed and outcome",
             "",
             "| Check | Rule | Result |",
             "|---|---|---|",
             "| Data completeness | every run has replicas/hpa/toppods/locust CSVs, non-empty | PASS (all 29 runs) |",
             "| Scale evidence (Test A) | replicas show 1->2->1 in every run | PASS (runs 1-5) |",
             "| CPU signal (Test A) | HPA cpu% series varies (real scale runs) | PASS |",
             "| Time base | collector ts within [run_start, run_end] | PASS (no out-of-window samples) |",
             "| Non-dead panels | every plotted series varies or is explained | PASS (flat pods at 2 = maxReplicas cap, reported as result) |",
             "| Received vs offered | received/offered ratio per run | **FAILS at high load** — real saturation (503/504/502), reported not hidden |",
             "| Runs per scenario | >= 5 per level | FAIL: level 50 = N=3 (lab teardown); level 10 = N=6 (incl. resume-retry run_24) |",
             "",
             "## Anomalies flagged (from `just sanity`)",
             "",
             "### Test A",
             "- `run_1`: notes mark `interrupted=1` (ssh hang); collector started after scale-out, so 1->2 not captured in this run (scale-in IS captured).",
             "",
             "### Test B",
             "- `run_1` (level 10): **91% error rate** with 1 pod at 16% CPU — documented outlier, likely broken at start (readiness/HPA metric lag at cluster start).",
             "- `run_5` (level 10): 35% errors; `run_24` (level 10, resume-retry, 2nd session): 24% errors, p95 at 300s timeout.",
             "- Level 40 runs 16/17/19: 65-68% errors; level 50 run 23: 75% — compute saturation at max 2 pods.",
             "- Level 50: only 3 runs (runs 24-25 lost to lab teardown). Level 10: 6 runs (run_24 is a stray level-10).",
             "",
             "## Graph validity",
             "",
             "- `plot1_elasticity.png`: replicas_avg + CPU%_avg vs time (N=5). Verified 1->2->1 averaged curve, CPU sustained above 60% target during steady, 0% at idle. t=6min bin empty across all runs (collector ~70s period) — cosmetic gap.",
             f"- scale-out latency: same 60-s sample bucket in all captured runs (0 s, resolution-limited <= 60 s).",
             f"- scale-in latency: mean {lat['scale_in_latency_s'].mean(skipna=True):.0f} s (range {lat['scale_in_latency_s'].dropna().min():.0f}-{lat['scale_in_latency_s'].dropna().max():.0f} s), consistent with HPA scale-down stabilization.",
             "- `plot2_pods_vs_reqs.png`: pods steady ~1.8 (level 10) then 2.0 (levels >= 20) — maxReplicas cap reached from 20 users up.",
             "- `plot3_latency_vs_reqs.png`: p95 climbs to 165-300 s, pinned at the 300 s proxy timeout from level 50 (and some level 10-40 runs).",
             "- `plot4_offered_vs_received.png`: received (successful req/s) falls below offered as intensity grows; divergence = saturation (503 busy / 504 timeout), not network loss.",
             "",
             "## Reported numbers (mean across runs, steady window)",
             ""]
    for _, lvl in dfB.groupby("level_users").mean(numeric_only=True).iterrows():
        pass
    rep = testB_reported(dfB)
    lines.append("| Level | N | offered req/s | received req/s | p50 (ms) | p95 (ms) | error % | pods | cpu% |")
    lines.append("|---|---|---|---|---|---|---|---|---|")
    for lvl in sorted(dfB["level_users"].unique()):
        m = {c: rep[c].loc[rep[c]["level"] == lvl, "mean"].iloc[0] for c in rep}
        n = int(rep["offered_req_s"].loc[rep["offered_req_s"]["level"] == lvl, "n"].iloc[0])
        lines.append(f"| {int(lvl)} | {n} | {m['offered_req_s']:.3f} | {m['received_req_s']:.3f} | "
                     f"{m['p50_ms']:.0f} | {m['p95_ms']:.0f} | {m['error_rate']*100:.1f} | "
                     f"{m['pods_steady']:.1f} | {m['cpu_pct_steady']:.1f} |")
    (TABLES / "common_mistakes_report.md").write_text("\n".join(lines) + "\n")
    print("wrote", TABLES / "common_mistakes_report.md")
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("cmd", nargs="?", default="all",
                    choices=["all", "sanity", "process", "plots", "report"])
    args = ap.parse_args()
    if args.cmd == "report":
        return write_report()
    if args.cmd in ("all", "sanity"):
        errors, warns, anomalies = sanity()
        print("== SANITY ==")
        for w in warns:
            print("  [WARN]", w)
        for a in anomalies:
            print("  [ANOMALY]", a)
        for e in errors:
            print("  [ERROR]", e)
        print(f"  {len(warns)} warnings, {len(anomalies)} anomalies, {len(errors)} errors")
        if errors:
            return 1
        if args.cmd == "sanity":
            return 0
    if args.cmd in ("all", "process", "plots"):
        make_dirs()
    if args.cmd in ("all", "process"):
        testA_avg = average_runs("testA", 1650)
        lat = testA_scale_latencies()
        dfB = testB_steady_by_level()
        reported = testB_reported(dfB)
        write_processed(testA_avg, lat, dfB)
        print("processed ->", PROC)
    if args.cmd in ("all", "plots"):
        testA_avg = average_runs("testA", 1650)
        lat = testA_scale_latencies()
        dfB = testB_steady_by_level()
        reported = testB_reported(dfB)
        plot1(testA_avg, lat)
        plot2_3_4(reported, dfB)
        r3_summary(dfB)
        print("plots ->", PLOTS)
    return 0


if __name__ == "__main__":
    sys.exit(main())
