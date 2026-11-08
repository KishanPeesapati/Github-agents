# Business Flow (keep this current — the agent reads it every time)

## Repos and ownership
| Repo | Responsibility | Tech | Build/Test command |
|---|---|---|---|
| customer-api | Receives customer maintenance requests | Java/Spring | `./mvnw test` |
| servicing-orchestrator | Classifies and routes requests, agent logic | Python | `pytest` |
| notification-service | Sends confirmations | Node | `npm test` |

## End-to-end flow
1. Request arrives at `customer-api` → validates and emits `MaintenanceRequest`.
2. `servicing-orchestrator` consumes `MaintenanceRequest` → classifies → emits `RoutingDecision`.
3. `notification-service` consumes `RoutingDecision` → notifies the customer.

## Business rules / glossary
- Auth Rep: authorized representative on an account. (add your terms here)
