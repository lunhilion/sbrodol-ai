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
| **`lite`** *(Default)* | **Il Mentore Didattico** | Spiega la teoria fondamentale, il ciclo di vita, heap/stack ed evita acronimi oscuri. Perfetto per l'onboarding. |
| **`full`** | **Il Principal Architect** | Complessità $O(n)$, pattern architetturali (SOLID, GoF), disamina di almeno 2 alternative scartate, walkthrough riga per riga del diff. |
| **`audit`** | **Il Paranoico della Sicurezza** | Zero-trust. FMEA (Failure Mode and Effects Analysis), threat modeling, checklist ossessiva dei casi limite (`null`, overflow, race conditions). |
| **`fanatico`** | **Il Purista Dogmatico** | Cita le specifiche RFC/ISO a memoria. Rifiuta con sdegno quick-fix e scorciatoie. Esige disaccoppiamento totale e conformità assoluta. |
| **`logorroico`** | **Il Re della Macchinetta del Caffè** | **Meme Mode Suprema.** Fiume di parole inarrestabile. Obbligo tassativo di inserire in OGNI risposta un aneddoto personale o surreale vagamente collegato per analogia. |

> **Perché `lite` è il default?** Perché la verbosità massima deve essere una scelta consapevole, non una tassa su ogni singola risposta. Applicare complessità $O(...)$, pattern GoF e due alternative scartate a un fix da due righe è sproporzionato, e spinge l'agente a obbedire a metà — il modo peggiore. Chi vuole il trattato lo chiede: `/sbrodol-ai full`.

---

## 📦 Installazione

### Claude Code

Come plugin, dal repository:

```bash
/plugin marketplace add lunhilion/sbrodol-ai
/plugin install sbrodol-ai
```

Oppure manualmente, copiando la sola skill nella cartella globale:

```bash
git clone https://github.com/lunhilion/sbrodol-ai
cp -r sbrodol-ai/skills/sbrodol-ai ~/.claude/skills/
```

### Antigravity (CLI / Desktop)

```bash
# Da remoto
agy plugin install https://github.com/lunhilion/sbrodol-ai

# Da directory locale
agy plugin install /percorso/della/repo
```

Gestione dei plugin installati:

```bash
agy plugin list
agy plugin enable sbrodol-ai
agy plugin disable sbrodol-ai
```

Per l'installazione manuale globale, copia `skills/sbrodol-ai/` dentro `~/.gemini/config/skills/sbrodol-ai/`.

### Cursor

Copia `.cursor/rules/sbrodol-ai.mdc` nella cartella `.cursor/rules/` del tuo progetto.
La rule è impostata su `alwaysApply: false`: si attiva su richiesta, non a ogni messaggio.

---

## 🚀 Utilizzo

### Invocazione

In Claude Code, tramite slash command:

```
/sbrodol-ai
```

Oppure in linguaggio naturale, su qualsiasi piattaforma:

* `sbrodola`
* `modalità sbrodola`
* `logorroico mode`
* `spiega tutto`

### Cambio livello

```
/sbrodol-ai lite
/sbrodol-ai full
/sbrodol-ai audit
/sbrodol-ai fanatico
/sbrodol-ai logorroico
/sbrodol-ai off
```

Per disattivare valgono anche *"basta sbrodolare"*, *"stop sbrodolai"* e *"modalità normale"*.

---

## 📂 Struttura del Repository

```text
.
├── skills/
│   └── sbrodol-ai/
│       └── SKILL.md              # ← FONTE DI VERITÀ: la definizione della skill
├── commands/
│   └── sbrodol-ai.md             # Slash command /sbrodol-ai (Claude Code)
├── .claude-plugin/
│   ├── plugin.json               # Manifest plugin Claude Code
│   └── marketplace.json          # Espone il repo come marketplace installabile
├── plugin.json                   # Manifest plugin Antigravity
├── .agents/skills/sbrodol-ai     # → symlink a skills/sbrodol-ai (discovery workspace)
├── .cursor/rules/sbrodol-ai.mdc  # ← generato da SKILL.md
├── scripts/
│   └── sync-surfaces.sh          # Rigenera le superfici derivate
├── LICENSE
└── README.md
```

### Modificare la skill

`skills/sbrodol-ai/SKILL.md` è l'**unica** fonte di verità. Le altre superfici sono
derivate e non vanno mai modificate a mano. Dopo ogni modifica:

```bash
./scripts/sync-surfaces.sh          # rigenera
./scripts/sync-surfaces.sh --check  # verifica (lo stesso controllo gira in CI)
```

---

## 📜 Licenza

[MIT](LICENSE) — Sentiti libero di sbrodolare responsabilmente.
