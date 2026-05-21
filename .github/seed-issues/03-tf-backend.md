---
title: "Initialize Terraform remote state backend"
labels: ["kind/chore", "area/infra", "priority/high", "status/triage"]
---

## Context

`infra/terraform/envs/{dev,stg,prod}/backend.tf` ships as a stub. Choose a
backend (S3 + DynamoDB lock recommended for AWS; HCP Terraform for HashiCorp
managed; Azure Storage for Azure) and wire it in.

## Acceptance criteria

- [ ] Backend bucket / workspace exists in each env
- [ ] `backend.tf` is filled in for `dev`, `stg`, `prod`
- [ ] `make tf-init ENV=dev` succeeds
- [ ] Backend choice recorded as ADR (`docs/adr/0001-tf-backend.md`)
- [ ] CI has the backend credentials configured (via OIDC, ideally — no long-lived keys)
