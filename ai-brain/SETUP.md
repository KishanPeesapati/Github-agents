# ai-brain setup (office laptop)

## 1. Create folders
C:\Users\<you>\ai-brain\.github\agents
C:\Users\<you>\ai-brain\.github\prompts
C:\Users\<you>\ai-brain\docs\components

## 2. Create files and paste contents from GitHub
.github\agents\debugger.agent.md
.github\agents\lean-coder.agent.md
.github\prompts\map-component.prompt.md
.github\prompts\update-map.prompt.md
docs\system-map.md
docs\known-issues.md
docs\glossary.md
docs\local-setup.md

## 3. Add to workspace
File -> Add Folder to Workspace -> ai-brain -> save workspace

## 4. Workspace settings
Ctrl+Shift+P -> Preferences: Open Workspace Settings (JSON)
Paste contents of workspace-settings.json inside "settings": { ... }
Replace <you> with your username. Reload window.

## 5. Verify
Ctrl+Shift+P -> Chat: Open Customizations
Should list: debugger, lean-coder, map-component, update-map

## 6. Fill in docs\local-setup.md
Startup script path (common utils), test commands, log location.

## Daily use
- New component: /map-component (agent mode, Auto model)
- Bug: switch to debugger, paste exact error/log + input
- Root cause confirmed: tell debugger "log it"
- Small edit: lean-coder + #selection or #file, one message
- After code changes: /update-map
- New task = new chat
