#!/usr/bin/env bash
# Usage: ./push-all.sh <branch> "<commit message>"
# Run from the parent folder that contains all repo folders.
set -euo pipefail
BRANCH="${1:?branch required}"; MSG="${2:?commit message required}"
case "$BRANCH" in main|master|develop) echo "Refusing to push to $BRANCH"; exit 1;; esac

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
CHANGED=()
for d in "$ROOT"/*/; do
  [ -d "$d/.git" ] || continue
  [ "$(basename "$d")" = "platform-hub" ] && [ -z "$(git -C "$d" status --porcelain)" ] && continue
  if [ -n "$(git -C "$d" status --porcelain)" ]; then
    CHANGED+=("$d"); echo "=== $(basename "$d") ==="; git -C "$d" status --short
  fi
done
[ ${#CHANGED[@]} -eq 0 ] && { echo "No changes."; exit 0; }

read -rp "Commit and push these ${#CHANGED[@]} repo(s) to '$BRANCH'? [y/N] " ok
[ "$ok" = "y" ] || exit 0

for d in "${CHANGED[@]}"; do
  git -C "$d" switch "$BRANCH" 2>/dev/null || git -C "$d" switch -c "$BRANCH"
  git -C "$d" add -A
  git -C "$d" commit -m "$MSG"
  git -C "$d" push -u origin "$BRANCH"
  echo "Pushed $(basename "$d") -> $BRANCH"
done
