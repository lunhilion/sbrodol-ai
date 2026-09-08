# SbrodolAI 🍝

> *"Perché usare pochi token quando molti token elevano l'intelletto e chiariscono l'universo?"*

**SbrodolAI** è il protocollo di comunicazione per agenti AI che inverte radicalmente la filosofia della celebre *Caveman skill*. 

Mentre Caveman mira a ridurre i token fino all'osso con uno stile telegrafico da cavernicolo, SbrodolAI è concepita per chi rifiuta il codice nudo e crudo e pretende **profondità analitica, contestualizzazione architetturale, didattica impeccabile o puro intrattenimento torrenziale**.

---

## 🎯 Perché SbrodolAI?

* **Didattica & Mentoring**: Ideale per sviluppatori junior o per chi impara un nuovo framework; spiega sempre il *perché*, il modello mentale e cosa accade a basso livello.
* **Architettura & ADR**: Produce giustificazioni di livello Enterprise, con trade-off formali e disamina delle alternative scartate.
* **Audit & Sicurezza**: Analisi paranoid-grade di failure mode, invarianti e minacce.
* **Rigore Formale**: Rispetto maniacale degli standard e delle specifiche ufficiali (RFC, ISO, Clean Code).
* **Meme Mode Suprema**: Una modalità logorroica inarrestabile con aneddoto non richiesto obbligatorio.

---

## 🎚️ I 5 Livelli di Sbrodolamento

| Livello | Archetipo | Comportamento Principale |
| :--- | :--- | :--- |
| **`lite`** | **Il Mentore Didattico** | Spiega la teoria fondamentale, il ciclo di vita, heap/stack ed evita acronimi oscuri. Perfetto per l'onboarding. |
| **`full`** *(Default)* | **Il Principal Architect** | Complessità $O(n)$, pattern architetturali (SOLID, GoF), disamina di almeno 2 alternative scartate, walkthrough riga per riga del diff. |
| **`audit`** | **Il Paranoico della Sicurezza** | Zero-trust. FMEA (Failure Mode and Effects Analysis), threat modeling, checklist ossessiva dei casi limite (`null`, overflow, race conditions). |
| **`fanatico`** | **Il Purista Dogmatico** | Cita le specifiche RFC/ISO a memoria. Rifiuta con sdegno quick-fix e scorciatoie. Esige disaccoppiamento totale e conformità assoluta. |
| **`logorroico`** | **Il Re della Macchinetta del Caffè** | **Meme Mode Suprema.** Fiume di parole inarrestabile. Obbligo tassativo di inserire in OGNI risposta un aneddoto personale o surreale vagamente collegato per analogia. |

---

## 📦 Installazione

### Come Plugin Antigravity (CLI / Desktop)

Puoi installare SbrodolAI direttamente tramite la CLI di Antigravity:

* **Da remoto (GitHub)**:
  ```bash
  agy plugin install https://github.com/<tuo-utente>/sbrodolai
  ```
* **Da directory locale**:
  ```bash
  agy plugin install /percorso/della/repo
  ```

Per verificare i plugin installati o gestirli:
```bash
agy plugin list
agy plugin enable sbrodolai
agy plugin disable sbrodolai
```

### Installazione Manuale (Globale per tutti i progetti)

Se preferisci installare la skill manualmente per renderla disponibile in ogni sessione e progetto:
* Copia la cartella `skills/sbrodolai/` dentro `~/.gemini/config/skills/sbrodolai/`

---

## 🚀 Utilizzo

### Invocazione
Puoi attivare la skill in qualsiasi momento nella chat digitando:
* `/sbrodolai`
* `sbrodola`
* `modalità sbrodola`
* `logorroico mode`

### Cambio Livello
* `/sbrodolai lite`
* `/sbrodolai full`
* `/sbrodolai audit`
* `/sbrodolai fanatico`
* `/sbrodolai logorroico`
* `/sbrodolai off` (oppure *"basta sbrodolare"*, *"stop sbrodolai"*)

---

## 📂 Struttura del Repository

```text
.
├── plugin.json              # Manifest del plugin Antigravity
├── skills/
│   └── sbrodolai/
│       └── SKILL.md         # Definizione universale della skill (Antigravity, Claude Code, Cursor)
├── .agents/
│   └── skills/
│       └── sbrodolai/
│           └── SKILL.md     # Discovery locale del workspace
└── README.md
```

---

## 📜 Licenza

MIT — Sentiti libero di sbrodolare responsabilmente.
