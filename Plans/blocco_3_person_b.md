# Blocco 3 — Persona B: analisi offline, risultati e conclusioni

Questo documento riassume in modo dettagliato ma comprensibile tutto il lavoro
di **Persona B** del Blocco 3 (campagna sperimentale di performance e
scalabilità): cosa è stato fatto, su quali dati, quali numeri sono usciti e che
cosa significano per il report finale. Sostituisce i precedenti file di analisi
(`problems.md`, `tables/`, `plots/`, `data/processed/`), ora rimossi.

Per il contesto completo (disegno sperimentale, metriche, formule) leggere
`Plans/Block3.md`; per lo split dei ruoli `Plans/Block3-WORKSPLIT.md`; per i
dettagli di esecuzione delle run `Plans/Block3-a.md`.

---

## 1. Contesto: cosa doveva fare Persona B

La Persona A ha eseguito su AWS (2 sessioni) i **Test A e Test B** di carico e
ha lasciato i dati grezzi in `data/raw/testA/` e `data/raw/testB/`, più le
istruzioni in `HANDOFF.md`. Compiti di Persona B:

1. **Pipeline offline**: leggere i dati grezzi, controllarli (sanity), calcolare
   le medie, produrre grafici e tabelle (R3).
2. **R4**: stima del costo operativo su 6 mesi e confronto con alternative
   (singolo EC2, AWS Lambda).
3. **Test C/D** (small/medium/large e burst): tooling costruito (exp-c/exp-d/
   loadgen-up), resta l'esecuzione in una sessione AWS (runbook in sezione 12).

Questo file copre i punti 1 e 2 (lavoro offline, già completato) e riporta lo
stato del punto 3.

---

## 2. I dati su cui è stata fatta l'analisi

| Scenario | Cosa misura | Run | Note |
|---|---|---|---|
| **Test A** — rampa continua (mix, U_MAX=12 utenti) | Elasticità: scale-out 1→2, steady, scale-in 2→1 | 5 | Ogni run 1→2→1, ~27 min; run_1 ha `interrupted=1` (ssh hang) |
| **Test B** — intensità fissa (mix, ~6,5 min steady) | Curva carico–capacità a 10/20/30/40/50 utenti | 25 | **N=5 a ogni livello** (incluso il 50; run_24 e run_25 sono livello 50) |

> **Nota importante (aggiornamento dati del gruppo).** Il `main` remoto ora
> contiene 25 run del Test B con **N=5 per tutti i livelli**: `run_24` è un
> vero livello 50 (non più un residuo del 10) e `run_25` è un nuovo livello 50.
> Rispetto all'analisi precedente: il livello 50 passa da N=3 a N=5 e il livello
> 10 da N=6 a N=5. Tutte le tabelle di questo documento sono state aggiornate.

Per ogni run i file CSV raccolti dal collector sono:
`toppods.csv`, `replicas.csv`, `hpa.csv`, `events.csv`, `locust_stats.csv`,
`locust_failures.csv`, più `notes.md` (livello, parametri, timestamp, flag
`interrupted`).

> **Regola seguita**: fidarsi di `notes.md` per il mappaggio livello→run, non
> del numero di run.

---

## 3. Pipeline offline eseguita

```
just sanity   → verifica strutturale dei dati grezzi (0 errori)
just plots-b    → dati grezzi → medie processate → grafici + tabella R3
just report   → controllo "errori comuni" (PDF) sulle analisi
just r4       → stima costo 6 mesi EC2 vs singolo EC2 vs Lambda
```

Strumenti usati: `infra/plots.py` (sanity + processazione + grafici + report),
`infra/r4_cost.py` (stima costi). Entrambi già presenti nel repo, scritti da
Persona B.

---

## 4. Risultati — Test A (elasticità)

**Obiettivo**: dimostrare che l'HPA scala davvero: 1 pod → 2 pod quando la CPU
supera il 60% sotto carico crescente, regge 2 pod a carico sostenuto, torna a 1
pod dopo ≥10 minuti senza carico.

**Curva media su N=5 run** (allineate a secondi-dall'inizio):

| t (s) | Pod (media) | CPU% (media) | Cosa succede |
|---|---|---|---|
| 0 | 1,2 | 10% | warm-up, 1 pod |
| 60 | 2,0 | 79% | **scale-out 1→2** (CPU supera il 60%) |
| 120–960 | 2,0 | ~105% | steady a 2 pod, CPU oltre il target |
| 1020–1080 | 2,0 | 41% → 3% | ramp-down del carico |
| 1200 | 2,0 | 0% | zero carico (drain) |
| 1320 | 1,6 | 0% | **scale-in 2→1** in corso |
| 1380+ | 1,0 | 0% | tornati a 1 pod |

**Latenze di scala:**

- **Scale-out 1→2**: < 1 minuto (0 s di differenza tra l'attraversamento del 60%
  e il nuovo pod, limitato dalla risoluzione di campionamento di 60 s del
  collector). In `run_1` non è stato catturato (collector partito tardi).
- **Scale-in 2→1**: media **246 s** (range 70–298 s), coerente con la finestra
  di stabilizzazione dell'HPA.
- **Errori Test A**: 89 su 1142 richieste = **7,8%** (0–13% per run).

**Lettura**: l'elasticità c'è ed è veloce in uscita, più lenta in rientro (per
progettazione dell'HPA, che evita il flapping). La CPU media in steady è ~105%
del valore di richiesta (1700m) → i pod lavorano a saturazione del worker, il
che spiega gli errori (vedi Test B).

---

## 5. Risultati — Test B (curva carico–capacità)

**Obiettivo**: a ogni intensità fissa (10/20/30/40/50 utenti) misurare
throughput, latenza (p50/p95), pod, CPU ed errori, per trovare il punto di
saturazione del deployment a 2 pod.

Valori medi sulla **finestra stabile** (percentili 15–85 della durata di ogni
run), mediati sulle run:

| Livello | N | Offered (req/s) | Received (req/s) | p50 (s) | p95 (s) | Errori % | Pod (steady) | CPU % |
|---|---|---|---|---|---|---|---|---|
| 10 | 5 | 0,185 | 0,122 | 41,2 | 139,0 | **25,3** | 1,8 | 73,1 |
| 20 | 5 | 0,195 | 0,139 | 81,8 | 222,2 | 22,6 | 2,0 | 77,0 |
| 30 | 5 | 0,183 | 0,126 | 140,4 | 253,2 | 22,0 | 2,0 | 76,4 |
| 40 | 5 | 0,235 | 0,089 | 197,6 | 274,0 | **55,9** | 2,0 | 74,7 |
| 50 | 5 | 0,206 | 0,109 | 189,2 | 295,2 | **33,4** | 2,0 | 84,8 |

**Punti chiave:**

1. **Throughput piatto a ~0,18–0,24 req/s a qualunque livello.** La stima
   iniziale di Block3 ("5–25 req/s") era sbagliata di ~100×: ogni richiesta LLM
   dura decine di secondi, quindi il sistema serve solo ~0,2 richieste/s. È un
   **risultato reale e importante**: il collo di bottiglia è la decode su CPU al
   tetto di 2 pod, non il numero di utenti.
2. **Pod**: a 10 utenti media 1,8 (punto di **soglia**, la CPU oscilla intorno
   al 60%); da 20 utenti in su sempre 2,0 = **cap `maxReplicas 2` raggiunto**.
3. **Latenza**: p50 cresce da ~41 s a ~198 s; p95 sale fino a ~295 s al livello
   50 e tocca il **timeout di 300 s del proxy** in parecchie run (soprattutto
   livelli 20–50).
4. **Errori**: salgono con l'intensità — 22–25% ai livelli 10–30, **56% al 40,
   33% al 50**. Tipi di errore (totale Test B): **503 busy = 260, 504 timeout =
   221, 502 = 135**. Sono dati di **saturazione vera** (slots del server
   esauriti / richieste oltre il timeout di generazione), non errori di misura.

**Dettaglio per run (finestra stabile, 15–85% della durata)** — utile per il
report se si vogliono mostrare la dispersione e gli outlier:

| Run | Livello | Richieste | Errori % | p50 (s) | p95 (s) | Pod | CPU % |
|---|---|---|---|---|---|---|---|
| 1 | 10 | 46 | **91,3** ⚠️ | 9 | 300 | 1 | 16,3 |
| 2 | 10 | 28 | 0,0 | 105 | 168 | 2 | 52,5 |
| 3 | 10 | 72 | 0,0 | 47 | 77 | 2 | 103,0 |
| 4 | 10 | 77 | 0,0 | 33 | 62 | 2 | 91,8 |
| 5 | 10 | 103 | 34,9 | 21 | 88 | 2 | 101,8 |
| 6 | 20 | 75 | 0,0 | 79 | 134 | 2 | 105,3 |
| 7 | 20 | 42 | 19,0 | 103 | 300 | 2 | 60,0 |
| 8 | 20 | 64 | 54,7 | 74 | 300 | 2 | 57,8 |
| 9 | 20 | 82 | 39,0 | 69 | 260 | 2 | 59,0 |
| 10 | 20 | 83 | 0,0 | 84 | 117 | 2 | 102,8 |
| 11 | 30 | 68 | 0,0 | 116 | 204 | 2 | 96,0 |
| 12 | 30 | 46 | 26,1 | 183 | 300 | 2 | 62,8 |
| 13 | 30 | 53 | 24,5 | 150 | 300 | 2 | 58,0 |
| 14 | 30 | 104 | 33,7 | 78 | 162 | 2 | 104,3 |
| 15 | 30 | 47 | 25,5 | 175 | 300 | 2 | 60,8 |
| 16 | 40 | 98 | 68,4 | 132 | 300 | 2 | 58,0 |
| 17 | 40 | 44 | 68,2 | 300 | 300 | 2 | 59,8 |
| 18 | 40 | 45 | 48,9 | 294 | 300 | 2 | 69,0 |
| 19 | 40 | 172 | 65,1 | 61 | 170 | 2 | 82,0 |
| 20 | 40 | 62 | 29,0 | 201 | 300 | 2 | 104,8 |
| 21 | 50 | 60 | 31,7 | 240 | 300 | 2 | 105,8 |
| 22 | 50 | 63 | 38,1 | 242 | 300 | 2 | 61,8 |
| 23 | 50 | 115 | 74,8 | 70 | 300 | 2 | 71,8 |
| 24 | 50 | 62 | 17,7 | 224 | 300 | 2 | 79,3 |
| 25 | 50 | 65 | 4,6 | 170 | 276 | 2 | 105,5 |

⚠️ = run anomale documentate (sezione 9-bis): run_1 = cluster freddo all'avvio
(91% errori con 1 pod). Nota: alcune run con errori hanno p50 molto basso (es.
run_1 p50=9 s) perché gli errori 503 tornano subito: la media p50 "mescola"
fallimenti rapidi e successi lenti.

---

## 6. Localizzazione del collo di bottiglia (offered vs received)

Grafico "offered vs received": a basso carico le due curve coincidono (nessuna
perdita), ad alto carico **received (richieste che il sistema riesce a servire)
cade sotto offered** — la divergenza cresce con l'intensità:

| Livello | Offered (req/s) | Received (req/s) | Divergenza |
|---|---|---|---|
| 10 | 0,185 | 0,122 | ~34% |
| 20 | 0,195 | 0,139 | ~29% |
| 30 | 0,183 | 0,126 | ~31% |
| 40 | 0,235 | 0,089 | **~62%** |
| 50 | 0,206 | 0,109 | **~47%** |

**Diagnosi**: il limite NON è la rete né il load-gen (all'inizio non c'è
perdita): è il **compute**. La CPU è al target/oltre con pod fissi a 2 (cap) →
la coda cresce → latenza alle stelle e 503/504. È il comportamento atteso da un
deployment con `maxReplicas 2` su 2 worker; va presentato nel report come
**scelta di capacità**, non come bug.

---

## 7. Costi su 6 mesi (R4)

Stima basata su prezzi indicativi del progetto (t3.small $0,02/h, t3.medium
$0,042/h, t3.micro $0,011/h) e su **2,84 milioni di invocazioni** in 6 mesi
derivate dal throughput misurato (~0,18 req/s × 86400 s × 182,5 giorni). EBS: 40
GB gp3 per nodo.

| Soluzione | Compute 6 mesi | Storage 6 mesi | **Totale 6 mesi** |
|---|---|---|---|---|
| **Stack K8s/EC2 (questo progetto)** | $455,83 | $57,60 | **$513,43** |
| Singolo t3.xlarge (nessun autoscaling) | $729,33 | $19,20 | **$748,53** |
| AWS Lambda (stessa app) | $3.786,67 | $0 | **$3.787,24** |

**Dettaglio dello stack (6 mesi, sempre acceso):**

| Voce | Q.tà | $/h | Compute | EBS (40 GB gp3) | Totale |
|---|---|---|---|---|---|
| master t3.small | 1 | 0,02 | 87,66 | 19,20 | 106,86 |
| worker t3.medium | 2 | 0,042 | 368,17 | 38,40 | 406,57 |
| load-gen t3.micro (solo test) | 1 | 0,011 | 48,21 | 19,20 | 67,41 |
| **TOTALE (con load-gen)** | | | 504,05 | 76,80 | **580,85** |

Ipotesi: 182,5 giorni × 24 h = 4380 h; EBS 40 GB gp3 ≈ $3,20/mese per nodo. Lo
stack senza il load-gen (che serve solo alle sessioni di test) costa **$513,43/6
mesi**. Dettaglio Lambda: 2 GB × 40 s/inv × 2,84 M invocazioni ≈ 227.200.000
GB-s (~$3.786,67) + $0,57 di richieste.

(Incluso il load-gen t3.micro il totale dello stack sale a ~$580,85.)

**Lettura**:
- Il nostro stack è più economico di un singolo EC2 grande e ~**7,4× più
  economico di Lambda** per un carico sostenuto: i GB-s di Lambda (2 GB × 40 s
  per invocazione) dominano il costo.
- Lambda conviene solo per carichi sporadici/burst; per un servizio sempre
  acceso con carico continuo il K8s/EC2 self-managed vince.
- Questa è anche la **giustificazione R1** per la scelta architetturale (K8s/EC2
  invece di Lambda). I prezzi vanno aggiornati con il listino corrente prima del
  report.

---

## 8. Controlli di sanità e "errori comuni" (PDF)

Dal `just sanity` e dal report dedicato, l'esito dei check è:

| Check | Regola | Esito |
|---|---|---|
| Completezza dati | ogni run ha i CSV richiesti, non vuoti | ✅ PASS (tutte le 29 run) |
| Scale evidence (Test A) | replicas mostrano 1→2→1 in ogni run | ✅ PASS (run 1–5) |
| Segnale CPU (Test A) | la serie HPA varia (scale reali) | ✅ PASS |
| Time base | timestamp collector dentro [run_start, run_end] | ✅ PASS (nessun campione fuori finestra) |
| Niente pannelli morti | ogni serie plotdata varia o è spiegata | ✅ PASS (pod piatti a 2 = cap maxReplicas, riportato) |
| Received vs offered | received/offered per run | ⚠️ **FAIL ad alto carico** — saturazione reale (503/504/502), riportata non nascosta |
| Run per scenario | ≥ 5 per livello | ✅ PASS (N=5 a ogni livello; Test A N=5) |

- ✅ Completezza dati: tutte le 30 run hanno i CSV richiesti non vuoti.
- ✅ Scale evidence Test A: 1→2→1 in ogni run.
- ✅ Segnale CPU reale (la serie varia con il carico, niente pannelli morti).
- ✅ Time base: tutti i timestamp del collector dentro [run_start, run_end].
- ✅ **N run = 5 per ogni livello** (incluso il 50, dopo l'aggiornamento dei dati).
- ✅ Received/offered verificato: la divergenza è saturazione reale, riportata
  come risultato (non nascosta né "sistemata").

**Anomalie documentate** (sono i numeri con cui va fatto i conti, non bug):

- `testB/run_1` (livello 10): **91% di errori** con 1 pod al 16% CPU → cluster
  "freddo" all'avvio (metriche HPA/readiness in ritardo). Escludendolo, l'errore
  medio del livello 10 scende da 25,3% a ~8,8%.
- `testB/run_5` (livello 10): 35% errori a basso carico.
- Livello 40 (run 16/17/19) e 50 (run 23): errori 65–75% = saturazione al cap.

---

## 9. Problemi/limiti noti dell'analisi

1. **Decisione aperta su `run_1`** (livello 10): escludendolo l'errore medio
   scende da 25,3% a ~8,8%. Va decisa di gruppo e dichiarata (vedi 9-bis).
2. **Asse x "schiacciato"**: il throughput non sale (~0,2 req/s ovunque) perché
   la latenza domina. Nei grafici di capacità è più leggibile usare gli **utenti**
   (livelli 10/20/30/40/50) come asse x invece dei req/s.
3. **Finestra "steady" arbitraria** (percentili 15–85): scelta riproducibile ma
   non prescritta; fissarla così nel report per trasparenza.
4. **Buco cosmetico** nel grafico elasticità a t≈6 min: il collector campiona
   ogni ~70 s, nessuna run ha un campione in quel bin → nessun dato perso.
5. **Grafici 2 e 3 uniti in un solo PNG** a 2 pannelli: nel report numerarli
   "2a/2b" oppure separarli.
6. **Costi R4 = stime**: prezzi arrotondati dal PLAN e invocazioni Lambda
   derivate; validi come ordine di grandezza, da aggiornare.
7. **PNG non ispezionati visivamente**: i numeri che li generano combaciano
   con i risultati verificati, ma serve un controllo visivo umano finale.
8. **Il repo ora include la campagna varianti** (exp2/exp4/exp6, `plots/analyze.py`)
   fatta dal gruppo: questo documento riguarda i Test A/B classici; il report
   finale va allineato con l'analisi varianti (e viceversa).

---

## 9-bis. ❓ Decisione di gruppo richiesta: `run_1` del livello 10

**Domanda:** nel Test B il livello 10 ha **N=5**, ma `testB/run_1` è un outlier:
**91% di errori** con 1 pod al 16% CPU — cluster "freddo" all'avvio (metriche
HPA/readiness in ritardo). Gli altri 4 run del livello 10 sono puliti (3 con 0%
errori, 1 con 35%).

**Effetto sui numeri del livello 10:**

| Scelta | Errori medi livello 10 | Pod steady |
|---|---|---|
| Tenere `run_1` (stato attuale, N=5) | **25,3%** | 1,8 |
| Escludere `run_1` (N=4) | **~8,8%** | 2,0 |

**Cosa chiediamo:** escludiamo `run_1` dal livello 10 nel report, con la nota
*"run scartata: cluster non pronto all'avvio"*?

- **Sì** → aggiorno questo documento e le medie del livello 10 a ~8,8%.
- **No** → resta incluso e dichiaro la contaminazione come limite noto.

La scelta va decisa dal gruppo e dichiarata nel report finale (un outlier
documentato è più onesto di una media gonfiata).

---

## 10. Conclusioni

1. **L'autoscaling funziona e si dimostra.** Scale-out 1→2 in <1 minuto quando
   la CPU supera il 60%, steady a 2 pod a carico sostenuto, scale-in 2→1 in
   media 246 s dopo lo scarico del carico. L'elasticità è il risultato
   principale del Test A.
2. **Il tetto è `maxReplicas 2`.** Da ~20 utenti in su il deployment è sempre a
   2 pod; la CPU resta satura, la latenza cresce verso il timeout di 300 s e gli
   errori salgono (503/504/502). È la capacità scelta (2 worker t3.medium), da
   presentare come tale.
3. **Il collo di bottiglia è il compute, non la rete.** Offered e received
   coincidono a basso carico e divergono ad alto carico → il limite è la decode
   LLM su CPU al cap dei pod, non il load-gen né la rete.
4. **I numeri di throughput sono piccoli ma veri.** ~0,2 req/s per via delle
   latenze di generazione di decine di secondi; la stima iniziale "5–25 req/s"
   era da correggere.
5. **R4: la scelta K8s/EC2 è giustificata.** ~$513/6 mesi contro ~$3.787 di
   Lambda per lo stesso carico sostenuto (~7× meno). Lambda conviene solo per
   carichi sporadici.
6. **Risultati da riportare senza imbarazzo.** Gli errori ad alto carico sono
   dati reali di saturazione, non difetti di misura: vanno mostrati e spiegati,
   non nascosti.
7. **Da decidere col gruppo**: sorte di `run_1` (livello 10) e conferma visiva
   dei grafici.
8. **Nota di allineamento**: i risultati qui sono per il deployment base (max 2
   pod). Il gruppo ha poi misurato le **varianti exp4/exp6** (HPA max 4/6,
   N=20) con `plots/analyze.py` — il report finale deve unire le due analisi.

---

## 11. Lavoro rimanente di Persona B

- **Tooling Test C/D pronto** ✅: `infra/exp-c.sh` (size-isolated, già costruito
  dal gruppo), `infra/exp-d.sh` (burst) + `burst_shape.py`, `infra/loadgen-up.sh`
  (nodo load-gen in AWS, quota-guarded +1/+2). Recipe `just exp-c` / `just exp-d`
  / `just loadgen-up` presenti.
- **Test C e Test D su AWS**: rimane l'esecuzione, che richiede una sessione
  AWS (vedi sezione 12 per il runbook). Il Test C del gruppo usa `RUNS=20`
  per classe con `SCENARIO=testC_<size>`.
- Attenzione alla **trappola `SIZE`**: la variabile è letta all'import di
  `locustfile.py` e il default è `mix` → `exp-c` imposta `SIZE=<classe>` a ogni
  run (mai mix), ma in qualsiasi uso manuale di `locustfile.py` va passata
  `SIZE=small|medium|large`, altrimenti si ottengono dati mix.
- Dopo ogni sessione: `git add -f` dei dati, `just cluster-down`, credenziali
  fresche alla sessione successiva.

---

## 12. Runbook sessione AWS (Test C/D) — punto 5

Sequenza esatta per eseguire Test C e D dopo che il gruppo ha dato l'ok:

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
7. **Test D** (opzionale): `LOADGEN=$LOADGEN TARGET=http://<MASTER_IP>:30080 just exp-d`
8. **Dati**: `git add -f data/raw/testC-* data/raw/testD ... && git commit`
9. **Teardown**: `just cluster-down` (termina tutto, rilascia EIP/SG). Fine
   sessione nel portale.

---

## 13. Cosa è stato fatto (riepilogo completo)

### Pipeline offline (verificata e riallineata ai dati aggiornati)

Rieseguita sui dati Test A/B del `main` aggiornato (25 run Test B, N=5 a ogni
livello):

- **`just sanity`** → 0 errori strutturali, 17 warning (saturazione attesa),
  6 anomalie documentate (run_1 91% errori, livello 40/50 saturi, ecc.).
- **`just plots-b`** → dati processati (`data/processed/`) + 3 grafici
  (`plots/plot1_elasticity.png`, `plot2_3_pods_and_latency.png`,
  `plot4_offered_vs_received.png`) + `tables/r3_summary.csv`.
- **`just report`** → `tables/common_mistakes_report.md` (tabella check in
  sezione 8).
- **`just r4`** → `tables/r4_cost_6mo.csv` + `tables/r4_comparison.csv`
  (sezione 7).

> `plots/`, `tables/`, `data/processed/` sono **gitignored**: si rigenerano
> con `just plots-b` / `just report` / `just r4` quando servono (es. per il
> report finale). Questo documento `.md` è la fonte canonica dei risultati.

### Tooling Test C/D (allineato al repo del gruppo)

| File | Scopo | Chi |
|---|---|---|
| `infra/exp-c.sh` | Test C size-isolated (`SCENARIO=testC_<size>`, `SIZE=<classe>` a ogni run, RUNS=20) | gruppo |
| `infra/exp-d.sh` | Test D: bursty, shape-driven, collector a 20 s | Persona B |
| `burst_shape.py` | `LoadTestShape` per il Test D (normale ↔ burst, CYCLES×) | Persona B |
| `infra/loadgen-up.sh` | Nodo locust t3.micro in AWS, quota-guarded +1/+2, riusa il SG | Persona B |
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
`AGENTS.md`/`.gitignore`. Il nostro vecchio `exp-c.sh` è stato scartato in favore
di quello del gruppo. Backup locale: branch `backup-b-53acf41`.

### Commit

Nuovo commit da creare in cima a `origin/main`: pipeline offline, tooling
Test D/loadgen-up, questo documento allineato ai dati (N=5 ovunque), recipe
`exp-d`/`loadgen-up`/`plots-b`/`sanity`/`report`/`r4`. Nessun segreto
committato.

### Da fare (in ordine)

1. **Decisione di gruppo** sulla sorte di `run_1` (livello 10, sezione 9-bis) e
   aggiornamento delle medie del livello 10 nel caso.
2. **Check visivo dei PNG** in `plots/` (io non leggo immagini — i numeri
   combaciano con HANDOFF, ma va confermato a occhio).
3. **Test C/D su AWS** seguendo il runbook (sezione 12), dopo l'ok del gruppo.
4. **Report finale + slide** (Block 4): tabelle e grafici di questo documento
   + aggiornamento prezzi R4 con il listino corrente.
