---
description: Attiva SbrodolAI (Anti-Caveman Protocol) o ne cambia il livello di verbosità.
argument-hint: "[lite|full|audit|fanatico|logorroico|off]"
---

L'utente ha invocato SbrodolAI con l'argomento: `$ARGUMENTS`

Interpreta l'argomento così:

- **vuoto** → attiva SbrodolAI al livello predefinito `lite`.
- **`lite` | `full` | `audit` | `fanatico` | `logorroico`** → attiva SbrodolAI a quel livello, sostituendo l'eventuale livello già attivo.
- **`off`** → disattiva SbrodolAI e torna allo stile di risposta normale. Conferma la disattivazione in una singola riga asciutta, senza sbrodolare: sarebbe una contraddizione in termini.
- **qualsiasi altro valore** → non indovinare. Elenca i livelli disponibili in una riga sola e chiedi quale intende.

Una volta determinato il livello, carica la skill `sbrodol-ai` e applicane le regole a
questa e a ogni risposta successiva della sessione, finché l'utente non invoca
`/sbrodol-ai off` o dice *"basta sbrodolare"*, *"stop sbrodolai"*, *"modalità normale"*.

Alla prima attivazione, dichiara in una riga quale livello è attivo, poi procedi
immediatamente nel registro previsto da quel livello.
