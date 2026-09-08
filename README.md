# SbrodolAI 🍝

> *"Perché usare pochi token quando molti token elevano l'intelletto e chiariscono l'universo?"*
>
> *"Why use few token when many token elevate the intellect and clarify the universe?"*

**SbrodolAI** is the communication protocol for AI agents that radically inverts the philosophy of the well-known *Caveman skill*.

Where Caveman strips tokens to the bone with a telegraphic, grunting style, SbrodolAI is built for people who refuse naked code and demand **analytical depth, architectural context, impeccable teaching — or purely torrential entertainment**.

> **About the name.** *Sbrodolare* is Italian for "to spill over, to sprawl, to go on and on far past the point". The pun (*sbrodol* + *AI*) only works in Italian, so it stays — and so do the two top levels, `fanatico` and `logorroico`. You do not need to speak Italian to use them: you just type them. The skill itself is written in English and answers in whatever language you speak to it.

---

## Why SbrodolAI?

* **Teaching & mentoring**: Ideal for junior developers or anyone learning a new framework; always explains the *why*, the mental model, and what happens underneath.
* **Architecture & ADRs**: Produces enterprise-grade justifications, with formal trade-offs and a review of the alternatives that were rejected.
* **Audit & security**: Paranoid-grade analysis of failure modes, invariants and threats.
* **Formal rigor**: Obsessive respect for official standards and specifications (RFCs, ISO, Clean Code).
* **Supreme meme mode**: An unstoppable rambling register, with a mandatory unsolicited anecdote in every answer.

---

## The 5 Levels of Sbrodolamento

| Level | Archetype | Core behavior |
| :--- | :--- | :--- |
| **`lite`** *(Default)* | **The Teaching Mentor** | Explains the underlying theory, the lifecycle, heap vs stack, and never drops an unexpanded acronym. Perfect for onboarding. |
| **`full`** | **The Principal Architect** | Complexity $O(n)$, architectural patterns (SOLID, GoF), at least 2 discarded alternatives, line-by-line diff walkthrough. |
| **`audit`** | **The Security Paranoid** | Zero-trust. FMEA (Failure Mode and Effects Analysis), threat modeling, obsessive edge-case checklist (`null`, overflow, race conditions). |
| **`fanatico`** | **The Dogmatic Purist** | Cites RFC/ISO specifications. Rejects quick fixes and shortcuts with disdain. Demands total decoupling and absolute conformance. |
| **`logorroico`** | **The Coffee Machine King** | **Supreme meme mode.** An unstoppable river of words. Every single answer must contain a personal or surreal anecdote, connected to the topic by the loosest possible analogy. |

> **Why is `lite` the default?** Because maximum verbosity should be a deliberate choice, not a tax on every single answer. Applying $O(...)$ analysis, GoF patterns and two discarded alternatives to a two-line fix is disproportionate, and it pushes the model to comply halfway — the worst possible outcome. If you want the treatise, ask for it: `/sbrodol-ai full`.

---

## Installation

### `skills` CLI (any agent)

The fastest route, and the one that works across Claude Code, Cursor, Copilot, Gemini and the other supported agents:

```bash
npx skills add lunhilion/sbrodol-ai
```

To try it without installing anything:

```bash
npx skills use lunhilion/sbrodol-ai@sbrodol-ai
```

### Claude Code

As a plugin, from this repository:

```bash
/plugin marketplace add lunhilion/sbrodol-ai
/plugin install sbrodol-ai
```

Or manually, copying just the skill into your global folder:

```bash
git clone https://github.com/lunhilion/sbrodol-ai
cp -r sbrodol-ai/skills/sbrodol-ai ~/.claude/skills/
```

### Antigravity (CLI / Desktop)

```bash
# From a remote repository
agy plugin install https://github.com/lunhilion/sbrodol-ai

# From a local directory
agy plugin install /path/to/the/repo
```

Managing installed plugins:

```bash
agy plugin list
agy plugin enable sbrodol-ai
agy plugin disable sbrodol-ai
```

For a manual global installation, copy `skills/sbrodol-ai/` into `~/.gemini/config/skills/sbrodol-ai/`.

### Cursor

Copy `.cursor/rules/sbrodol-ai.mdc` into your project's `.cursor/rules/` folder.
The rule ships with `alwaysApply: false`: it activates on request, not on every message.

---

## Usage

### Invocation

In Claude Code, through the slash command:

```
/sbrodol-ai
```

Or in plain language, on any platform:

* `sbrodola`
* `sbrodolai`
* `verbose mode`
* `explain everything`

### Switching levels

```
/sbrodol-ai lite
/sbrodol-ai full
/sbrodol-ai audit
/sbrodol-ai fanatico
/sbrodol-ai logorroico
/sbrodol-ai off
```

To turn it off you can also say *"stop sbrodolai"*, *"basta sbrodolare"*, *"normal mode"* or *"be brief"*.

### What it will not do

SbrodolAI stretches the explanation, never the truth. Regardless of the active level, it will not
trade correctness for length, will not bury a destructive-command warning in three paragraphs of
digression, will not inflate a yes-or-no question, and will drop the whole act the moment you ask
it to be brief.

---

## Repository Structure

```text
.
├── skills/
│   └── sbrodol-ai/
│       └── SKILL.md              # ← SOURCE OF TRUTH: the skill definition
├── commands/
│   └── sbrodol-ai.md             # The /sbrodol-ai slash command (Claude Code)
├── .claude-plugin/
│   ├── plugin.json               # Claude Code plugin manifest
│   └── marketplace.json          # Exposes the repo as an installable marketplace
├── plugin.json                   # Antigravity plugin manifest
├── .agents/skills/sbrodol-ai     # → symlink to skills/sbrodol-ai (workspace discovery)
├── .cursor/rules/sbrodol-ai.mdc  # ← generated from SKILL.md
├── scripts/
│   └── sync-surfaces.sh          # Regenerates the derived surfaces
├── LICENSE
└── README.md
```

### Editing the skill

`skills/sbrodol-ai/SKILL.md` is the **only** source of truth. Every other surface is derived and
must never be edited by hand. After each change:

```bash
./scripts/sync-surfaces.sh          # regenerate
./scripts/sync-surfaces.sh --check  # verify (the same check runs in CI)
```

---

## License

[MIT](LICENSE)

> *"Sentiti libero di sbrodolare responsabilmente."*
>
> *"Feel free to sbrodolare responsibly."*
