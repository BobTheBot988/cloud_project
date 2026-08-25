# problems.md — Problemi/limitazioni dell'analisi offline Block 3 (Persona B)

Spiegazione dei problemi trovati durante la verifica dei dati e la generazione dei
grafici 1–4 + R4, pensata per essere condivisa con i colleghi. Per ogni problema:
**cosa succede / perché / cosa significa / opzioni**.


---

## Problema 2 — Asse x dei grafici "schiacciato" (0.18–0.24 req/s ovunque)

**Cosa succede**: a qualunque livello (10→50 utenti) il throughput misurato è ~0.2
req/s, quindi i punti dei grafici 2/3/4 sono quasi sovrapposti.

**Perché**: ogni richiesta LLM impiega **decine di secondi** (p50 39 s a 10 utenti,
198 s a 40 utenti). Anche con 50 utenti ognuno resta in coda ~3 minuti, quindi il
sistema processa solo ~0.2 richieste/secondo. La stima iniziale "5–25 req/s" di
Block3 era errata: è ~100× più bassa perché la latenza domina.

**Cosa significa**: è un **risultato vero e importante** — il throughput non sale con
gli utenti perché il collo di bottiglia è la CPU al massimo di 2 pod, non il numero
di utenti. Visivamente però le curve "capacità" non si vedono bene.

**Opzioni**:
- (a) usare **utenti** (livelli 10/20/30/40/50) come asse x invece di req/s —
  più leggibile e fedele al disegno sperimentale;
- (b) tenere req/s e spiegare che la costanza è proprio il risultato di saturazione.

---

## Problema 3 — L'outlier `run_1` (livello 10) gonfia la media

**Cosa succede**: `testB/run_1` ha il **91% di errori** con 1 solo pod al 16% di CPU.
Senza di esso la media errori del livello 10 è **11.7%**, con esso è **25%** — quasi
il doppio.

**Perché**: a inizio campagna il cluster era "freddo": gli eventi (`events.csv`)
mostrano `FailedGetResourceMetric … pods might be unready` e la readiness probe che
rifiuta. Il carico è partito prima che il pod fosse pronto → tempesta di errori.

**Cosa significa**: il livello 10 nel report (tabella R3) riporta un errore medio che
forse non rappresenta il comportamento reale a 10 utenti.

**Opzioni**:
- (a) **escludere run_1** dal livello 10 con nota ("run scartata: cluster non pronto,
  91% errori") — più onesto statisticamente;
- (b) tenerlo e dichiararlo come outlier documentato (scelta di HANDOFF:
  "riporta, non sistemare").

---

## Problema 4 — `run_24` è un run "residuo" nel livello 10

**Cosa succede**: `testB/run_24` è un livello 10 rifatto nella seconda sessione (bug
di resume di `exp-b`), quindi il livello 10 ha **6 run invece di 5** (N=6).

**Perché**: HANDOFF già lo segnalava come "resume-retry bug". Non inquina il livello
50 (lì è escluso), ma fa parte dei dati del 10.

**Cosa significa**: il livello 10 ha errori medi 25% anche per via di questo run
(23.6% errori, p95 a 300 s). Tutti gli altri livelli hanno N=5.

**Opzioni**:
- (a) escluderlo → livello 10 torna N=5 pulito;
- (b) tenerlo e segnare "N=6 per via di run residuo".

La scelta è collegata al problema 3: se si scarta `run_1`, conviene scartare anche
`run_24` per uniformità.

---

## Problema 5 — Buco nel grafico 1 a t=6 min

**Cosa succede**: nel plot dell'elasticità la linea CPU ha un piccolo buco attorno al
minuto 6.

**Perché**: il collector campiona ogni ~70 s (60 s di sleep + ~10 s del comando
`kubectl`), mentre l'aggregazione usa finestre da 60 s. Nessuna delle 5 run ha un
campione nell'intervallo [340, 380] s → bin vuoto.

**Cosa significa**: nessun dato perso, solo un artefatto cosmetico di campionamento.
Non è un problema dei dati né del cluster.

**Opzione**: lasciarlo (visibile solo ingrandendo) o interpolarlo. Consiglio: lasciarlo,
è irrilevante.

---

## Problema 6 — La "steady window" è una scelta arbitraria (15%–85%)

**Cosa succede**: per il Test B ogni run (durata ~6.5 min) è stata ridotta alla sua
**finestra centrale 15–85%** prima di calcolare le medie.

**Perché**: il progetto prescrive di usare "solo la finestra stabile", ma non la
definisce quantitativamente. Escludendo il 15% iniziale (spawn utenti + warmup) e il
15% finale (teardown) si ottengono 4–5 campioni per run.

**Cosa significa**: è riproducibile (stessa regola per tutte le run) ma arbitraria.
Un'altra scelta (es. 10–90%) darebbe numeri leggermente diversi (qualche centinaio di
ms, error rate simile).

**Opzione**: fissarla nel report come "steady = percentili 15–85 della durata" così è
trasparente. Non serve cambiare.

---

## Problema 7 — Il costo R4 è una stima con assunzioni

**Cosa succede**: i prezzi EC2 sono **arrotondati** dal guide del PLAN (t3.small
$0.02/h, t3.medium $0.042/h) e il numero di invocazioni Lambda (2.84M/6 mesi) è
**derivato** dal throughput misurato (0.18 req/s × 86400 s × 182.5 giorni).

**Perché**: non c'è un listino AWS in tempo reale nel progetto e Lambda non è mai
stato misurato (è un confronto architetturale, non un esperimento).

**Cosa significa**: il confronto "EC2 $513 vs Lambda $3.787" è giusto *come ordine di
grandezza* (Lambda costa ~7× per carico sostenuto a causa dei GB-s), ma i valori
esatti cambiano col prezzo attuale.

**Opzioni**:
- (a) dichiarare le assunzioni nel report (obbligatorio);
- (b) sostituire i prezzi con quelli del momento (`T3_MEDIUM=… just r4`).

---

## Problema 8 — Evidenza di scala debole al livello 10

**Cosa succede**: a 10 utenti le run mostrano **1 pod** (run_1) e **2 pod** (run_2–5):
media 1.8. Da 20 utenti in su, sempre 2 pod.

**Perché**: a 10 utenti la CPU oscilla intorno al target 60% (52–103%), quindi a volte
l'HPA scala a 2, a volte no. HANDOFF diceva "2 pod steady a tutti i livelli ≥10" ma i
dati mostrano che **10 è il punto di soglia**, non di saturazione piena.

**Cosa significa**: la frase giusta per il report è "l'autoscaling scatta già intorno
ai 10 utenti; da 20 in su il deployment è sempre a 2 pod (cap maxReplicas)". Non è un
errore, è una precisione migliore della claim originale.

---

## Problema 9 — Tooling AWS mancante

**Cosa succede**: i recipe `loadgen-up`, `exp-c`, `exp-d` (Test C = small/medium/large,
il test principale di B) **non esistono ancora**. È stata fatta solo la parte offline.

**Perché**: richiedono la sessione AWS e sono la parte rimasta.

**Cosa significa**: finché non vengono costruiti, il Test C non si può eseguire. Quando
si esegue, attenzione alla trappola `SIZE` (a import-time, default `mix` → ogni run va
lanciata con `SIZE=small|medium|large`).

---

## Nota di metodo (da comunicare ai colleghi)

- I **PNG non sono stati ispezionati visivamente** (il modello non legge immagini): la
  validità è stata verificata sui **numeri che li generano**, e quei numeri
  **combaciano esattamente** con i risultati già verificati di HANDOFF (es. split
  errori 503=260, 502=135, 504=221 identico). Quindi i grafici sono corretti a livello
  di dati, ma va fatto un **controllo visivo umano** una volta.
- I problemi 3, 4 e 8 sono collegati: la decisione su **run_1 e run_24** cambia i numeri
  del livello 10 (25% → ~12%), quindi va presa di gruppo e dichiarata nel report.


