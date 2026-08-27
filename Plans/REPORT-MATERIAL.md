# REPORT-MATERIAL.md — Tutto ciò che serve per scrivere il report (Block 4)

Documento di lavoro: ogni sezione del report finale (A+B) ha qui la sua fonte
(tabella/plot/numero) e i valori chiave pronti da copiare. Scritto dopo la
chiusura delle sessioni AWS (26-08-2026, Test D + analisi Test C).

---
## 1. Obiettivo del progetto (1 paragrafo)

Scalare automaticamente (HPA Kubernetes) un servizio di inferenza LLM
(Qwen3.5-0.8B via llama.cpp, CPU-only) su AWS Learner Lab: al crescere del
carico la CPU dei pod sale sopra il target 60% e Kubernetes crea più repliche;
al calo le elimina. Misurare elasticità, curva capacità→latenza/errori,
isolamento per dimensione della richiesta e costo su 6 mesi vs alternative.

**Statement da includere: "Option 3 su K8s/EC2"** — scegliamo K8s/EC2 (non
serverless): workload AI long-running con decode CPU-bound; Lambda costa ~7×.

---
## 2. Architettura & environment (per la sezione "Environment")

| Componente | Dettaglio |
|---|---|
| Modello | `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (791MB, Q6_K) |
| Motore | `ghcr.io/ggml-org/llama.cpp:server` build 10380, `--threads 2 --parallel 2 --reasoning off`, ~26 tok/s (target ≥21 OK, `MEASURE.md`) |
| Proxy | FastAPI `app/main.py`: `/health` + `/generate` OpenAI-compat, streaming, timeout 300s, header `X-Upstream-Ms` (attribuzione delay) |
| Pod | sidecar llama+proxy, emptyDir condiviso, initContainer prefetch GGUF; requests: llama 1700m / proxy 100m |
| Cluster | 1× master t3.small + 2× worker t3.medium, AL2023, k8s v1.36, Flannel, Metrics Server |
| HPA | CPU media, target **60%**, min 1 max 2 (`deploy/hpa.yaml`); varianti max 4 (`hpa-exp4`) e max 6 (`hpa-exp6`) |
| Service | NodePort `:30080` |
| Loadgen | Locust 2.46 headless su t3.micro in-AWS, size bucket small/medium/large (max_tokens 32/128/256) + mix pesato 0.5/0.3/0.2 |
| Regione | us-east-1 (una sessione precedente: us-west-2) |
| Quota lab | ≤8 istanze / ≤31 vCPU / ≤medium (guard fail-closed in `infra/`) |

**Tool justification (perché Locust):** già nel repo, Python, headless con CSV
(`locust_stats.csv`/`locust_failures.csv`), `LoadTestShape` per profili custom
(rampa, burst), banco per-request `requests_detail.csv` con delay split
(total = locust, upstream = proxy→llama, orchestrator = differenza).

---
## 3. Disegno sperimentale (test eseguiti)

| Test | Cosa misura | Parametri | Run | Dati |
|---|---|---|---|---|
| **Test A** | elasticità: scale-out 1→2 e scale-in 2→1 | rampa continua, mix, U_MAX=12 | 5 | `data/raw/testA/run_1..5` |
| **Test B** | curva carico→latenza/errori/pod | livelli 10/20/30/40/50 utenti, mix, steady 6min | 25 (5×livello) | `data/raw/testB/run_1..25` |
| **Varianti exp4/exp6** | scaling oltre 2 pod + attribuzione delay | HPA max 4 / 6, livelli 10-50, N=20/livello | 200 | `data/raw/exp4/`, `exp6/` |
| **Test C** | isolamento per size richiesta | 20 utenti, 10 run per size (small/medium/large/mix), steady 2min | 40 | `data/raw/testC_{small,medium,large,mix}/` |
| **Test D** | reazione HPA ai burst | LOW=2 / HIGH=12 utenti, normal 120s / burst 60s ×2 cicli | 3 | `data/raw/testD/run_1..3` |

Plot disponibili: `plots/plot1_elasticity.png`, `plot2_3_pods_and_latency.png`,
`plot4_offered_vs_received.png`, `plot5_size.png`, `plot7_burst.png`;
varianti: `artifacts/variant_{capacity,delay_breakdown,delay_by_size}.png` +
`variant_summary.csv`.

---
## 4. Risultati — Test A (elasticità)

- **N=5, ogni run scala 1→2→1** (replicas 1→2 sotto carico, 2→1 dopo ≥10 min idle).
- 1142 richieste, 89 errori (**7.8%**, 0-13% per run).
- Latenza media 35-49s, p95 72-90s (mix).
- `SuccessfulRescale` (New size: 2, cpu>target) nelle run 2-5.
- **Plot 1**: replicas + CPU% vs tempo.

**Takeaway:** l'HPA risponde al segnale CPU in modo deterministico; il ciclo
out→in è la prova dell'elasticità.

---
## 5. Risultati — Test B (curva di capacità) — `tables/r3_summary.csv`

| livello | req/s | p50 (s) | p95 (s) | errori % | max pod |
|---|---|---|---|---|---|
| 10 | 0.185 | 41.2 | 139.0 | 25.3 | 2 |
| 20 | 0.195 | 81.8 | 222.2 | 22.6 | 2 |
| 30 | 0.183 | 140.4 | 253.2 | 22.0 | 2 |
| 40 | 0.235 | 197.6 | 274.0 | 55.9 | 2 |
| 50 | 0.206 | 189.2 | 295.2 | 33.4 | 2 |

- 1776 richieste totali, 617 errori (**34.7%**): 503 busy=254 · 504 timeout=231 · 502=132.
- **p95 schiacciato sul timeout proxy 300s** ai livelli alti → saturazione a max 2 pod.
- 2 pod steady a tutti i livelli ≥10 (l'HPA scala ma il cap è max 2).
- **Plot 2/3** (pods+p50/p95 vs load) e **Plot 4** (offered vs received → bottleneck).

**Takeaway:** con 2 pod il sistema si satura attorno a 20-40 utenti; errori
reali (503=slot llama esauriti, 504=richiesta oltre 300s) — **vanno riportati, non nascosti**.

---
## 6. Risultati — Varianti exp4/exp6 (più pod = meglio) — `artifacts/variant_summary.csv`

| variante | livello | errori % | availability | p95 (s) | note |
|---|---|---|---|---|---|
| exp2 | 10-50 | 22-59 | 0.41-0.78 | 139-295 | baseline 2 pod |
| exp4 | 10-50 | 4-27 | 0.73-0.96 | 51-101 | HPA max 4 |
| exp6 | 10-50 | 0-24 | 0.76-1.0 | 30-98 | HPA max 6, tocca 6 pod (86% CPU) |

- **exp6 a livello 50 serve 7× le richieste di exp4** (1299 vs 178): processa la coda invece di scartare.
- **Delay attribution** (exp4/exp6, richieste 2xx): total ~40-45s, upstream ~40s,
  **orchestrator+transport ~11ms** → **bottleneck = llama (container), non proxy/orchestratore**.
- **Plot:** `artifact variant_capacity/delay_breakdown/delay_by_size`.

**Flag per il report:** exp6 lvl20 sparso (~5 req/run); exp4 lvl50 cap (178 req, 26% err);
exp2 lvl40 spike errori (56%); niente warm-up in Test B/varianti (dati includono
cold-start + ramp — dichiararlo).

---
## 7. Risultati — Test C (size-isolato @20 utenti) — `tables/testC_summary.csv`

| size | N req | req/s | p50 (s) | p95 (s) | err % | delay total/upstream/orch |
|---|---|---|---|---|---|---|
| small | 497 | 0.458 | 38.0 | 45.8 | 1.2 | 26.3s / 26.3s / **11.7ms** |
| medium | 57 | 0.06 | 86.9 | 109.4 | 13.6 | 80.9s / 80.9s / 16.9ms |
| large | 10 | 0.009 | 92.3 | 106.7 | 0.0 | 78.8s / 78.8s / 12.5ms |
| mix | 121 | 0.105 | 92.7 | 111.4 | 0.0 | 84.2s / 84.2s / 16.6ms |

Analisi per size (`Plans/blocco_3_person_b.md` §4.3):
- **small sano**: ~0.46 req/s, p50 25s (2xx), err 1.2%. Costo tutto di llama (orch 11ms).
- **medium degradato**: 0.06 req/s, p50 ~84s, err 13.6% (vicino al timeout).
- **mix = interference cross-size**: split per size → **small 25s isolato vs 88s nel mix (~3.5×)**; tutte le classi convergono a ~86-98s (coda condivisa).
- **large ⚠️ dati insufficienti**: 10 req totali su 10 run, 7/10 vuote. Causa: richiesta ~90-120s > finestra steady di 2 min a 2 slot. **Decisione in sospeso**: accettare / rifare a 4 utenti.
- **Plot 5** (`plot5_size.png`): latenza + delay breakdown + scaling per size.

---
## 8. Risultati — Test D (burst) — `tables/testD_summary.csv` + `plots/plot7_burst.png`

| run | req | err | req/s | avg (s) | p50 (s) | p95 (s) | CPU steady % |
|---|---|---|---|---|---|---|---|
| 1 | 42 | 0 | 0.117 | 28.8 | 24.0 | 56.0 | 84.0 |
| 2 | 48 | 0 | 0.135 | 26.0 | 21.0 | 58.0 | 98.5 |
| 3 | 55 | 0 | 0.157 | 21.2 | 20.0 | 52.0 | 84.2 |
| **tot** | **145** | **0** | — | — | — | — | — |

- **Burst assorbiti senza errori** (0/145): CPU 0%→86-106%, HPA scala 1→2 in ~27s (`SuccessfulRescale`).
- **Contrasto con Test B**: 12 utenti *sostenuti* → errori fino a 35%; burst da 12 utenti per 60s → 0 errori. La fase low drena la coda prima del timeout → **è il carico sostenuto, non il picco, a saturare**.
- **Scale-in non osservabile**: stabilizzazione HPA 300s > fase low 120s (limite del protocollo).
- p99 run_2 = 156s = coda massima sotto burst (completata, nessun timeout).

---
## 9. R4 — Costo 6 mesi — `tables/r4_cost_6mo.csv` + `r4_comparison.csv`

| Soluzione | 6 mesi |
|---|---|
| **K8s/EC2 (questo progetto)** — 1 master + 2 worker, HPA 1-2 pod, 40GB gp3 | **$513.43** |
| Singolo t3.xlarge (no autoscaling) — stessa capacità, niente elasticità | $748.53 |
| AWS Lambda (stessa app AI, 2GB, 40s/inv, 2.84M inv/6mo) | $3,787.24 |

- **Lambda ~7× più cara**: workload AI long-running CPU-bound non si adatta a invo-
  cation brevi; si pagano i millisecondi di CPU per secondi di decode.
- K8s batte anche il singolo t3.xlarge perché l'HPA spegne il 2° worker in idle.
- Item: master $106.86 + 2 worker $406.57 + loadgen (solo test) $67.41.

---
## 10. Limiti e note di metodo (DA DICHIARARE nel report)

1. **No warm-up in Test B/varianti**: i dati includono cold-start pod + ramp →
   p95/latenze peggiori di uno steady pulito. Test A ha warm-up+drain (elasticità pulita).
2. **Test C large**: N insufficiente (10 req) — protocollo di run (2 min, 20 utenti)
   più corto del tempo di servizio (~90-120s). Non confrontabile.
3. **Test D**: scale-in non osservabile (finestra stabilizzazione HPA 300s > 120s low);
   plot 7 mediato su N=3 (scale-out visibile in run_1, appiattito dalla media).
4. **Error rate alti ai livelli alti** = saturazione reale (503/504/502), da riportare.
5. **Sessions AWS**: regioni variate (us-east-1/us-west-2); credenziali temporanee per sessione.
6. **Mix workload random per richiesta** → Test A/B aggregati per mix, non splittabili per size.
7. **exp2 (baseline 2 pod)**: senza per-request timing (pre-timing capture) → delay solo per exp4/exp6.

---
## 11. Mappa sezioni report → fonte

| Sezione report | Fonte |
|---|---|
| Intro + statement Option 3 K8s/EC2 | §1 sopra + `RESOCONTO.md` §1 |
| Environment / tooling | §2 sopra + `Plans/Block0.md` |
| Setup sperimentale | §3 sopra + `Plans/Block3.md` (formule) + `Block3-WORKSPLIT.md` |
| Risultati Test A | §4 + `plot1_elasticity.png` |
| Risultati Test B | §5 + `plot2/4` + `r3_summary.csv` |
| Varianti exp4/exp6 + bottleneck | §6 + `artifacts/variant_*.png` + `variant_summary.csv` |
| Risultati Test C | §7 + `plot5_size.png` + `testC_summary.csv` |
| Risultati Test D | §8 + `plot7_burst.png` + `testD_summary.csv` |
| R4 costo | §9 + `r4_cost_6mo.csv` + `r4_comparison.csv` |
| Sanity errori comuni | `tables/common_mistakes_report.md` |
| Limiti | §10 |
| Nomi membri + presentazione 15min | da definire con Persona A |

## Note finali
- Dati grezzi in `data/raw/` (git add -f), tabelle in `tables/`, plot in `plots/` e `artifacts/`.
- Commit chiave: `b98072e` (varianti), `de90711` (Test C @20), `f949cbd` (Test D), `7d7435c`+`d4abef4` (plot7 + analisi).
