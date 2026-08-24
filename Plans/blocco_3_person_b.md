# Blocco 3 — Persona B: analisi offline

Documento di **Persona B** del Blocco 3 (campagna sperimentale di performance e
scalabilità): descrive cosa fa B, il tooling pronto e il lavoro rimasto.

> ⚠️ **Stato attuale.** Le analisi sui dati `testA`/`testB` (risultati,
> bottleneck, sanity, conclusioni, R4) sono state **rimosse**: il collega ha
> raccolto **altri dati** e le analisi vanno **rifatte con quei dati** (vedi
> sezione 4). La struttura, il tooling e il runbook qui sotto restano validi.

Per il contesto completo (disegno sperimentale, metriche, formule) leggere
`Plans/Block3.md`; per lo split dei ruoli `Plans/Block3-WORKSPLIT.md`.

---

## 1. Contesto: cosa deve fare Persona B

1. **Pipeline offline**: leggere i dati grezzi, controllarli (sanity), calcolare
   le medie, produrre grafici e tabelle (R3).
2. **R4**: stima del costo operativo su 6 mesi e confronto con alternative
   (singolo EC2, AWS Lambda).
3. **Test C/D** (small/medium/large e burst): tooling pronto (exp-c/exp-d/
   loadgen-up), resta l'esecuzione in una sessione AWS (runbook in sezione 6).

Il collega ha raccolto **nuovi dati**: appena li rende disponibili nel repo, le
analisi della sezione 4 si rifanno con `just sanity` / `just plots-b` / `just
report` / `just r4`.

---

## 2. Dati per l'analisi

Layout atteso dei dati grezzi (da `Plans/Block3.md`), comune a tutte le run:

```
data/raw/<scenario>/run_<i>/
├── toppods.csv          # kubectl top pods (timestamp + millicores)
├── replicas.csv         # kubectl get deploy replicas (1 o 2 pod)
├── hpa.csv              # kubectl get hpa (cpu current/target)
├── events.csv           # eventi cluster (scale-out / scale-in)
├── locust_stats.csv     # metriche Locust (locust 2.46: questo file, non _requests)
├── locust_failures.csv  # errori Locust (503/504/502)
└── notes.md             # livello, parametri, run_start/end, interrupted
```

> **Regola da seguire**: fidarsi di `notes.md` per il mappaggio livello→run,
> non del numero di run.

I nuovi dati del collega andranno in questa stessa struttura; la pipeline
`infra/plots.py` li legge da lì.

---

## 3. Pipeline offline (tooling pronto)

```
just sanity   → verifica strutturale dei dati grezzi (0 errori = ok)
just plots-b  → dati grezzi → medie processate → grafici + tabella R3
just report   → controllo "errori comuni" (PDF) sulle analisi
just r4       → stima costo 6 mesi EC2 vs singolo EC2 vs Lambda
```

Strumenti: `infra/plots.py` (sanity + processazione + grafici + report),
`infra/r4_cost.py` (stima costi), scritti da Persona B e già nel repo.

> `plots/`, `tables/`, `data/processed/` sono **gitignored**: si rigenerano
> con `just plots-b` / `just report` / `just r4` quando servono. Questo
> documento `.md` sarà la fonte canonica dei risultati.

---

## 4. Analisi dei dati — DA RIFARE con i nuovi dati del collega

> Sezioni da ricompilare appena i nuovi dati sono disponibili. Per ora
> intenzionalmente vuote (le precedenti sono state rimosse perché basate su
> dati diversi).

- [ ] **4.1 Test A — elasticità** (scale-out 1→2, steady, scale-in 2→1; latenze
  di scala, errori).
- [ ] **4.2 Test B — curva carico–capacità** (tabella per livello: throughput,
  p50/p95, errori %, pod, CPU; dettaglio per run; punti chiave).
- [ ] **4.3 Localizzazione del collo di bottiglia** (offered vs received).
- [ ] **4.4 Costi su 6 mesi (R4)** — da rifare anche questa (usava i throughput
  dei vecchi dati): `just r4`.
- [ ] **4.5 Controlli di sanità / errori comuni** — `just sanity` + `just report`.
- [ ] **4.6 Problemi/limiti + decisioni di gruppo** (es. esclusione di outlier
  documentati).
- [ ] **4.7 Conclusioni** per il report finale.

---

## 5. Lavoro rimanente di Persona B

- **Tooling Test C/D pronto** ✅: `infra/exp-c.sh` (size-isolated, già costruito
  dal gruppo), `infra/exp-d.sh` (burst) + `burst_shape.py`, `infra/loadgen-up.sh`
  (nodo load-gen in AWS, quota-guarded +1/+2). Recipe `just exp-c` / `just exp-d`
  / `just loadgen-up` presenti.
- **Test C e Test D su AWS**: rimane l'esecuzione (runbook in sezione 6). Il
  Test C del gruppo usa `RUNS=20` per classe con `SCENARIO=testC_<size>`.
- **Design Test C (deciso 2026-08-24):** 1 livello **20 utenti**, `RUNS=10`,
  `STEADY_MIN=2` per ciascuna size (small/medium/large) **+ un run mix**
  (`SIZE=mix`, stessa griglia, scenario `testC_mix`) per il confronto
  isolato-vs-mischiato alla pari.
- **Stato dati (verificato 2026-08-24, sanitizzato da `just sanity`):** i dati
  testC esistenti (small 5/5, medium run_4 a 0 richieste + run_5 100%
  `RemoteDisconnected`, large inutilizzabile) sono tutti a **4 utenti** →
  **vanno rifatti tutti a 20** (`first_bad_run` considera il livello, quindi
  riparte da run_1 per ogni scenario). `testC_mix` e `testD` mai eseguiti.
- Attenzione alla **trappola `SIZE`**: la variabile è letta all'import di
  `locustfile.py` e il default è `mix` → `exp-c` imposta `SIZE=<classe>` a ogni
  run (mai mix), ma in qualsiasi uso manuale di `locustfile.py` va passata
  `SIZE=small|medium|large`, altrimenti si ottengono dati mix.
- Dopo ogni sessione: `git add -f` dei dati, `just cluster-down`, credenziali
  fresche alla sessione successiva.

---

## 6. Runbook sessione AWS (Test C/D)

1. **Credenziali** (ogni sessione sono temporanee): Start Lab → AWS Details →
   copia Access/Secret/Session Token → scarica **nuovo** `labsuser.pem` →
   `~/.ssh/labsuser.pem` + `chmod 400`. Poi:
   ```
   aws configure set aws_access_key_id <Access Key> --profile aws_academy
   aws configure set aws_secret_access_key <Secret> --profile aws_academy
   aws configure set aws_session_token <Session Token> --profile aws_academy
   aws configure set region <us-east-1|us-west-2> --profile aws_academy
   aws sts get-caller-identity      # deve stampare l'account del lab
   ```
2. **Regione**: il token è region-scoped (us-east-1 o us-west-2). Se non è
   us-east-1: `REGION=<r> AZ1=<r>a AZ2=<r>b just cluster-up` (persistita in
   `infra/.cluster-ips` per il teardown).
3. **vockey**: se `InvalidKeyPair.NotFound` →
   `ssh-keygen -y -f ~/.ssh/labsuser.pem | base64` e
   `aws ec2 import-key-pair --key-name vockey --public-key-material <base64> --region <REGION>`.
4. **Cluster**: `just cluster-up` → `kubectl apply -f deploy/` →
   `curl -s http://<MASTER_IP>:30080/health` = ok.
5. **Load-gen**: `just loadgen-up` (crea il nodo t3.micro + venv locust) e
   esporta la stringa stampata:
   `export LOADGEN=ec2-user@<LOADGEN_IP>`
6. **Test C**: `LOADGEN=$LOADGEN TARGET=http://<MASTER_IP>:30080 just exp-c`
   (RUNS=5, SIZES="small medium large", USERS=4). Resume parziale con
   `RUN_START=<pos>` (posizioni 1..15 nella griglia size×runs).
   - **In alternativa (consigliata, una sessione sola):** il driver
     `just day-run` fa cluster-up → deploy → loadgen-up → **Test C a 20 utenti
     (RUNS=10, STEADY_MIN=2) per small/medium/large + `testC_mix`** con pod
     llama riavviato tra una classe e l'altra (cura la degradazione dopo ~90
     min di carico, causa delle run a 0 richieste/RemoteDisconnected del
     rialzo a 4 utenti) → commit dati → `cluster-down`. Intervento manuale =
     solo credenziali + avvio. **Serve una sessione ~4h** (`SESSION_HOURS=4`,
     ~3.5h di lavoro): NON impostare 2. Il Test D è disattivato di default
     (`RUNS_D=0`) perché la campagna riempie la sessione.
   - **Usa `LEVELS=4`** (4 utenti): a 20 utenti il singolo pod si satura e le
     richieste medium/large restano in coda oltre il run-time → run a 0
     richieste. Il runbook originale del gruppo indicava USERS=4: è il
     regime giusto per confrontare le size senza saturare.
   - **Steady**: `STEADY_MIN=3` per small/medium, `STEADY_MIN=4` per large
     (una richiesta large = ~40-60s a ~6 tok/s; 2 min non bastano per
     completare nulla sotto coda). Se ne lanci più di una size con steady
     diversi, chiama `exp-b.sh` direttamente per size
     (`SIZE=<sz> SCENARIO=testC_<sz> FORCE=1 ...`).
   - **llama-server si degrada dopo ~90min di carico**: memoria al ~97% del
     limit, prompt eval 4x più lento (3.4 vs 14 tok/s), richieste in timeout,
     `RemoteDisconnected`. Se le latenze salgono o le run producono 0/errori
     inspiegabili → **riavvia il pod** tra una size e l'altra:
     `kubectl delete pod -l app=llm-proxy --grace-period=0` e attendi Ready.
   - **OOM fix** (già in `deploy/deployment.yaml`): limit memoria llama-server
     2Gi→3Gi (a 2Gi sotto 20 utenti va OOMKilled, exit 137, e inquina le run
     con 503/502). Verifica prima della sessione: `grep memory deploy/deployment.yaml`.
7. **Test D** (opzionale): `LOADGEN=$LOADGEN TARGET=http://<MASTER_IP>:30080 just exp-d`
8. **Dati**: `git add -f data/raw/testC-* data/raw/testD ... && git commit`
9. **Teardown**: `just cluster-down` (termina tutto, rilascia EIP/SG). Fine
   sessione nel portale (il teardown va fatto PRIMA di chiudere: la revoca
   credenziali `voc-cancel-cred` arriva al termine della sessione e blocca
   anche le describe).

---

## 7. Cosa è stato fatto (riepilogo)

### Tooling Test C/D

| File | Scopo | Chi |
|---|---|---|
| `infra/exp-c.sh` | Test C size-isolated (`SCENARIO=testC_<size>`, `SIZE=<classe>` a ogni run, RUNS=20) | gruppo |
| `infra/exp-d.sh` | Test D: bursty, shape-driven, collector a 20 s | Persona B |
| `burst_shape.py` | `LoadTestShape` per il Test D (normale ↔ burst, CYCLES×) | Persona B |
| `infra/loadgen-up.sh` | Nodo locust t3.micro in AWS, quota-guarded +1/+2, riusa il SG. **Fix 2026-08-23**: AL2023 defaulta Python 3.9 → installa `python3.11` e crea il venv con quello (Locust 2.46 richiede ≥3.11; il pin 2.46.3 non installava su 3.9) | Persona B |
| `infra/plots.py`, `infra/r4_cost.py` | Pipeline offline B (sanity/plots-b/report/r4) | Persona B |
| `justfile` | recipe `exp-c`/`exp-d`/`loadgen-up` + `plots-b`/`sanity`/`report`/`r4` | B (+ exp-c del gruppo) |

Validato: sintassi OK, guard anti-ban testati (remote senza LOADGEN →
FATAL; localhost con LOADGEN → FATAL; SIZES invalida → FATAL), logica
`BurstShape` verificata sui confini temporali.

### Allineamento col main remoto (rebasing)

Il `main` locale era indietro rispetto a `origin/main` (il gruppo ha spinto la
campagna varianti exp2/exp4/exp6 + il suo `exp-c.sh`). Dopo un rebase andato in
conflitto, si è ripartiti da `origin/main` (`5afd9c9`) e si sono ri-applicati
**solo i file additivi** di Persona B (`plots.py`, `r4_cost.py`, `exp-d.sh`,
`loadgen-up.sh`, `burst_shape.py`, questo documento) + recipe just e righe di
`AGENTS.md`/`.gitignore`. Il vecchio `exp-c.sh` è stato scartato in favore di
quello del gruppo. Backup locale: branch `backup-b-53acf41`.

### Commit

Commit `985a5a4` su `main` (pushato): pipeline offline, tooling Test D/loadgen,
recipe just, doc di questa sezione. Nessun segreto committato.

### Da fare (in ordine)

1. **Ricevere i nuovi dati** dal collega (nella struttura `data/raw/<scenario>/`).
2. **Rifare le analisi** (sezione 4): `just sanity` → `just plots-b` → `just
   report` → `just r4`, poi riempire le sezioni 4.x e le conclusioni.
3. **Decisione di gruppo** su eventuali outlier (es. run con cluster "freddo"
   all'avvio) e **check visivo** dei PNG generati.
4. **Test C/D su AWS** (se non già fatti dal collega), sezione 6.
5. **Report finale + slide** (Block 4): tabelle e grafici delle sezioni 4.x +
   aggiornamento prezzi R4 con il listino corrente.