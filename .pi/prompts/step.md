---
description: Draft one small approved step, then stop
argument-hint: "<goal or next step>"
---
Goal: ${1:-continue the current feature}

Follow AGENTS.md. Reply with only:
1. **State**: Goal / Current step / Allowed actions
   (Allowed = read named files; edit only after "apply";
    never tests, lint, format, or git).
2. **Draft**: exact files/snippets you would change and why.
3. **Risk**: anything affecting files outside this scope.
4. **Question**: end with "Apply? (yes/no)".

Do not edit, run commands, or start the next step.
