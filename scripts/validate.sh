#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root_dir"

required_files=(
  README.md
  AGENTS.md
  agents/pm.md
  agents/planner.md
  agents/architect.md
  agents/frontend.md
  agents/backend.md
  agents/database.md
  agents/ai.md
  agents/server.md
  agents/devops.md
  agents/security.md
  agents/qa.md
  docs/operating-model.md
  docs/case-study.md
  examples/delegation-brief.md
)

for file in "${required_files[@]}"; do
  if [[ ! -s "$file" ]]; then
    echo "missing or empty: $file" >&2
    exit 1
  fi
done

for file in agents/*.md; do
  for heading in "## Mission" "## Start Checklist" "## Operating Rules" "## Done Checklist" "## Handoff Format"; do
    if ! grep -Fq "$heading" "$file"; then
      echo "$file is missing required heading: $heading" >&2
      exit 1
    fi
  done
done

if grep -RInE '(github_pat_[A-Za-z0-9_]+|ghp_[A-Za-z0-9]+|sk-[A-Za-z0-9]{20,}|BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY)' \
  --exclude-dir=.git .; then
  echo "potential secret detected" >&2
  exit 1
fi

echo "Playbook validation passed."
