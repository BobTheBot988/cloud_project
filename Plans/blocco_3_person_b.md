# Blocco 3 — Persona B: Audit completo (25-08-2026)

Audit di tutto ciò che è stato fatto per il Blocco 3 lato Persona B, con stato
attuale, problemi e prossimi passi.

---

## 1. Riepilogo: cosa doveva fare Persona B

Da `Block3-WORKSPLIT.md`:

| Responsabilità | Stato |
|---|---|
| Pipeline offline (sanity, plots, report) | ✅ Fatto |
| R4 costo 6 mesi + confronto Lambda | ✅ Fatto |
| Tooling Test C (`exp-c.sh`, recipe) | ✅ Fatto (dal gruppo) |
| Tooling Test D (`exp-d.sh`, `burst_shape.py`) | ✅ Fatto |
| Tooling loadgen (`loadgen-up.sh`) | ✅ Fatto |
| Driver unattended (`day-run.sh`) | ✅ Fatto |
| **Esecuzione Test C su AWS** | ⚠️ Fatto ma con problemi di qualità dati |
| **Esecuzione Test D su AWS** | ❌ Non fatto |
| Analisi dati Test A/B (sezioni 4.x) | ❌ Da rifare (dati cambiati dal collega) |
| Sezioni report: Tool justification, environment, Test C/D, R4 | ❌ Non scritte |

---

## 2. Tooling costruito (tutto funzionante e committato)

### 2.1 File creati da Persona B

| File | Scopo | Commit |
|---|---|---|
| `infra/plots.py` (961 righe) | Pipeline offline completa: `sanity`, `process`, `plots`, `report` — genera plot 1-5, tabelle R3, report errori comuni | `985a5a4` + `14a3ee6` |
| `infra/r4_cost.py` (104 righe) | Stima costo 6 mesi EC2 vs singolo EC2 vs Lambda → `tables/r4_*.csv` | `985a5a4` |
| `infra/exp-d.sh` (133 righe) | Test D bursty: N run × burst_shape (normal↔burst × CYCLES), collector a 20s | `985a5a4` |
| `burst_shape.py` | `LoadTestShape` per Test D | `985a5a4` |
| `infra/loadgen-up.sh` | Nodo locust t3.micro in AWS (quota-guarded, fix python3.11 per AL2023) | `985a5a4` + fix `14a3ee6` |
| `infra/day-run.sh` (265 righe) | Driver one-shot AWS session: cluster-up→deploy→loadgen→Test C→commit→teardown, timer-safe, resume-safe | `14a3ee6` |

### 2.2 Just recipes aggiunte

```
just sanity       → verifica strutturale dati grezzi
just plots-b      → dati grezzi → medie → grafici + tabella R3
just report       → report errori comuni (tables/)
just r4           → stima costo 6 mesi (tables/)
just exp-c        → Test C size-isolated
just exp-d        → Test D bursty
just loadgen-up   → nodo load-gen in AWS
just day-run      → sessione one-shot completa
```

### 2.3 Validazione tooling

- Sintassi OK per tutti gli script
- Guard anti-ban testati (remote senza LOADGEN → FATAL; localhost con LOADGEN → FATAL)
- BurstShape verificata sui confini temporali
- Pipeline `plots.py` genera tutti gli output attesi

---

## 3. Output generato (presente in locale)

### 3.1 Grafici (`plots/`)

| File | Contenuto | Stato |
|---|---|---|
| `plot1_elasticity.png` | Replicas + CPU% vs tempo (Test A, N=5) — scale-out 1→2, scale-in 2→1 | ✅ Generato |
| `plot2_3_pods_and_latency.png` | Pods + p50/p95 vs offered load (Test B) | ✅ Generato |
| `plot4_offered_vs_received.png` | Offered vs received load (bottleneck, Test B) | ✅ Generato |
| `plot5_size.png` | Latency + delay breakdown + scaling per size class (Test C) | ✅ Generato |
| `plot7_burst.png` | Test D burst HPA reaction | ❌ Non generato (no dati Test D) |

### 3.2 Tabelle (`tables/`)

| File | Contenuto | Stato |
|---|---|---|
| `r3_summary.csv` | Tabella riassuntiva per scenario (throughput, p50, p95, error%, pods) | ✅ |
| `testC_summary.csv` | Dettaglio Test C per size class con delay breakdown | ✅ |
| `r4_cost_6mo.csv` | Line items costo 6 mesi EC2 | ✅ |
| `r4_comparison.csv` | Confronto K8s/EC2 vs t3.xlarge vs Lambda | ✅ |
| `common_mistakes_report.md` | Report errori comuni dal PDF | ✅ |

### 3.3 Risultati R4 (costo 6 mesi)

| Soluzione | Costo 6 mesi |
|---|---|
| **K8s/EC2 (questo progetto)** | $513.43 |
| Singolo t3.xlarge (no autoscaling) | $748.53 |
| AWS Lambda (stessa app AI) | $3,787.24 |

Lambda costa ~7× in più per un carico AI long-running (40s/invocazione, 2GB mem).
Il cluster K8s/EC2 è la scelta più economica per questo workload.

---

## 4. Test C — Dati raccolti: ⚠️ PROBLEMI DI QUALITÀ

Test C eseguito via `day-run.sh` in una sessione AWS il 24-08-2026.
Parametri: **20 utenti**, 10 run per size class, STEADY_MIN=2 min.

### 4.1 Stato per scenario

| Scenario | Run totali | Run con 0 richieste | Run utilizzabili | Richieste totali |
|---|---|---|---|---|
| `testC_small` | 10 | 3 (run_8=0, run_10=0, run_9=6) | ~7 | 498 |
| `testC_medium` | 10 | 2 (run_8=0, run_9=0) | 8 | 66 |
| `testC_large` | 10 | **8** (solo run_1=4, run_2=5 utili) | **2** | 10 |
| `testC_mix` | 10 | 0 | 10 | 121 |

### 4.2 Il problema

A **20 utenti** il sistema si satura pesantemente per medium e large:
- **large**: con 20 utenti e STEADY_MIN=2, una richiesta large dura ~87s e solo 2
  slot paralleli → la maggior parte delle run non completa nemmeno 1 richiesta
  nel tempo disponibile. **8 run su 10 a 0 richieste** = dati inutilizzabili.
- **medium**: 0.06 req/s medio, alcune run a 0 richieste.
- Il runbook del collega (`blocco_3_person_b.md` precedente) avvertiva esplicitamente:
  *"a 20 utenti il singolo pod si satura e le richieste medium/large restano in
  coda → run a 0 richieste. USERS=4 è il regime giusto."*

### 4.3 Analisi per size class (dati @20 utenti)

Numeri chiave da `tables/testC_summary.csv` + `requests_detail.csv` (solo 2xx):

| Size | N req | req/s | p50 (ms) | p95 (ms) | error % | delay total (s) | upstream (s) | orch (ms) |
|---|---|---|---|---|---|---|---|---|
| small | 497 | 0.46 | 24.8 | 51.0 | 1.2 | 25.3 | 25.3 | 11 |
| medium | 57 | 0.06 | 84.4 | 115.5 | 13.6 | 80.9 | 80.9 | 17 |
| large | 10 | 0.009 | 93.8 | 113.6 | 0.0 | 78.8 | 78.8 | 13 |
| mix | 121 | 0.105 | 88.0 | 114.0 | 0.0 | 84.2 | 84.2 | 17 |

**Small — unico regime sano.** Il pod regge 20 utenti: ~0.46 req/s (fino a 0.7
nelle run pulite), p50 ~25s, p95 ~51s, errori 1.2%. Orchestrator 11ms → il
costo è tutto di llama (upstream 25s), coerente col delay attribution delle
varianti. Caveat: 2 run a 0 richieste (run_8, run_10) e run_9 con 6 richieste
tutte fallite a ~107s → rumore da cold-start/pod non pronto, non dal carico.
Le run sane 2-6 danno il segnale pulito.

**Medium — degradato.** ~0.06 req/s, p50 ~84s, p95 ~115s, errori 13.6%.
Una richiesta medium dura ~80-115s e ci sono solo 2 slot (--parallel 2): a 20
utenti la coda cresce e il 13.6% supera il timeout proxy (300s). 2 run a 0
richieste. Il sistema è al limite ma produce dati utilizzabili.

**Mix — comportamento reale, e l'insight più forte.** 121 richieste, 0 errori,
~0.105 req/s, p50 ~88s. Splittando `requests_detail.csv` per size:

| Size nel mix | N | p50 (ms) | isolato (ms) |
|---|---|---|---|
| small | 59 | 88.0 | 24.8 |
| medium | 41 | 86.0 | 84.4 |
| large | 21 | 98.5 | 93.8 |

Nel mix **tutte le classi convergono a ~86-98s**: una richiesta small si mette
in coda dietro medium/large e passa da 25s a 88s (**~3.5× più lenta**). Questo è
esattamente ciò che il Test C isola: senza interferenza cross-size ogni classe
mostra il suo costo reale (small 25s, medium 84s). Il mix non ha errori perché
le richieste completano in coda entro il timeout, ma a latenza uniformemente alta.

**Large — ⚠️ problema dati, non (solo) di sistema.** 10 richieste totali su 10
run: solo 3 run utili (run_1=4, run_2=5, run_5=1), **7 run su 10 a 0 richieste**.
p50 ~94s, p95 ~114s, 0 errori ma su N=10. Causa: una richiesta large dura
~90-120s e con 2 slot + STEADY_MIN=2 min una run completa al massimo 4-5
richieste; con 20 utenti le richieste restano in coda e la run termina prima
che ne completi. **N=3 run / 10 richieste non è statisticamente valido** e non è
confrontabile con small/medium. Il limite non è la capacità (il pod la
processa), è il protocollo di run: finestra di osservazione più corta del tempo
di servizio. Servirebbe rifare a 4 utenti (come da runbook) o con steady più
lungo.

### 4.4 Decisione necessaria

> ⚠️ I dati Test C large sono statisticamente insufficienti (2 run su 10).

**Opzione A**: Usare i dati così come sono. Pro: non richiede altra sessione AWS.
Contro: large ha solo 2 data point (non statisticamente significativo), e la
conclusione è banale ("a 20 utenti large non completa nulla").

**Opzione B**: Rifare Test C a **4 utenti** (come il runbook suggeriva). Serve una
sessione AWS (~2-3h). I dati sarebbero confrontabili: stessa intensità, diverse
dimensioni richiesta.

**Opzione C**: Tenere i dati a 20 utenti per small/medium/mix, rifare SOLO large
a 4 utenti. Contro: le size class non sarebbero confrontabili (intensità diversa).

---

## 5. Test D — ✅ Eseguito (26-08-2026)

`data/raw/testD/run_1..3/`, sessione AWS us-east-1 (cluster nuovo, loadgen t3.micro).
Parametri: `LOW_USERS=2 HIGH_USERS=12 NORMAL_SECS=120 BURST_SECS=60 CYCLES=2 RUNS=3`,
collector a 20s.

| Run | Richieste | Errori | req/s | avg (ms) | med (ms) | p95 (ms) |
|---|---|---|---|---|---|---|
| run_1 | 42 | 0 | 0.12 | 28799 | 47000 | 69000 |
| run_2 | 48 | 0 | 0.14 | 26042 | 35000 | 156000 |
| run_3 | 55 | 0 | 0.16 | 21216 | 32000 | 55000 |
| **Totale** | **145** | **0** | — | — | — | — |

**Reazione HPA (run_1, `hpa.csv` + `events.csv`):**
- partenza 1 pod, CPU 0% → primo burst: CPU **86% → 106%**, `SuccessfulRescale` → **New size: 2** (~27s dal via).
- tra i burst la CPU scende a **49-53%** ma l'HPA tiene 2 pod: la **finestra di stabilizzazione dello scale-in (300s)** è più lunga della fase low (120s) → **scale-in non osservabile** nel tempo di run. Da dichiarare nel report come limite del protocollo, non del sistema.
- latenza più alta durante i burst (p95 55-156s), coerente con la coda su 2 slot.

Test D produce il **plot 7** (burst HPA reaction). Dati validi e committati.

---

## 6. Analisi dati Test A/B — ❌ Da rifare

Le sezioni 4.1-4.7 del precedente documento erano state svuotate perché basate
su dati diversi. I grafici (plot 1-4) sono stati **rigenerati** con `just plots-b`
e i risultati sono nei file `tables/` e nel `common_mistakes_report.md`, ma le
**sezioni narrative** (interpretazione, conclusioni) per il report non sono state
scritte.

---

## 7. Stato rispetto alla checklist Block 3

### Verify criteria (da `Block3.md` e `Block3-WORKSPLIT.md`)

| Criterio | Responsabile | Stato |
|---|---|---|
| Plot 1: scale-out 1→2 + scale-in 2→1 | A (generato da pipeline B) | ✅ |
| Plot 2-4: pods/p50-p95/throughput vs intensity | A (generato da pipeline B) | ✅ |
| Plot 5: small vs medium vs large | **B** | ⚠️ (generato, ma dati large scarsi) |
| Plot 7: burst | **B** | ✅ (Test D fatto 26-08, 3 run) |
| R4: costo 6 mesi + Lambda | **B** | ✅ |
| Sanity pass (errori comuni) | **B** | ✅ |
| Bottleneck localizzato | **A** (pipeline B) | ✅ (plot 4 + delay breakdown) |
| Error rate/availability | Condiviso | ✅ (nelle tabelle) |
| Tutte le figure con tabelle (R3) | Condiviso | ✅ |
| Account pulito dopo sessione | **B** | ✅ (`day-run.sh` fa teardown) |
| Report breve (design + risultati + nomi) | Condiviso | ❌ Non scritto |
| Statement "Option 3 su K8s/EC2" | Condiviso | ❌ Non scritto |
| Presentazione 15 min | Condiviso | ❌ Non fatta |

---

## 8. Prossimi passi (in ordine di priorità)

### 8.1 Decisione immediata: qualità dati Test C

Decidere se i dati Test C a 20 utenti sono sufficienti o se rifare (vedi §4.3).
- Se si accettano → procedere con l'analisi (large avrà solo 2 datapoint).
- Se si rifanno → servono credenziali AWS + 1 sessione (~2-3h a 4 utenti).

### 8.2 Test D — ✅ Fatto (26-08-2026)

3 run completate, 0 errori, dati in `data/raw/testD/`. Generare il plot 7 con
`just plots-b` e includerlo nel report. Nota: scale-in non osservabile (finestra
stabilizzazione 300s vs fase low 120s) — dichiararlo nel report.

### 8.3 Scrivere le sezioni del report (Block 4)

Le sezioni di competenza di B:
1. **Tool justification** — perché Locust (già nel repo, Python, headless, CSV output)
2. **Environment** — descrizione infra (cluster, loadgen, metriche)
3. **Risultati Test C** — interpretazione tabella `testC_summary.csv`:
   - Small: ~0.46 req/s, p50 38s, p95 46s, 1.2% errori, orchestrator 12ms
   - Medium: ~0.06 req/s, p50 87s, p95 109s, 13.6% errori
   - Large: ~0.009 req/s, p50 92s, p95 107s, 0% errori (ma solo 10 richieste totali)
   - Conclusione: più grande il prompt → più lento, meno throughput, stessa CPU
4. **Risultati Test D** — se eseguito
5. **R4** — tabella confronto con commento
6. **Common-mistakes sanity** — report già generato, da sintetizzare

### 8.4 Merge report + slide (congiunto con A)

- Unire sezioni A + B in un unico report
- Aggiungere statement "Option 3 su K8s/EC2 (non Lambda)"
- Nomi dei membri del gruppo
- Preparare la presentazione 15 min

### 8.5 Aggiornare PLAN.md e RESOCONTO.md

Lo stato in `PLAN.md` e `RESOCONTO.md` va aggiornato con lo stato effettivo
del Test C + pipeline.

---

## 9. Commit di Persona B (cronologia)

| Commit | Data | Contenuto |
|---|---|---|
| `985a5a4` | 23-08 | Pipeline offline + tooling Test D/loadgen (rebased su varianti) |
| `28d0e00` | 24-08 | Strip analisi stale da questo documento |
| `2e9762a` | 24-08 | Test C @4 utenti (small+medium ok, large interrupted); fix llama 3Gi + python3.11 |
| `128f2f8` | 24-08 | Runbook lessons (4 utenti, restart pod, 3Gi OOM fix) |
| `de90711` | 24-08 | **Test C @20 utenti** (small/medium/large/mix, day-run session) |
| `14a3ee6` | 24-08 | Block 3 (day-run.sh, plots.py ampliato, loadgen-up fix, recipe just) |