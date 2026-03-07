# AGENTS.md Docs

This repository contains piece-meal `AGENTS.md` docs that can be pieced together to form a comprehensive agents file for any project you are working on. Each section covers a specific aspect of agent design, implementation, and usage.

## Hook Scripts

Set the following in your local `.claude/settings.local.json` file:

```json
"hooks": {
"PreToolUse": [
    {
    "matcher": "Bash",
    "hooks": [
        {
        "type": "command",
        "command": "bash .claude/hooks/block-npm-pnpm.sh"
        }
    ]
    }
]
}
```
