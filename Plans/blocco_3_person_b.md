# Blocco 3 — Persona B: Test C completo su 6 pod fissi (2026-08-31)

**Stato: Test C COMPLETO e VALIDO.** Tutti e 4 gli scenari (small/medium/large/mix)
eseguiti con 6 pod fissi, 20 utenti, **0 errori su 5.227 richieste**. Questo
documento riporta le azioni specifiche eseguite e i risultati.

---

## 1. Percorso: dal reset al Test C pulito

Il 31-08-2026 l'intero lavoro Test C Persona B è stato eliminato
(`git reset --hard origin/main` + commit `f6728aa`). Poi, in ordine:

1. **Config pulita `origin/main`** ripristinata sul cluster (probe `/health`,
   `--parallel 2`, hpa-exp6 cpu-only). **Scoperta chiave**: l'immagine GHCR
   `ghcr.io/bobthebot988/llm-proxy:latest` è un build del **22-08** SENZA
   `/ready` (aggiunto il 29-08 ma mai ripushato) → le probe `/health` di
   origin/main sono le UNICHE compatibili (i pod su nodi con immagine stantia
   altrimenti restano 404 e mai Ready).
2. **6 pod fissi**: nuovo `infra/testc-6pod.sh up` → applica hpa-exp6 e lo pinna
   `min=max=6`, scala il deployment a 6, attende 6/6 Ready. HPA resta "attivo"
   (giustifica il report come capacity test, non manual scale).
3. **Scoperta del collo di bottiglia reale**: NON era la CPU, erano gli **slot
   paralleli** (2 per pod). 6 pod × `--parallel 2` = **12 slot** → a 20 utenti le
   richieste medium/large non restano più in coda per sempre.
4. **Scoperta 2 — memory leak di llama-server**: la memoria del processo cresce
   col carico sostenuto (~210Mi → **~2.85Gi su 3Gi** in ~45 min) e oltre soglia
   il server degrada → probe in timeout → richieste bloccate → **run a 0
   richieste** (medium run 7-10 nel primo tentativo). Non è AWS: pod Running 0
   restart, nessun errore di rete; è il runtime llama.cpp.
5. **Verificato: llama.cpp non espone alcun comando di reset sessione** nel build
   installato (10380): `/slots/{id}/action` e `/cache/clear` → **404**, niente
   `/docs`. Il `flush` dei nuovi build non esiste qui → **il restart del pod è
   l'unica contromisura** (processo nuovo = memoria a baseline).
6. **Fix protocollo**: `infra/restart-pods.sh` (delete pod + rollout) come
   `RESTART_EVERY=5` → dopo la run 5 la memoria torna a ~210Mi e le run 6-10
   tornano sane. In più `DRAIN_SECS=90` tra le run (la coda satura si smaltisce
   prima della run successiva).
7. **Fix operativo**: il venv locust sul loadgen era in `/tmp/exp` → **azzerato a
   ogni reboot di sessione** (`locust: command not found`). Spostato in
   `~/exp` (persistente sul volume root) in exp-a/b/d.sh + loadgen-up.sh.

### Modifiche al repo

| File | Cosa |
|---|---|
| `infra/testc-6pod.sh` (nuovo) | Pin 6 pod fissi (`up`) / ripristino autoscaling (`down`) |
| `infra/restart-pods.sh` (nuovo) | Restart pod + rollout (hook di exp-b.sh) |
| `infra/exp-b.sh` | `RUN_TAG` (notes.md), `DRAIN_SECS`, `RESTART_EVERY`/`RESTART_HOOK`; venv `~/exp` |
| `infra/day-run.sh` | Passthrough `RUN_TAG_C`, `DRAIN_SECS_C`, `RESTART_EVERY_C`/`RESTART_HOOK_C` |
| `infra/exp-a.sh`, `infra/exp-d.sh`, `infra/loadgen-up.sh` | venv `~/exp` persistente |
| `justfile` | `testc-6pod-up` / `testc-6pod-down` |

### Protocollo finale Test C

```
20 utenti fissi (LEVELS=20), STEADY_MIN=3, 10 run per scenario,
DRAIN_SECS=90 (tra le run), RESTART_EVERY=5 (restart pod a run 5),
6 pod fissi (12 slot), cluster 6 worker (exp6), probe /health.
```

---

## 2. Risultati (tutte le run valide, 0 errori)

| Size | n_runs | richieste | errori | req/s | p50 (ms) | p95 (ms) | delay orch (ms) | CPU% steady |
|---|---|---|---|---|---|---|---|---|
| small | 10 | 2.793 | **0** | 1.56 | 7.410 | 15.700 | 8.9 | 78.6 |
| medium | 10 | 910 | **0** | 0.51 | 30.100 | 59.400 | 9.4 | 98.7 |
| large | 10 | 441 | **0** | 0.25 | 52.400 | 120.700 | 10.2 | 100.4 |
| mix | 10 | 1.083 | **0** | 0.61 | 25.200 | 65.200 | 9.5 | 98.2 |
| **Totale** | 40 | **5.227** | **0** | — | — | — | — | — |

- Nessuna run a 0 richieste (min 33/large, max 101/medium per run).
- p50 max 162s (un outlier large); il delay è quasi tutto upstream (orch 9-10ms).
- Mix = weighted pool 0.5/0.3/0.2 (small/medium/large) → conteggi osservati
  572/308/204, coerenti.

### Confronto con l'audit precedente (20 utenti, 2 slot, 1-2 pod)

| Metrica | Audit (2 slot) | Ora (12 slot, 6 pod) |
|---|---|---|
| large: run valide / richieste | 2/10 · 10 totali | **10/10 · 441** |
| small: richieste totali | 498 (2 run a 0) | **2.793** |
| errori small | 1.2% | **0%** |
| req/s small | 0.46 | **1.56** |
| p50 small | ~25s | **7.4s** |
| p95 small | ~51s | **15.7s** |

### Interferenza cross-size (mix vs isolato, p50)

| size | isolato | nel mix | degrado |
|---|---|---|---|
| small | 7.7s | 10.9s | **1.4×** |
| medium | 30.1s | 27.4s | 0.9× |
| large | 47.6s | 48.0s | 1.0× |

small nel mix si accoda dietro le large (+40%); con 2 slot l'audit misurava 3.5×.

### Lettura per il report

- Il collo di bottiglia è il **numero di slot** (--parallel per pod), non la CPU:
  più slot → più throughput e meno coda per le size pesanti.
- 20 utenti è un'intensità sostenibile con 12 slot: 0 errori in tutti gli scenari.
- **Limite di configurazione dichiarato**: 6 pod FISSI (HPA pinnato min=max=6) =
  capacity test, non autoscaling reattivo. Il comportamento HPA resta coperto da
  Test A/B/D e dalle varianti exp4/exp6.
- **Rischio operativo documentato**: memory leak llama-server (~2.9Gi/45min) →
  serve restart periodico (ogni ~5 run) o il servizio collassa. Da citare come
  limite della soluzione a pod singolo-vuoto.

---

## 3. Test D (invariato dal reset)

`data/raw/testD/run_1..3/` — eseguito 26-08-2026, cluster us-east-1 (loadgen
t3.micro). Parametri: `LOW_USERS=2 HIGH_USERS=12 NORMAL_SECS=120 BURST_SECS=60
CYCLES=2 RUNS=3`, collector a 20s. Dati **non toccati** dal reset (erano già su
origin/main); `exp-d.sh` è stato aggiornato solo per il venv persistente
(`~/exp`), nessun impatto sui dati.

| Run | Richieste | Errori | req/s | avg (ms) | med (ms) | p95 (ms) | p99 (ms) |
|---|---|---|---|---|---|---|---|
| run_1 | 42 | 0 | 0.117 | 28.8s | 22.0s | 56.0s | 69.0s |
| run_2 | 48 | 0 | 0.135 | 26.0s | 17.0s | 58.0s | 156.0s |
| run_3 | 55 | 0 | 0.157 | 21.2s | 20.0s | 52.0s | 63.0s |
| **Totale** | **145** | **0** | — | — | — | — | — |

**Reazione HPA (run_1, `hpa.csv` + `events.csv`):** partenza 1 pod, CPU 0% →
primo burst CPU 86%→106%, `SuccessfulRescale` → **New size: 2** (~27s dal via).
Lo **scale-in 2→1 non è osservabile**: la finestra di stabilizzazione HPA (300s)
è più lunga della fase low (120s) — da dichiarare come limite del protocollo,
non del sistema (l'evidenza di scale-in resta Test A).

**Insight chiave:** i burst vengono assorbiti senza errori (0 su 145 richieste)
mentre lo stesso carico *sostenuto* in Test B fallisce — il picco corto viene
smaltito dalla coda su 2 slot e drenato nella fase low prima del timeout proxy.

---

## 4. Output offline rigenerato (31-08-2026)

| File | Contenuto |
|---|---|
| `plots/plot5_size.png` | Latency by size (p50/p95), throughput, delay breakdown — rigenerato |
| `tables/testC_summary.csv` | Riga per size: req, err, req/s, p50/p95, pods, cpu%, delay |
| `tables/r3_summary.csv` | Tabella riassuntiva tutti gli scenari (testA/B/C/D) |
| `plots/plot1-4`, `plot7` | Test A/B/D — invariati, rigenerati |
| `data/processed/` | Medie per scenario |

Sanity: **0 errori** (i warning sono saturazione attesa di testB).

---

## 5. Stato checklist

| Criterio | Stato |
|---|---|
| Test C small | ✅ 10/10, 0 err |
| Test C medium | ✅ 10/10, 0 err |
| Test C large | ✅ 10/10, 0 err |
| Test C mix | ✅ 10/10, 0 err |
| Plot 5 + tabelle | ✅ rigenerati |
| Test D (invariato) | ✅ 3/3 run, 145 req, 0 err |
| R4 (invariato) | ✅ |
| Report (Block 4) | ✅ Test C aggiornato + PDF ricompilato (commit `a865847`) |
| Teardown cluster | ✅ EIP + SG rilasciate |

## 6. Prossimi passi

1. (Opzionale) Push dei commit locali (`origin` è a 9 commit indietro).
2. Se si rifà una campagna: riusare `testc-6pod-up` + day-run con
   `RESTART_EVERY_C=5`.
