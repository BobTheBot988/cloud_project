# TEORIA ↔ PROGETTO — Guida allo studio

> Questo file collega **ogni capitolo della teoria** (`notes/01- CC/main.md`,
> corso di Cloud Computing) alla **nostra implementazione concreta**. È
> autocontenuto: spiega i concetti e li mappa al progetto, così capisci
> *cosa stai costruendo*, *perché*, e *cosa devi studiare*.
>
> **Legenda priorità:** ⭐ = concetto che DEVI padroneggiare per capire il
> progetto · 🔵 = teoria utile ma non nel nostro progetto · 📄 = capitolo
> quasi solo "da esame", poco legato al progetto.

---

## Riepilogo del progetto (in 5 righe)

Sul **Learner Lab AWS** creiamo un cluster **Kubernetes** fatto di 3 macchine
EC2 (1 master `t3.small` + 2 worker `t3.medium`). Dentro il cluster gira un
servizio di **AI** (modello `Qwen3.5-0.8B`, motore `llama.cpp`) dietro a un
**proxy FastAPI**; il tutto vive in **pod** duplicabili. Un **HPA** guarda la
**CPU** dei pod e, se supera il **60%**, crea da solo un altro pod (max 2).
Locust simula gli utenti. Il risultato dimostra **elasticità**: le risorse
seguono la domanda.

---

# CAPITOLO 1 — Introduzione (cos'è il cloud) ⭐

## Teoria in sintesi

Il cloud = computing come "utilità pubblica" (come l'elettricità): accedi
**on demand**, paghi **solo ciò che usi**. Il modello NIST ha:
- **5 caratteristiche essenziali**: on-demand self-service, broad network
  access, resource pooling (multi-tenant), rapid elasticity, measured service.
- **3 modelli di servizio**: IaaS (macchine virtuali), PaaS (piattaforme),
  SaaS (applicazioni).
- **4 modelli di deployment**: public, private, hybrid, community.

## Dove si vede nel progetto

| Concetto | Nel nostro progetto |
|---|---|
| **IaaS** | Le EC2 (`t3.small`/`t3.medium`) sono infrastruttura: controlliamo OS (AL2023), storage (EBS 20GB gp3) e software. AWS = provider, noi = consumer |
| **On-demand self-service** | `just cluster-up` crea le macchine via API senza intervento umano di AWS (script `01-launch.sh`) |
| **Broad network access** | Ci colleghiamo via SSH (`labsuser.pem`) e HTTPS da qualsiasi luogo |
| **Resource pooling** | Le EC2 sono macchine virtuali condivise con altri "tenant" sugli stessi host fisici di AWS |
| **Rapid elasticity** | **L'intero progetto è questo**: l'HPA aggiunge/toglie pod al volo seguendo la domanda |
| **Measured service** | AWS ci fattura a ore/vCPU/EIP; il budget del Learner Lab è il nostro "misuratore" |
| **Public cloud** | Il Learner Lab è un account sandbox su cloud pubblico |

## Cosa studiare

- Saper **classificare un servizio** come cloud vero/falso usando le 5
  caratteristiche (è l'esercizio "FC1 Task 1" del file di teoria, §7.1).
- Distinguere **IaaS/PaaS/SaaS** con esempi (il nostro = IaaS; il proxy
  FastAPI avrebbe senso come PaaS; Gmail/Teams = SaaS).

---

# CAPITOLO 2 — Tecnologie abilitanti (sistemi distribuiti, microservizi) 🔵/⭐

## Teoria in sintesi

- **Sistema distribuito**: più componenti che collaborano in rete.
- **SOA**: i servizi sono scatole nere autonome con contratti, scoperti tramite
  registry (provider / consumer / registry).
- **Orchestrazione** (coordinamento centralizzato) vs **coreografia**
  (scambio di messaggi senza coordinatore).
- **Microservizi**: applicazione fatta di tanti servizi piccoli, indipendenti,
  deployabili da soli.
- **Scaling su 3 assi**: X (duplicazione orizzontale), Y (decomposizione
  funzionale), Z (partizionamento dei dati).

## Dove si vede nel progetto

- **Microservizio / sidecar**: il nostro pod contiene 2 componenti
  (proxy + motore AI) che comunicano su localhost:8080 → pattern **sidecar**
  (un piccolo helper accanto al servizio principale).
- **Orchestrazione (centralizzata)**: Kubernetes è l'orchestratore centrale
  che decide dove e quanti pod girare → siamo nella famiglia
  "orchestration", non "choreography".
- **Provider/consumer**: il proxy (consumer) chiama llama-server (provider)
  tramite un'interfaccia standard (API compatibile OpenAI) → contratto SOA.
- **Scaling X-axis**: l'HPA **duplica i pod** → scaling orizzontale
  (X-axis). Niente Y/Z-axis (non scomponiamo l'app, non partizioniamo dati).

## Cosa studiare

- La differenza **orchestrazione vs coreografia** (facile domanda d'esame).
- I 3 assi di scaling (X = quello nostro).
- Microservizi vs monolite: il nostro sistema è "microservizio-ish" (2 piccoli
  pezzi indipendenti), ma dentro un solo pod.

---

# CAPITOLO 3 — Containerizzazione (Docker) ⭐

## Teoria in sintesi

- **Container**: processo isolato che gira sul kernel dell'host. Basi:
  **cgroups** (limite/priorità risorse: CPU, RAM, PID) e **UnionFS**
  (immagini a strati, copy-on-write).
- **Docker**: immagini (templates read-only) + container (istanze) +
  registry (deposito immagini).
- **Storage**: writable layer (effimero), volumes (persistenti), bind mounts
  (cartella dell'host), tmpfs (in RAM).
- **Networking**: bridge (default, NAT), host (condivide lo stack), overlay
  (multi-host, VXLAN), macvlan, none.

## Dove si vede nel progetto

| Concetto | Nel nostro progetto |
|---|---|
| **Immagini** | `ghcr.io/ggml-org/llama.cpp:server` (build 10380, ~100MB) e `ghcr.io/bobthebot988/llm-proxy:latest` (pubblica su GHCR) |
| **cgroups** | I `resources.requests.cpu` di k8s (motore **2000m**, proxy **100m**) diventano limiti cgroup nel kernel: il motore si "assesta" su 2 vCPU |
| **Volumi** | In k8s usiamo **emptyDir** (cartella condivisa effimera tra sidecar, per il modello GGUF 791MB) — come il "writable layer": se il pod muore, si ricarica |
| **Bind mount** | `kind-fast.sh` monta il GGUF già scaricato dall'host nei nodi kind (hostPath) → stessa idea dei bind mounts (e stesso problema SELinux `:Z`, vedi `Plans/HARDENING.md`) |
| **Overlay network** | La rete di pod in k8s usa **Flannel con VXLAN** = esattamente il driver **overlay** di Docker ma multi-host |
| **Registry** | GHCR = il "registry" dove il daemon scarica le immagini (pull anonimo) |

## Cosa studiare

- Come funziona un'**immagine a strati** e il **copy-on-write**.
- Differenza **volumes vs bind mounts vs tmpfs** (tabella 3.1 del file di
  teoria). Nel nostro caso: emptyDir ≈ "writable layer", hostPath ≈ bind mount.
- I driver di rete, in particolare **overlay** (è quello di Flannel).
- Perché i container sono leggeri rispetto alle VM (condividono il kernel).

---

# CAPITOLO 4 — Virtualizzazione 🔵

## Teoria in sintesi

- **Virtualizzazione**: emulare hardware per far girare più OS su una macchina.
- **Hypervisor (VMM)**: lo strato che gestisce le VM. **Full virtualization**
  (traduzione binaria, trap verso l'hypervisor) vs **paravirtualizzazione**
  (l'OS sa di essere in VM e usa *hypercall* — più leggera; es. KVM).

## Dove si vede nel progetto

- Le **EC2 sono VM**: il nostro "kernel" è AL2023 sopra l'hypervisor di AWS
  (Nitro). Kubernetes poi ci gira **dentro** le VM.
- Il *master t3.small* e i *worker t3.medium* sono dimensionati come VM da 2
  vCPU/4GB → tutta la nostra progettazione (threads 2, request 2000m) dipende
  da quanta CPU ci dà la VM.
- Bonus: **kind** crea "nodi k8s" che sono a loro volta container → una
  virtualizzazione dentro l'altra.

## Cosa studiare

- Differenza **full vs para** virtualization (domanda tipica).
- Il punto chiave: perché i **container** sono più leggeri delle VM (niente
  hypervisor, stesso kernel).

---

# CAPITOLO 5 — Automazione & Orchestrazione (Kubernetes) ⭐⭐

## Teoria in sintesi

- **Automazione**: un singolo task ripetuto senza intervento umano (es. Ansible:
  agentless, push model, playbooks YAML idempotenti).
- **Orchestrazione**: coordinare più task/componenti come un unico processo.
- **Container orchestration**: selezionare, deployare, monitorare e gestire
  dinamicamente applicazioni multi-container. Funzioni: **resource limits,
  scheduling, load balancing, health check, fault-tolerance, auto-scaling**.
- **Kubernetes**: piattaforma per gestire workload containerizzati. Offre
  discovery, storage orchestration, rollout/rollback, bin packing,
  **self-healing**, segreti/config.

### Anatomia di K8s
- **Oggetti**: record di intento con **spec** (desiderato) e **status**
  (attuale). Il sistema lavora continuamente per allineare status a spec.
- **Control plane**: **API server** (frontiera), **etcd** (storage chiave/valore
  distribuito per lo stato), **scheduler** (decide su quale nodo), **kube-controller-manager**
  (loop di controllo), **cloud-controller-manager** (opzionale, lega al cloud).
- **Nodi**: **kubelet** (agente che tiene i pod sani), **kube-proxy** (regole di
  rete), **container-runtime** (esegue i container).
- **Node affinity/anti-affinity**: regole per vincolare dove vanno i pod.

## Dove si vede nel progetto (molto diretto)

| Concetto | Nel nostro progetto |
|---|---|
| **Oggetto spec/status** | Il `Deployment` ha `replicas: 2` (spec). Se un pod muore, il controller allinea status → ne riparte uno nuovo (**self-healing**) |
| **API server** | Il `kubectl apply -f deploy/` parla con l'API server del master |
| **etcd** | Sul master t3.small: lo storage distribuito (usa **Raft**, famiglia di consenso come Paxos del cap. 6) |
| **Scheduler** | Decide che i 2 pod con request 2000m stanno sui 2 worker (ogni worker ha 2 vCPU) |
| **kubelet** | Su ogni worker: tiene vivi i container del pod |
| **kube-proxy** | Instrada il traffico verso il Service NodePort |
| **container-runtime** | `containerd` (quello che installa il nostro `bootstrap.sh`) |
| **Health check** | Il **readinessProbe** su `/health` del proxy: k8s non manda traffico a un pod non pronto |
| **Self-healing** | Deployment + readiness: pod rotto = restart automatico |
| **Auto-scaling** | L'HPA (cap. 9) |
| **Automazione** | I nostri script `infra/` (01-launch, bootstrap, etc.) sono "automazione" in stile Ansible: idempotenti, ripetibili, dichiarativi |
| **cloud-controller-manager** | Noi NON lo usiamo: il cluster è *on-premise-style* (kubeadm su EC2), niente integrazione diretta con l'API di AWS |
| **Node affinity** | Non usata: ci basta il sizing delle VM |

## Cosa studiare

- **spec vs status** e il loop di controllo del controller (è il cuore di k8s
  e spiega perché il sistema "si ripara da solo").
- Le **parti del control plane** e le **parti del nodo** (domanda d'esame
  frequente: "che differenza c'è tra kubelet e kube-proxy?").
- Le funzioni della **container orchestration** (tutte presenti nel progetto).
- Il fatto che l'**HPA è un controller** che guarda spec/status come gli altri.

---

# CAPITOLO 6 — Cloud Storage (GFS, HDFS, S3, NoSQL, BigTable, Dynamo) 📄

## Teoria in sintesi

File system distribuiti con master (GFS: chunks 64MB; HDFS: blocks 64-128MB),
replicazione (3 di default), operation log + checkpoint per il recovery.
S3 = storage a oggetti (buckets/objects, consistenza forte read-after-write).
NoSQL = niente ACID, modello BASE (Dynamo, BigTable).

## Dove si vede nel progetto (minimo)

- **etcd** (control plane) è un **key-value store distribuito** con consenso
  (Raft) → lega al concetto di **consenso** (§6.1.3) e alle architetture
  master/leader viste in GFS/HDFS/BigTable.
- **EBS gp3** (20GB) è storage a blocchi attaccato alle EC2 — è lo strato
  sotto i file system.
- Il **modello GGUF** viene scaricato una volta (initContainer) in emptyDir:
  è un file di sola lettura replicato su ogni nodo dal k8s — nessun file
  system distribuito nel progetto.
- **S3/Dynamo/BigTable**: non usati. (Dynamo è citato nel corso per il
  modello di consistenza; per il progetto potremmo citarlo solo come "avremmo
  potuto usare S3 per il modello", ma abbiamo scelto GHCR.)

## Cosa studiare

- **GFS vs HDFS** (cap. 10): architettura master/chunkserver vs
  name/data-node, operation log, replica placement, consistenza. **Solo per
  esame**, non serve per il progetto.
- **Dynamo vs BigTable** (cap. 11): consistent hashing + vector clocks vs
  tablet/SSTable/Chubby. **Solo per esame.**
- Consenso (Paxos): sapere che esiste e a cosa serve (etcd usa Raft, cugino).

---

# CAPITOLO 7 — FC1: Definizione, Architettura, Elasticità ⭐⭐

## Teoria in sintesi

- Per essere "cloud" servono **tutte e 5** le caratteristiche NIST (cap. 1).
- **Scalabilità ≠ Elasticità**: la scalabilità è la capacità di reggere
  carichi crescenti aggiungendo risorse; l'elasticità aggiunge gli **aspetti
  temporali** (velocità, frequenza, granularità dello scaling) e il
  **matching** tra risorse allocate e domanda reale in ogni istante.
- **Funzione di matching** `m(w)=r`: minimo di risorse per un dato carico.
  Va derivata **separatamente** per scale-up e scale-down (asimmetria:
  si scala su in fretta, giù con ritardo per non oscillare).
- **Speed vs Precision**: speed = tempo per passare da sotto/sovra-provisioned
  a ottimale; precision = scostamento tra risorse allocate e domanda.
  Scale rapido ma impreciso → **underprovisioning** (utente vede latenza/
  timeout) o **overprovisioning** (provider spende per risorse vuote).
- **Unità di scaling discrete**: la domanda è una curva continua ma le risorse
  arrivano "a blocchi" (1 VM, 1 pod) → deviazione residua inevitabile.
- **Elasticità vs Efficienza**: un sistema efficiente consuma meno e può
  sembrare "più elastico"; per confrontare in modo giusto bisogna indurre
  **identiche curve di domanda** nei sistemi confrontati.
- **Burst**: per un picco improvviso la metrica critica è **A** (tempo medio di
  scale-up), non la precisione dello scale-down.

## Dove si vede nel progetto

| Concetto | Nel nostro progetto |
|---|---|
| **Elasticità** | L'HPA è la nostra elasticità: alloca/rilascia pod in base alla domanda in tempo reale |
| **Scalabilità vs elasticità** | Il cluster "scalabile" lo sarebbe comunque (aggiungi worker); l'elasticità sta nel farlo **da solo e in fretta** dentro il cluster (pod) |
| **Funzione di matching** | Noi la stimiamo con le **misure**: 2 thread → ~26 tok/s, un pod richiede 2000m; più carico → più pod |
| **Asimmetria up/down** | L'HPA scala **su** subito (pochi secondi) e scala **giù** con prudenza (finestra di stabilizzazione, ~5 min) per non oscillare — è la stessa asimmetria del corso |
| **Speed** | "Quanto è veloce a passare da sotto-provisioned a ok": nel nostro caso dipende dal tempo di avvio del pod (immagine + modello) |
| **Precision** | Un target 60% è "impreciso per design": se la domanda esige 3 pod ma ne abbiamo max 2 → sotto-provisioned; se 1 pod basta per il 10% → over-provisioned. L'ADI (cap. 9) misura proprio questo |
| **Unità discrete** | I pod sono l'unità discreta (min 1, max 2): mai "2,3 pod" |
| **Burst → metrica A** | Con un picco di utenti (Locust ramp) quello che conta è quanto presto parte il 2° pod |

## Cosa studiare

- La distinzione **scalabile-ma-non-elastico** (saperla spiegare).
- **Speed vs Precision** e le conseguenze di under/overprovisioning.
- Perché **m(w)** è asimmetrica su/giù.
- Perché le **unità discrete** impediscono elasticità perfetta.
- In un **burst**, quale metrica conta (A).

---

# CAPITOLO 8 — FC2: Autonomic Computing ⭐⭐

## Teoria in sintesi

- Ispirazione biologica: il **Sistema Nervoso Autonomo** mantiene le funzioni
  vitali senza che ce ne accorgiamo → l'**Autonomic Manager** fa lo stesso per
  i sistemi software. **Omeostasi** = mantenere i "parametri vitali" (es.
  qualità del servizio) dentro una "zona di sopravvivenza".
- **Ciclo MAPE-K**: **Monitor** (raccoglie dati), **Analyze** (correla e capisce
  se serve agire), **Plan** (costruisce il piano), **Execute** (lo applica),
  **Knowledge** (il "cuore": deposito centrale di modelli/regole/log).
- **Touchpoints**: sensori (leggono lo stato) + effector (lo modificano) —
  l'interfaccia tra manager e sistema gestito.
- **Conoscenza innata** (regole scritte prima, es. "se CPU>80% aggiungi VM")
  vs **conoscenza acquisita** (dati raccolti a runtime, es. "4200 utenti online").
- **Ragionamento reflex (ECA)**: regole Event-Condition-Action: veloci ma con
  possibili conflitti.
- **Model-driven**: modelli@runtime (struttura, ambiente, non-funzionali).
- **Goal-based vs Utility-based**; **search-based**; **causal connection**
  (modello sincronizzato col sistema, contro il *stale state paradox*);
  **PoC** per sensori incerti; **learning** (RL).
- **Self-management**: **self-optimization** (bilanciare SLO vs costi),
  **self-healing** (riparare i guasti da solo), self-configuration,
  self-protection.

## Dove si vede nel progetto (l'HPA È un autonomic manager)

| Fase MAPE-K | Nel nostro progetto |
|---|---|
| **Monitor** | **Metrics Server** legge la CPU dai kubelet (che usano cAdvisor/cgroups) e l'espone via API |
| **Analyze** | L'HPA confronta la CPU media con il **target (60%)** |
| **Plan** | Calcola quante repliche servono: `desired = ceil(attuali × cpu/target)` |
| **Execute** | Scrive il nuovo numero di repliche nell'API server → il Deployment crea/elimina pod |
| **Knowledge** | La regola innata "60%, min 1, max 2" + i dati acquisiti dalle metriche |

| Concetto | Nel nostro progetto |
|---|---|
| **Conoscenza innata** | `targetAverageUtilization: 60`, `minReplicas: 1`, `maxReplicas: 2` → scritti da noi |
| **Conoscenza acquisita** | `kubectl top pods` → la CPU *reale* di adesso (durante i test di carico) |
| **Sensori** | Metrics Server = il sensore dell'HPA |
| **Effector** | L'HPA che modifica il numero di repliche = l'effector |
| **Self-healing** | Il Deployment: pod morto → nuovo pod (è l'**Scenario 2** del file di teoria §8.2.11, parola per parola) |
| **Self-optimization** | L'HPA bilancia "non violare le prestazioni" vs "non sprecare soldi" (obiettivo 60% = compromesso) |
| **Regole ECA (reflex)** | L'HPA è una regola ECA: "SE cpu>60% ALLORA +1 pod". Veloce e semplice, come da teoria |
| **Omeostasi / zona di sopravvivenza** | Il target 60% e l'intervallo min/max = la "zona vitale" in cui vogliamo tenere il sistema |
| **Oscillazione** | La finestra di stabilizzazione dell'HPA esiste **proprio** per evitarla (cap. 9) |
| **Utility-based / RL / model-driven** | NON usati nel progetto (sono tecniche più avanzate) — solo teoria |

## Cosa studiare

- Il **ciclo MAPE-K** e saperlo **mappare su un sistema reale** (es. il nostro
  HPA!). Domanda d'esame frequente.
- **Sensori vs effector**, **conoscenza innata vs acquisita** (con esempi cloud).
- Le **self-* capabilities**, in particolare self-healing e self-optimization
  (il nostro progetto le dimostra entrambe).
- La **regola ECA** e i suoi limiti (conflitti).

---

# CAPITOLO 9 — FC3: Autoscaling ⭐⭐⭐ (il cuore del progetto)

## Teoria in sintesi

- **Processo di auto-scaling** = ciclo MAPE applicato alle risorse:
  Monitor (metriche), Analysis (reattiva vs proattiva), Planning (decisione),
  Execution (chiamata API al provider).
- **Reactive vs Proactive**: il reattivo reagisce ai dati passati; il proattivo
  **prevede** la domanda. Il reattivo arriva **tardi** perché avviare una
  macchina richiede **minuti** ("boot-up challenge").
- **Metriche**: spesso si usa una **proxy metric** (es. CPU) invece di metriche
  applicative dirette: più semplice, meno costoso, comunque rappresentativa.
- **Rischi**: **under-provisioning** (latenza/violazioni SLA), **over-provisioning**
  (costi per risorse vuote), **oscillation** (scaling avanti-indietro).
  Rimedi: **cooldown/calm periods** e **capacità buffer**.
- **Tecniche**:
  - **Threshold-based**: regole condizione→azione. Multi-threshold = reazioni
    graduate. `durU` = strategia di **persistenza** (filtra picchi brevi).
    Cooldown dopo ogni azione.
  - **TSA**: prevede la domanda (trend, stagionalità) → proattivo.
  - **Control Theory**: feedback (corregge l'errore misurato) / feed-forward
    (prevede l'errore con un modello). Spesso combinate.
  - **Queuing Theory**: modelli matematici white-box (Little's law). Limitato
    perché serve conoscenza interna dell'app.
  - **Reinforcement Learning**: impara per trial-and-error. Lento all'inizio,
    male sui burst.
  - **Hybrid**: es. PID + RL.
- **Valutazione sperimentale**: simulatori (CloudSim) vs piattaforme reali;
  workload sintetici vs **real traces**; benchmark applicativi (RUBiS, TPC-W).
- **Step size e ADI**: step fisso vs **adaptive step size** (aggressività α);
  metrica **ADI** = deviazione dall'intervallo target [L,U]. Strategie di
  triggering: **reactive, conservative, predictive**.

## Dove si vede nel progetto (quasi TUTTO)

| Concetto | Nel nostro progetto |
|---|---|
| **Auto-scaling** | L'**HPA** di k8s: `kubectl get hpa` |
| **MAPE loop applicato** | Vedere tabella MAPE-K del cap. 8: Metrics Server → HPA → API server |
| **Reactive** | Il nostro HPA è **reattivo** (agisce sulla CPU attuale). Il 2° pod parte quando la CPU supera il target |
| **Boot-up challenge** | È REALE per noi: un pod nuovo deve **scaricare immagine + modello GGUF 791MB** → ~8 min a freddo. Per questo usiamo l'**initContainer prefetch** e per i test veloci `kind-fast` (modello già locale → pod in ~8s) |
| **Proxy metric = CPU** | Abbiamo scelto **CPU** apposta: la generazione LLM è **decode-driven**, quindi la CPU sale davvero con il carico → segnale onesto e semplice |
| **Threshold-based** | L'HPA è letteralmente: "SE cpu > 60% ALLORA +1 pod". Target = 60%, min 1, max 2 |
| **Cooldown** | L'HPA ha la **stabilization window** (di default ~5 min per lo scale-down) per non oscillare |
| **Persistenza (`durU`)** | L'HPA media la CPU su una finestra di tempo → i picchi brevi non scatenano scalate inutili |
| **Multi-threshold / step adattivo** | NON usati: l'HPA aggiunge/toglie **1 pod** (step fisso). Potremmo citarlo come limite |
| **Under-provisioning** | Se il carico richiede più dei 2 pod max → sotto-provisioned (i test Locust col 91% di CPU mostrano che 1 solo pod non basta) |
| **Over-provisioning** | Con 1 utente e 2 pod → spreco; per questo `minReplicas: 1` |
| **Oscillation** | Evitata dalla stabilization window; nei test abbiamo visto scale-out stabile 1→2 |
| **Proactive/TSA/CT/QT/RL** | NON usati: l'HPA è una tecnica threshold-based semplice (potremmo citare le alternative in relazione) |
| **Simulatore vs reale** | Noi abbiamo fatto il contrario dei paper: prima **kind** (piattaforma reale ma locale, economica, riproducibile) e poi **AWS vero** → più realistico del CloudSim |
| **Workload sintetico** | **Locust** con **PROMPT_POOL ramp** = workload sintetico. I paper preferiscono real traces; noi non ne abbiamo (noi = lab), quindi usiamo Locust |
| **Benchmark** | Il nostro "benchmark" è il test di generazione (tok/s) — come RUBiS/TPC-W ma per LLM |
| **ADI** | Nel Block 3 possiamo **calcolare l'ADI** dei nostri run: raccogliamo CPU vs tempo (collector `kubectl top pods`) e target [L,U] = [0%, 60%] → misura quantitativamente la qualità del nostro autoscaler |

### Esempio teorico concretizzato (dal file di teoria §9.4.5)

Il file di teoria mostra il calcolo dello **step size adattivo** con formule
per scale-in/scale-out. Il nostro HPA fa la cosa **più semplice**: ratio
`currentMetric/target` → arrotonda. Studia il caso di teoria per capire
"come si potrebbe fare di meglio" (adaptive step vs step fisso).

## Cosa studiare (PRIORITÀ ASSOLUTA)

- Le **3 fasi del processo di auto-scaling** e i **3 rischi** (under/over/
  oscillation).
- **Reactive vs proactive** e il **boot-up challenge**.
- La **regola threshold-based**: condizione, `durU` (persistenza), **cooldown**.
- Perché si usa una **proxy metric** (CPU).
- Saper citare le **altre tecniche** (TSA, CT, QT, RL) con 1 vantaggio + 1
  limite a testa.
- **ADI** e **adaptive step size**: sapere cosa misurano.
- Reactive vs conservative vs predictive (triggering).

---

# CAPITOLI 10 e 11 — GFS/HDFS e Dynamo/BigTable 📄

**Solo teoria d'esame.** Non c'è alcun componente del progetto che usi un file
system distribuito o un DB NoSQL: il nostro storage è EBS (blocchi) e il
modello GGUF è un file di sola lettura replicato da k8s. Studiali per il
programma, non per il progetto.

- **Cap. 10 (GFS/HDFS)**: architettura master/chunkserver vs name/data-node,
  operation log + checkpoint, replica placement, consistenza, write pipeline.
- **Cap. 11 (Dynamo/BigTable)**: consistent hashing + virtual nodes + vector
  clocks vs tablet/SSTable/Chubby + commit log.

---

# COSA STUDIARE IN ORDINE (piano di studio)

| Priorità | Argomento | Capitolo | Perché |
|---|---|---|---|
| 1 | **Autoscaling** (tutto) | 9 | È il cuore del progetto (HPA) |
| 2 | **Autonomic Computing** (MAPE-K, self-*) | 8 | L'HPA è un autonomic manager |
| 3 | **Kubernetes / container orchestration** | 5.3 + 3 | Il nostro cluster intero |
| 4 | **Elasticità vs Scalabilità** | 7 | Il concetto che il progetto dimostra |
| 5 | **Cloud e modelli NIST** | 1 | Classificare il nostro servizio (IaaS) |
| 6 | **Microservizi / SOA / orchestrazione** | 2 | La nostra architettura (sidecar, orchestratore) |
| 7 | **Virtualizzazione** | 4 | Capire le EC2 (veloce) |
| 8 | **Storage distribuito** (GFS/HDFS) | 10 | Solo esame |
| 9 | **DB NoSQL** (Dynamo/BigTable) | 11 | Solo esame |

## Le 10 domande "da esame" che il progetto ti insegna a rispondere

1. "Classifica il nostro servizio con le 5 caratteristiche NIST" → IaaS, tutte e 5 verificate (cap. 1).
2. "Scalabile ma non elastico: perché?" → serve l'aspetto temporale; il nostro cluster dimostra l'elasticità col tempo di reazione dell'HPA (cap. 7).
3. "Cos'è una proxy metric?" → la CPU per il nostro HPA (cap. 9).
4. "Spiega il MAPE-K con un esempio reale" → Metrics Server → HPA → API server (cap. 8).
5. "Cos'è il cooldown e a cosa serve?" → la stabilization window contro l'oscillation (cap. 9).
6. "Reactive vs proactive autoscaling?" → il nostro è reattivo e soffre del boot-up delay (cap. 9).
7. "Cos'è lo spec e cos'è lo status in k8s?" → Deployment `replicas:2` vs pod reali (cap. 5).
8. "Self-healing con un esempio" → il Deployment che ripristina i pod morti (cap. 8).
9. "Over vs under provisioning?" → 2 pod max con carico alto = under; 2 pod con 1 utente = over (cap. 9).
10. "Cos'è l'ADI?" → la metrica che misurerebbe quanto spesso usciamo dall'intervallo target (cap. 9).

---

*Sorgente teoria: `notes/01- CC/main.md` (corso Cloud Computing). Sorgente
progetto: `Plans/RESOCONTO.md` (stato completo), `Plans/HARDENING.md`
(protezioni), `Plans/PLAN.md` (decisioni), `MEASURE.md` (misure).*
