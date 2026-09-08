#!/usr/bin/env bash
#
# Genera le superfici derivate a partire dall'unica fonte di verità
# (skills/sbrodol-ai/SKILL.md), così che non possano divergere.
#
#   .agents/skills/sbrodol-ai  -> symlink alla cartella canonica
#   .cursor/rules/*.mdc       -> rigenerato con il frontmatter di Cursor
#
# Uso:
#   scripts/sync-surfaces.sh           rigenera in place
#   scripts/sync-surfaces.sh --check   non scrive nulla; esce 1 se è fuori sync
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

SRC="skills/sbrodol-ai/SKILL.md"
CURSOR_RULE=".cursor/rules/sbrodol-ai.mdc"
AGENTS_LINK=".agents/skills/sbrodol-ai"
AGENTS_TARGET="../../skills/sbrodol-ai"

[ -f "$SRC" ] || { echo "fonte mancante: $SRC" >&2; exit 1; }

CHECK=0
[ "${1:-}" = "--check" ] && CHECK=1

# Corpo verbatim; del frontmatter si scarta `name:` (Cursor non lo usa) e si
# aggiunge `alwaysApply: false`, che rende la rule agent-requested.
render_cursor_rule() {
  awk '
    d < 2 && /^---$/ {
      d++
      if (d == 1) { print "---" } else { print "alwaysApply: false"; print "---" }
      next
    }
    d == 1 && /^name:/ { next }
    { print }
  ' "$SRC"
}

fail=0

if [ "$CHECK" = 1 ]; then
  if [ "$(readlink "$AGENTS_LINK" 2>/dev/null || true)" != "$AGENTS_TARGET" ]; then
    echo "FUORI SYNC: $AGENTS_LINK non è un symlink a $AGENTS_TARGET" >&2
    fail=1
  fi
  if ! render_cursor_rule | diff -q - "$CURSOR_RULE" >/dev/null 2>&1; then
    echo "FUORI SYNC: $CURSOR_RULE non corrisponde a $SRC" >&2
    render_cursor_rule | diff -u "$CURSOR_RULE" - | head -40 >&2 || true
    fail=1
  fi
  if [ "$fail" = 1 ]; then
    echo "Rigenera con: scripts/sync-surfaces.sh" >&2
    exit 1
  fi
  echo "Superfici allineate."
  exit 0
fi

mkdir -p "$(dirname "$AGENTS_LINK")" "$(dirname "$CURSOR_RULE")"
if [ "$(readlink "$AGENTS_LINK" 2>/dev/null || true)" != "$AGENTS_TARGET" ]; then
  rm -rf "$AGENTS_LINK"
  ln -s "$AGENTS_TARGET" "$AGENTS_LINK"
fi
render_cursor_rule > "$CURSOR_RULE"
echo "Superfici rigenerate da $SRC."
