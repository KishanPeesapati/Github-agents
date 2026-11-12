---
description: Refresh a component doc after code changes (fix only what differs)
agent: agent
---
Compare `ai-brain/docs/components/${input:name:component name}.md` with the current code.
Fix only lines that are wrong or missing. Do not rewrite the file.
Update "Last verified" with today's date and current commit hash.
If connections changed, update `ai-brain/docs/system-map.md` too.
Reply with a 3-line summary of what changed.
