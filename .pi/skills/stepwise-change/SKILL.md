---
name: stepwise-change
description: Use for any code change in any repository. Enforces the draft-approve-apply-user-tests loop, tool limits, and scope control.
---

# Stepwise change protocol

## Allowed actions
| Action | Rule |
|---|---|
| Read a file named in the prompt | Always |
| Read other files / grep / find | Ask first |
| Edit or write | Only after explicit "apply" |
| Tests, lint, format, make | Never; the user runs them |
| git | Never, except read-only inspection explicitly authorized by a command |

## Per step
1. Draft exactly one small step: files, snippets, rationale.
2. Flag dependencies outside scope and propose deferring them.
3. Stop and ask "Apply?".
4. Apply only the approved diff.
5. Hand off for testing; do not start the next step.

## Anti-patterns
- Bundling unrelated changes.
- Widening scope just to make a step runnable.
- Running tests "to be helpful".
- Editing before approval.
