---
description: Draft a Conventional Commit message from staged changes; do not commit
argument-hint: "[scope]"
---
This command authorizes read-only git inspection only:
`git status --short`, `git diff --cached`, `git diff --cached --stat`,
and optionally `git log -5 --format=%s` for style.
Do not inspect unstaged diffs, stage, unstage, commit, push, or modify files.

Draft one Conventional Commit message for the staged changes:
- Subject: `type(scope): summary`, <= 72 chars, imperative.
  Scope: ${1:-infer from the staged diff}.
- Body: one bullet per meaningful change, plus intentional
  non-changes and deferred work. Base every bullet on `git diff --cached`.
- If the motivation is not evident from the staged diff, ask one
  targeted question instead of inventing it.
- If nothing is staged, return only: `No staged changes.`
- If the staged changes are not one logical change, recommend
  splitting them instead of drafting a message.
- Match the repository's recent commit style when available.

Return only the message in a fenced block.
