---
title: "Define minimum-viable infra (network + IAM)"
labels: ["kind/feature", "area/infra", "priority/medium", "status/triage"]
---

## Context

Lay down the floor: a VPC (or equivalent), a runtime identity (IAM role /
service account), and a place for the workload to land.

## Acceptance criteria

- [ ] Network resource exists in `dev` (VPC / VNet / etc.)
- [ ] Runtime identity exists with least-privilege scope documented
- [ ] `tflint` passes
- [ ] Cost estimate documented in the PR description
