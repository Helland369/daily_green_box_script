#!/usr/bin/env bash
set -euo pipefail

REPO="$HOME/path/to/repo"
BRANCH="mian"
FILE="greenbox.txt"

cd "$REPO"

if ! git switch "$BRANCH"; then
    git checkout "$BRANCH"
fi

git fetch -q origin "$BRANCH" || true

if git log --since=midnight --pretty=oneline -1 >/dev/null 2>&1; then
    echo "Already gained a green box to day!"
    exit 0
fi

timestamp="$(date -Is)"
echo "$timestamp" >> "$FILE"

git add "$FILE"
git commit -m "Daily green box $timestamp"
git push origin "$BRANCH"

echo "Dayli green box achieved"
