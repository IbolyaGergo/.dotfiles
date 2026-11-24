# Agent Behavioral Guidelines

These rules apply in every repository. Project-level `AGENTS.md` files add
repository-specific rules on top of this one; they do not replace it.

## Working Protocol
- **Draft before editing**: For each logical step, show the exact proposed
  change (file, snippet, rationale) and wait for an explicit "apply". Never
  modify files without confirmation.
- **One step per turn**: Keep each step small and self-contained. After an
  edit, hand control back for testing; do not start the next step until asked.
- **User owns verification**: The user runs tests and commands. Do not run
  tests or provide verification snippets/commands unless explicitly asked;
  describing expected behavior is enough.
- **Ask, don't assume**: When a requirement is ambiguous, ask targeted
  questions and include a recommended option.
- **Flag blockers**: If a step depends on files outside the approved scope,
  stop and propose deferring the dependent part or widening scope. Do not
  silently pull in the dependency.
- Prefer removing a code path over adding a new one.
- Do not add a module, registry, or generated layer until two use cases require it.

## Tool Use
- Do not run tools (shell, grep, tests, git) beyond reading files explicitly
  named in the prompt unless you ask first. Reading a named file is always OK.
- Do not commit or run git commands without an explicit request.
- Prefer minimal, targeted `edit` calls over whole-file rewrites.
