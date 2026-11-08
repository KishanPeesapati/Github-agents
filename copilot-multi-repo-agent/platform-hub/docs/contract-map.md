# JSON Contract Map

| Contract | Version | File (repo/path) | Producer | Consumers | Transport |
|---|---|---|---|---|---|
| MaintenanceRequest | v1 | customer-api/src/main/resources/schemas/maintenance-request.v1.json | customer-api | servicing-orchestrator | Kafka topic `maint.requests` |
| RoutingDecision | v1 | servicing-orchestrator/contracts/routing-decision.v1.json | servicing-orchestrator | notification-service | REST POST /notify |

## Compatibility rules
- Adding optional fields: non-breaking.
- Removing/renaming fields or changing types: breaking → new version file (v2) and dual support.
