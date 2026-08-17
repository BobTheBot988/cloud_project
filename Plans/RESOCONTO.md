# RESOCONTO — Tutto il progetto in un unico file

> Questo file contiene **tutto**: obiettivo, architettura, decisioni, misure,
> script, comandi, norme del lab, stato attuale. Leggi questo e non ti serve
> aprire nessun altro file.

---

## 1. In cosa consiste il progetto

Progetto universitario che dimostra come funziona lo **scaling automatico in
Kubernetes** usando un carico di lavoro reale: un servizio di **intelligenza
artificiale** (modello linguistico LLM) che risponde alle domande degli utenti.

- Più utenti arrivano → la CPU delle macchine si satura → Kubernetes crea da
  solo più copie del servizio (pod).
- Il carico cala → Kubernetes elimina da solo le copie in eccesso (per non
  pagare).
- Questo automatismo si chiama **HPA (Horizontal Pod Autoscaler)** e la CPU è
  il suo "termometro".

Il tutto gira su **AWS Academy Learner Lab**, un ambiente di laboratorio con
budget limitato e regole ferree (vedi §10).

---

## 2. Architettura (chi fa cosa)

### I 4 componenti

| Componente | Cos'è | Cosa fa |
|---|---|---|
| **llama-server** (llama.cpp) | Il motore AI | Carica il modello `Qwen3.5-0.8B` (0,8 miliardi di parametri) e genera testo usando **solo CPU** |
| **FastAPI proxy** (`app/main.py`) | Server web nostro | "Portineria": riceve le richieste utente, le passa al motore AI. Parla il formato standard OpenAI |
| **Kubernetes** | Orchestratore | Gestisce i pod: li avvia, li controlla, li duplica |
| **HPA** | Autoscaler | Legge la CPU dei pod e decide quante copie servono (min 1, max 2) |
| **Locust** | Carico simulato | Simula N utenti che chiedono risposte, per testare sotto stress |

### Come stanno insieme

Un **pod** di Kubernetes contiene DUE programmi che lavorano insieme
("sidecar"):

```
   Utenti / Locust
        │
        ▼
┌──────────── POD ─────────────┐
│ [FastAPI proxy] ──► [llama-server] │   (comunicano su localhost:8080)
│        └── condividono la cartella col modello ──┘
└──────────────────────────────┘
        │
        ▼
  HPA: CPU pod > 60%  →  crea un altro pod
```

- Prima che il pod parta, un **initContainer** scarica il modello (GGUF,
  791 MB) in una cartella condivisa (`emptyDir`).
- Il proxy chiede 100m di CPU, il motore AI 2000m (= 2 vCPU: satura il worker
  quando lavora → segnale perfetto per l'HPA).
- `Service` NodePort porta **30080** per testare con `curl`.

### Perché llama.cpp e NON vLLM

- Il Learner Lab ha macchine **solo CPU** (serie t3). vLLM è fatto per GPU.
- vLLM (Torch) mangia ~0,5-1 GB di RAM in più → su un nodo da 4 GB restano
  ~2,5 GB, niente margine per scalare.
- Su modelli piccoli, llama.cpp è più veloce della CPU di vLLM.
- Immagine vLLM 4-8 GB contro ~100 MB di llama.cpp → download lentissimi.
- Bonus: il proxy parla il formato OpenAI; se in futuro ci fosse una GPU, si
  sostituisce solo il motore, il proxy non cambia.

---

## 3. Decisioni bloccate (le scelte che non si toccano)

| Cosa | Scelta |
|---|---|
| **Modello** | `unsloth/Qwen3.5-0.8B-MTP-GGUF:UD-Q6_K_XL` (791 MB). Alternativa più piccola: `Q6_K` (658 MB) |
| **Motore** | `llama-server` (llama.cpp), NON llama-cli, NON vLLM |
| **Immagine** | `ghcr.io/ggml-org/llama.cpp:server` — build **10380** |
| **Proxy** | FastAPI: `GET /health`, `POST /generate` → `:8080`; env `LLAMA_CPP_URL` |
| **Pod** | sidecar (motore + proxy) + emptyDir condiviso + initContainer che scarica il GGUF |
| **HPA** | CPU media, target **60%**, `min 1 max 2` (2 pod × 2000m = pieni i 2 worker) |
| **Infra** | master `t3.small`, **2× worker `t3.medium`**, us-east-1, Amazon Linux 2023, k8s v1.36 |
| **Quota** | ≤8 istanze, ≤31 vCPU, dimensione ≤ medium (il lab permette 9/32/large: stiamo sotto) |
| **Obiettivo** | ≥21 token/sec di generazione |

---

## 4. Block 0 — Sistema locale (COMPLETO)

Costruito e testato **senza AWS**. Tutto verde.

### Cosa esiste

- **`app/main.py`** — il proxy:
  - `GET /health` → risponde "vivo/morto" (probe di k8s).
  - `POST /generate` → inoltra al modello con **streaming** (le parole arrivano
    a pacchetti), mappa gli errori (400/502/504), timeout 300s.
  - **System prompt**: se il client non ne manda uno, il proxy ne inietta uno
    di default (env `SYSTEM_PROMPT`).
- **`tests/test_proxy.py`** — **11 test automatici, tutti verdi** (il motore AI
  è finto/mockato, non serve accenderlo).
- **`compose.yaml` + `Dockerfile`** — avvio locale di motore+proxy con
  `podman-compose`: la "prova generale" della vita in k8s.
  - *Gotcha risolto:* su host con SELinux attivo il montaggio del modello dava
    "Permission denied" → risolto col flag `:Z` (etichetta SELinux) sul volume.
- **`locustfile.py`** — simulatore di carico (i prompt si allungano via via,
  come utenti "più pesanti").
- **`deploy/`** — i 3 manifesti k8s (deployment, service, hpa), pronti ma da
  applicare solo su AWS (già testati su kind, §6).

### Le misure (evidenza in `MEASURE.md`)

| Misura | Valore | Verdetto |
|---|---|---|
| Velocità generazione | **~26 token/s** a 2 thread | obiettivo ≥21 → **centrato** |
| Velocità via HTTP (proxy) | 24,65 tok/s @2thr | conferma end-to-end |
| RAM del motore (idle) | ~345 MB | sta comodo in t3.medium (4 GB) |
| Test Locust (3 utenti, 60s) | 16 richieste, **0 errori**, media ~9s per 256 token | ok |
| Modello 2B (alternativa testata) | 11 tok/s, qualità scadente | **rifiutato**, resta lo 0.8B |

### Flag del motore (validati sulla build 10380)

```
--host 0.0.0.0 --port 8080 --threads 2 --ctx-size 2048 --no-webui --reasoning off \
--temp 1.0 --top-k 20 --top-p 0.95 --min-p 0.0 --presence-penalty 1.5 --repeat-penalty 1.25
```

**Gotcha importante:** nei server build NON esiste il flag `--reasoning` a
valori tipo `--reasoning-budget`, né `--spec-type draft-mtp`: si usa
`--reasoning off`. La build 10380 è **obbligatoria** (architettura modello
`qwen35`); le build più vecchie la rifiutano e il tag `latest` di GHCR non
esiste più.

### Sizing (perché t3.medium)

- Worker `t3.medium` (2 vCPU, 4 GB), motore con `--threads 2` → ~26 tok/s.
- `requests.cpu`: motore **2000m**, proxy **100m**.
- HPA `max 2`: con 2 worker a 2000m/pod, 2 pod riempiono tutta la capacità.
  (max 3 non è schedulabile senza un terzo worker o senza abbassare a 1000m.)

---

## 5. Block 1 — Cluster AWS (COMPLETO, run da fare)

### Le macchine

- **1 master** `t3.small` → cervello di Kubernetes.
- **2 worker** `t3.medium` → eseguono i pod (2 vCPU + 4 GB ciascuno).
- Regione: `us-east-1` (unica con la chiave `vockey` pronta).
- Costo: ~0,02 + 2×0,042 = **~0,10 $/h** a cluster acceso.

### Gli script (`infra/`)

| Script | Cosa fa |
|---|---|
| `00-env.sh` | Variabili condivise: regione, AZ, tipi istanza, chiave SSH, limiti quota |
| `guards.sh` | Logica dei guard (vedi sotto) condivisa + `sweep_stale` |
| `01-launch.sh` | Guard → firewall (SG) → lancia le 3 macchine → EIP al master → aspetta SSH |
| `bootstrap.sh` | Installa k8s v1.36 su AL2023: kubelet/kubeadm/kubectl, containerd (systemd_cgroup), SELinux off, swapoff, sysctl, firewalld off, `kubeadm init`, Flannel, Metrics Server |
| `bootstrap-all.sh` | Coordina master+worker, estrae il token di join, attende i nodi Ready |
| `02-verify.sh` | Verifica nodi Ready, pod Running, `kubectl top node` (prova che Metrics Server funziona) |
| `03-down.sh` | Distrugge tutto: termina istanze, rilascia EIP, cancella il SG |
| `04-cost.sh` | Controllo spesa + costo stimato per run |

### Il firewall (security group)

Porte **pubbliche** (servono ad amministrare e testare):
- `22` SSH · `6443` API Kubernetes · `30000-32767` NodePort

Porte **interne** (solo tra le nostre macchine, self-referencing):
- `2379-2380` etcd · `10250-10252` kubelet · `8472/udp` Flannel

### Ricetta bootstrap del master (in breve)

1. Repo k8s `pkgs.k8s.io` (percorso `el9`, versione 1.36) → installa
   kubelet/kubeadm/kubectl.
2. `containerd` con `systemd_cgroup = true`.
3. **SELinux** → `setenforce 0` + disabilitato in config (obbligatorio per kubelet).
4. `swapoff -a` + commenta swap in fstab.
5. sysctl: bridge-nf-call-iptables=1, ip_forward=1; `iptables -P FORWARD ACCEPT`.
6. firewalld spento (fa tutto il security group).
7. `kubeadm init --pod-network-cidr 10.244.0.0/16`.
8. Flannel + Metrics Server (`--kubelet-insecure-tls`).
9. Stampa il comando di join per i worker.

*Fallback:* se gli rpm el9 non si installano su AL2023, si scaricano i binari
statici kubeadm/kubelet/kubectl (stesso flusso).

### Rischi noti (già previsti)

- **t3.small 2 GB → OOM** durante `kubeadm init`: piano B = master su t3.medium
  (resta nei limiti quota).
- **IP che cambia** a ogni stop/start: l'**EIP** sul master evita il problema.
- **Metrics Server** richiede `--kubelet-insecure-tls`.

---

## 6. Block 2 — Manifesti k8s (pronti e testati su kind)

I file in `deploy/` sono stati provati su un mini-cluster locale (**kind**),
prima di spendere un centesimo su AWS:

- installate le metriche, scaricato il modello, pod partito, `/health` ok via
  porta 30080 e **generazione testo vera**.
- con Locust abbiamo **spinto la CPU al 91%** (target 60%) e l'HPA ha **scalato
  da 1 a 2 pod da solo**. È la dimostrazione che vogliamo, già provata.

Bug trovati e corretti proprio grazie a kind: tag immagine `curl:8` inesistente,
trappola YAML sul valore `off`, metrics-server mancante, service/hpa dimenticati
nel percorso veloce, bug di subshell nel primo test.

Modalità veloce: `just kind-fast` riusa immagine e modello già scaricati (pod
pronto in ~8s invece di ~8min).

### Registro immagini

L'immagine del proxy è su **GHCR**: `ghcr.io/bobthebot988/llm-proxy:latest` ed è
**pubblica** → i nodi AWS la scaricano senza credenziali, niente
imagePullSecrets, niente token.

---

## 7. Hardening — Protezione dal ban del Learner Lab (fatto)

Abbiamo letto le norme del lab (vedi §10) e aggiunto protezioni. Dettagli in
`Plans/HARDENING.md`; ecco il riassunto completo:

1. **Sweep delle istanze "spente"** — il lab **riavvia da solo** le istanze
   rimaste spente a inizio sessione (bruciano budget e contano nei limiti).
   Ora `01-launch.sh`, prima di lanciare, **termina** le nostre istanze
   `stopped` rimaste da sessioni passate e **blocca** se c'è già un cluster
   attivo. Testato da 3 nuovi test automatici.
2. **Firewall self-referencing** — le porte interne (etcd, kubelet, Flannel)
   accettano traffico **solo dalle nostre macchine**, non da internet. Se un
   nodo viene compromesso, non può creare risorse nell'account. Pubbliche
   restano solo SSH/API/NodePort.
3. **Pulizia EIP** — a fine sessione si rilasciano **tutti** gli IP elastici
   taggati dal progetto, anche se il file di stato è sparito (crash). Un EIP
   allocato non associato fattura comunque (~0,005 $/h).
4. **Disco esplicito** — root **20 GB gp3**, dentro il limite di 100 GB e tipo
   consentito (no io1/io2), cancellato alla terminazione.
5. **`just cost`** — prima di spendere, controlli la spesa degli ultimi 14
   giorni (Cost Explorer) e il costo stimato di un run (~**0,42 $** per ~4h).

Tutti i test dei guard continuano a passare con le nuove regole
(`just case-all` → 13 controlli verdi, più i 3 nuovi dello sweep).

---

## 8. Comandi utili (tutti)

| Comando | Cosa fa |
|---|---|
| `uv sync` | Crea `.venv` e installa le dipendenze (incl. dev: pytest, locust) |
| `just test` | Esegue gli 11 test del proxy |
| `just test-prompt "..."` | Fa rispondere il modello a una domanda (streaming) |
| `just up` / `just down` | Avvia / ferma il sistema locale (podman-compose) |
| `just compose-config` | Valida `compose.yaml` |
| `just kind-up` / `kind-down` | Crea / distrugge il mini-cluster locale kind |
| `just kind-test` | Test completo su kind (metriche → deploy → curl 30080) |
| `just kind-fast` | Test veloce offline (riusa immagine + modello) |
| `just launch` | Lancia le 3 macchine su AWS (guard attivi) |
| `just cluster-up` | launch → bootstrap → verify (tutto il cluster) |
| `just cluster-verify` | Verifica lo stato del cluster |
| `just cluster-down` | **Distrugge tutto** (obbligatorio a fine sessione) |
| `just cost` | Controllo spesa + costo stimato run |
| `just case-all` / `just guard-default` | Test dei guard di sicurezza (mock, niente AWS) |

---

## 9. Stato attuale e prossimo passo

| Blocco | Stato |
|---|---|
| Block 0 — sistema locale + prove | ✅ COMPLETO |
| Block 1 — script cluster + guard | ✅ COMPLETO (testato; run AWS da fare) |
| Block 2 — deploy + HPA su AWS | 🟡 Pronto (validato su kind); da fare la sessione AWS |
| Block 3 — esperimenti di carico | ⬜ Da fare |
| Block 4 — analisi + relazione | ⬜ Da fare |

**Prossimo passo concreto:** avviare il Learner Lab, caricare credenziali
fresche e `labsuser.pem`, poi:

```
just cost               # (opzionale) controllo spesa
just cluster-up         # crea cluster su AWS + bootstrap + verify
kubectl apply -f deploy/   # deploy del servizio
curl http://<master>:30080/health
# Locust 2-5 utenti → verificare che l'HPA scali da solo
just cluster-down       # SEMPRE a fine sessione
```

---

## 10. Norme del Learner Lab — cosa rischia l'account

Citazioni dalle istruzioni ufficiali (`Plans/Learner Lab instruction.md`):

- **Limite istanze:** massimo **9** istanze contemporanee; **≥20 = disattivazione
  immediata dell'account** ("immediate deactivation... all resources deleted").
- **Limite vCPU:** massimo **32** vCPU totali.
- **Tipi macchina:** solo nano→large, solo **On-Demand**, solo regione us-east-1
  / us-west-2, AMI non-Marketplace, niente EC2 Fleet.
- **EBS:** max 100 GB, tipi gp2/gp3/sc1/standard (no io1/io2).
- **"Qualsiasi tentativo di superare un limite può portare alla disattivazione
  immediata."**
- **Budget:** se sfori il budget → **account disabilitato** e progressi persi.
  Il budget si aggiorna ogni 8-12 ore (arriva in ritardo).
- **Auto-restart:** le istanze che restano "spente" a fine sessione vengono
  **riaccese da sole** alla sessione successiva.
- **IAM:** non si possono creare utenti/ruoli (solo service-linked); esistono già
  `LabRole` e `LabInstanceProfile`.

### Come ci proteggiamo (riassunto)

| Norma | Nostra difesa |
|---|---|
| 9 istanze / 32 vCPU | Guard: max 8 istanze / 31 vCPU, fail-closed, tripwire |
| ≥20 istanze = ban | impossibile: max 8 + sweep automatico delle residue |
| Budget | `just cost` + terminate ogni sessione + costo per run minuscolo (~0,10 $/h) |
| Auto-restart istanze | `03-down.sh` **termina** (mai solo stop) + sweep in `01-launch.sh` |
| EBS | volume esplicito 20 GB gp3 (≤100 GB, tipo consentito) |
| EIP residui | sweep EIP taggati in `03-down.sh` |

---

## 11. Regole d'oro (per non farsi bannare)

1. **Non toccare i guard** (8/31/medium) — è la regola che ti salva. Mai
   indebolirli.
2. A fine sessione **sempre** `just cluster-down` (termina le macchine). Mai
   lasciarle "solo spente": il lab le riaccende da solo e bruciano budget.
3. `just cost` prima di spendere; occhio alla barra del budget (arriva in
   ritardo di 8-12 ore).
4. Ogni sessione: **credenziali AWS fresche** + `labsuser.pem` scaricato di
   nuovo da AWS Details.
5. Mai bypassare i guard a mano per "fretta". Se un comando si rifiuta, il
   motivo è che l'account sarebbe a rischio.

---

## 12. Struttura del repository (mappa veloce)

| Percorso | Contenuto |
|---|---|
| `app/main.py` | Il proxy FastAPI |
| `tests/test_proxy.py` | 11 test del proxy |
| `compose.yaml`, `Dockerfile` | Stack locale (podman-compose) |
| `locustfile.py` | Simulatore di carico |
| `deploy/` | deployment.yaml, service.yaml, hpa.yaml (per AWS) |
| `infra/` | Script ciclo di vita EC2 + guard + `kind-fast.sh` |
| `kind-config.yaml` | Config del mini-cluster kind |
| `justfile` | Tutti i comandi sopra |
| `MEASURE.md` | Prova di performance |
| `Plans/` | Documentazione del progetto (questo file + dettagli) |
