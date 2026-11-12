# System Map — <business area>
Keep under ~100 lines. Index only; details live in components/.

## Component graph
```mermaid
graph LR
  A[component-a] -->|calls / event| B[component-b]
  B -->|timer: 15m retry| B
```

## Components
| Component | Purpose (1 line) | Workspace folder | Doc |
|---|---|---|---|
| component-a | ... | ... | components/component-a.md |

## Shared dependencies
- <DB / queue / LLM / email> — used by: ...

## Business flows
- <Scenario>: comp-a → comp-b → comp-c
