#!/usr/bin/env bash
# CSC-531 Lab 02: one-command submission from a student Codespace.
set -euo pipefail
cd "$(dirname "$0")"

if [[ ! -f .classroom50.yaml ]] || ! grep -Eq '^assignment:[[:space:]]*"?lab02-searching"?[[:space:]]*$' .classroom50.yaml; then
  echo "ERROR: Open your accepted Lab 02 student repository in Codespaces."
  exit 1
fi
if [[ "$(git branch --show-current)" != "main" ]]; then
  echo "ERROR: Switch to main before submitting."; exit 1
fi
for file in lab02.cpp main.cpp REPORT.md; do
  if [[ ! -f "$file" ]]; then
    echo "ERROR: Missing required assignment file: $file"; exit 1
  fi
done
if ! git diff --quiet HEAD -- lab02.hpp .classroom50.yaml .github/workflows/autograde.yaml; then
  echo "ERROR: A protected header or Classroom 50 configuration file has changed."
  echo "Keep lab02.hpp and the grader setup unchanged."; exit 1
fi

echo "== CSC-531 Lab 02 submission =="
git add -- lab02.cpp main.cpp REPORT.md
if ! git diff --cached --quiet; then
  git commit -m "Submit Lab 02 work"
else
  echo "No new assignment changes; submitting latest committed version."
fi

git push origin main
tag="submit/$(date -u +%Y%m%dT%H%M%SZ)-$(git rev-parse --short HEAD)"
if git show-ref --quiet --verify "refs/tags/$tag"; then
  tag="$tag-$RANDOM"
fi
git tag "$tag"
git push origin "$tag"

echo
echo "SUBMISSION SENT: $tag"
echo "Check GitHub Actions for the grading run and Releases for your score."
if [[ -n "$(git status --porcelain)" ]]; then
  echo "Uncommitted files not included in this submission:"
  git status --short
fi
