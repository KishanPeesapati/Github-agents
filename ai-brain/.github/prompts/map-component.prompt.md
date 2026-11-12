---
description: Map one component into the second brain (run once per component)
agent: agent
---
Analyze the component at ${input:path:workspace folder or path of the component}.
Create `ai-brain/docs/components/${input:name:short component name}.md`. One line per item, no pasted code, cite file:line.

Sections:
- Last verified: <today's date> @ <current git commit short hash of that repo>
- Purpose (2 lines)
- Entry points (routes, handlers, consumers, schedulers) with file:line
- Key files: one line each
- Main flow: Mermaid sequenceDiagram; mark waits, timers, timeouts, retries
- Timers: file:line | interval | source (hardcoded/config/env) | triggers
- External deps (APIs, DB, queues, LLM, email)
- Config/env vars that change behavior
- Key log messages and where errors are caught

Then update `ai-brain/docs/system-map.md`: add/refresh this component's row and its links in the Mermaid graph. Keep system-map.md under ~100 lines.
