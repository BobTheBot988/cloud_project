#!/usr/bin/env python
"""Block 3 variant analysis (exp4/exp6, plus base testB as exp2).

Reads data/raw/<variant>/run_*/, produces PNGs + CSV tables into artifacts/.
Per variant x level x size:
  - error rate, availability (1 - err), p95, pods
  - delay breakdown: total_ms (locust) vs upstream_ms (proxy->llama) vs
    orchestrator+transport (total - upstream), from requests_detail.csv
  - error-type attribution: 503=llama busy, 504=timeout, 502=connect
"""
import csv, glob, os, re, statistics
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA = f"{ROOT}/data/raw"
ART = f"{ROOT}/artifacts"
os.makedirs(ART, exist_ok=True)

VARIANTS = {"testB": (2, "exp2"), "exp4": (4, "exp4"), "exp6": (6, "exp6")}  # dir -> (maxReplicas, label)


def note(d, key):
    for l in open(f"{d}/notes.md"):
        if l.startswith(f"{key}="):
            return l.split("=", 1)[1].strip()
    return None


def load_run(d):
    s = f"{d}/locust_stats.csv"
    if not os.path.exists(s):
        return None
    r = next(csv.DictReader(open(s)))
    fails, err_types = 0, {}
    fpath = f"{d}/locust_failures.csv"
    if os.path.exists(fpath):
        for x in csv.DictReader(open(fpath)):
            n = int(x.get("Occurrences", 0))
            fails += n
            err = x.get("Error", "")
            if "503 " in err:
                err_types["503_llama_busy"] = err_types.get("503_llama_busy", 0) + n
            elif "504 " in err:
                err_types["504_timeout"] = err_types.get("504_timeout", 0) + n
            elif "502 " in err:
                err_types["502_connect"] = err_types.get("502_connect", 0) + n
            else:
                err_types["other"] = err_types.get("other", 0) + n
    reqs = int(r.get("Request Count", 0))
    lvl_m = re.search(r"level_users=(\d+)", open(f"{d}/notes.md").read())
    return {
        "level": int(lvl_m.group(1)) if lvl_m else 0,
        "size": note(d, "size"),
        "reqs": reqs,
        "fails": fails,
        "err_types": err_types,
        "p95": float(r.get("95%", 0)) / 1000,
        "err": 100 * fails / max(reqs, 1),
        "replicas": [l.split()[1] for l in open(f"{d}/replicas.csv") if l.strip()] if os.path.exists(f"{d}/replicas.csv") else [],
        "detail": f"{d}/requests_detail.csv",
    }


def load_details(path):
    """total_ms, upstream_ms, orchestrator_ms by size (successful 2xx rows only)."""
    if not os.path.exists(path):
        return {}
    out = {}
    nrows = nskip = 0
    for r in csv.DictReader(open(path)):
        try:
            status = int(r.get("status", "200"))
            size = r["size"]
            total = float(r["total_ms"])
            up = float(r["upstream_ms"])
        except (KeyError, ValueError):
            continue
        nrows += 1
        if not (200 <= status < 300):  # exclude timeouts/failures — they'd
            nskip += 1                 # misattribute llama delay to orchestrator
            continue
        out.setdefault(size, []).append((total, up))
    return out


def summarize_variant(name):
    maxrepl, label = VARIANTS[name]
    runs = []
    for d in sorted(glob.glob(f"{DATA}/{name}/run_*"), key=lambda s: int(s.rsplit("_", 1)[1])):
        r = load_run(d)
        if r:
            runs.append(r)
    if not runs:
        return None
    levels = {}
    for r in runs:
        levels.setdefault(r["level"], []).append(r)
    return {"name": label, "dir": name, "max": maxrepl, "runs": runs, "levels": dict(sorted(levels.items()))}


def main():
    vs = {}
    for name in VARIANTS:
        v = summarize_variant(name)
        if v:
            vs[name] = v
    print("variants found:", list(vs))

    # ---- figure 1: pods, p95, error/availability vs level (all variants) ----
    fig, axs = plt.subplots(1, 3, figsize=(15, 4))
    for v in vs.values():
        xs = sorted(v["levels"])
        pods = [statistics.mean(max(int(x) for x in r["replicas"]) for r in v["levels"][l]) if any(r["replicas"] for r in v["levels"][l]) else 0 for l in xs]
        p95 = [statistics.mean(r["p95"] for r in v["levels"][l]) for l in xs]
        err = [statistics.mean(r["err"] for r in v["levels"][l]) for l in xs]
        axs[0].plot(xs, pods, "o-", label=f"{v['name']} (max {v['max']})")
        axs[0].axhline(v["max"], ls=":", c="gray", alpha=.4)
        axs[1].plot(xs, p95, "o-", label=v["name"])
        axs[2].plot(xs, err, "o-", label=v["name"])
    axs[0].set(xlabel="users", title="avg max pods"); axs[0].legend()
    axs[1].set(xlabel="users", title="avg p95 (s)")
    axs[2].set(xlabel="users", title="avg error rate %")
    fig.suptitle("Variants: capacity + latency + errors vs intensity")
    fig.tight_layout(); fig.savefig(f"{ART}/variant_capacity.png", dpi=130)

    # ---- figure 2: delay breakdown per variant per level (mix) ----
    fig, ax = plt.subplots(figsize=(11, 5))
    any_detail = False
    for v in vs.values():
        xs, tot, up, orch = [], [], [], []
        for l in sorted(v["levels"]):
            agg = {"total": [], "up": [], "orch": []}
            for r in v["levels"][l]:
                det = load_details(r["detail"])
                if det:
                    any_detail = True
                for size, pairs in det.items():
                    for t, u in pairs:
                        agg["total"].append(t)
                        agg["up"].append(u)
                        agg["orch"].append(t - u)
            if agg["total"]:
                xs.append(l)
                tot.append(statistics.mean(agg["total"]))
                up.append(statistics.mean(agg["up"]))
                orch.append(statistics.mean(agg["orch"]))
        ax.plot(xs, tot, "o-", label=f"{v['name']} total")
        ax.plot(xs, up, "s--", label=f"{v['name']} upstream(llama)")
        ax.plot(xs, orch, "d:", label=f"{v['name']} orchestrator+transport")
    if not any_detail:
        print("WARN: no requests_detail.csv found in any variant — delay figures empty (needs the timing proxy image + detail capture)")
    ax.set(xlabel="users", ylabel="ms (avg)", title="Delay breakdown: client total vs llama vs orchestrator+transport")
    ax.legend(fontsize=8)
    fig.tight_layout(); fig.savefig(f"{ART}/variant_delay_breakdown.png", dpi=130)

    # ---- figure 3: delay breakdown per size class (mix, all variants combined per level) ----
    fig, axs = plt.subplots(1, 3, figsize=(15, 4))
    for si, size in enumerate(("small", "medium", "large")):
        for v in vs.values():
            xs, tot, up, orch = [], [], [], []
            for l in sorted(v["levels"]):
                agg = {"total": [], "up": [], "orch": []}
                for r in v["levels"][l]:
                    pairs = load_details(r["detail"]).get(size, [])
                    for t, u in pairs:
                        agg["total"].append(t); agg["up"].append(u); agg["orch"].append(t - u)
                if agg["total"]:
                    xs.append(l); tot.append(statistics.mean(agg["total"])); up.append(statistics.mean(agg["up"])); orch.append(statistics.mean(agg["orch"]))
            axs[si].plot(xs, tot, "o-", label=f"{v['name']} total")
            axs[si].plot(xs, up, "s--", label=f"{v['name']} llama")
        axs[si].set(xlabel="users", title=f"size={size}")
    axs[0].legend(fontsize=7)
    fig.suptitle("Delay by request size (mix runs)")
    fig.tight_layout(); fig.savefig(f"{ART}/variant_delay_by_size.png", dpi=130)

    # ---- summary table CSV ----
    rows = []
    for v in vs.values():
        for l in sorted(v["levels"]):
            runs = v["levels"][l]
            reqs = sum(r["reqs"] for r in runs)
            fails = sum(r["fails"] for r in runs)
            rows.append({
                "variant": v["name"], "level_users": l, "n_runs": len(runs),
                "reqs": reqs, "fails": fails,
                "error_rate_pct": round(100 * fails / max(reqs, 1), 1),
                "availability": round(1 - fails / max(reqs, 1), 4),
                "avg_p95_s": round(statistics.mean(r["p95"] for r in runs), 1),
            })
    if not rows:
        print("WARN: no variant data found under data/raw — nothing to summarize")
        return
    with open(f"{ART}/variant_summary.csv", "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader(); w.writerows(rows)
    print("wrote", f"{ART}/variant_summary.csv", f"({len(rows)} rows)")
    print("wrote", f"{ART}/variant_capacity.png", f"{ART}/variant_delay_breakdown.png", f"{ART}/variant_delay_by_size.png")


if __name__ == "__main__":
    main()
