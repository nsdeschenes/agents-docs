#!/usr/bin/env bash
# Pre-tool hook: block npm and bun, suggest pnpm

input=$(cat)
command=$(echo "$input" | python3 -c "import sys, json; print(json.load(sys.stdin).get('tool_input', {}).get('command', ''))" 2>/dev/null)

if echo "$command" | grep -qE '(^|[[:space:]&|;`])(npm|bun)([[:space:]]|$)'; then
  echo "Use 'pnpm' instead of npm/bun. This project uses pnpm as its package manager." >&2
  exit 2
fi
