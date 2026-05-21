---
title: "Wire CI: lint + test + build matrix"
labels: ["kind/chore", "area/ci", "priority/high", "status/triage"]
---

## Context

`.github/workflows/ci.yml` exists; confirm it runs lint + test + build on
every PR, and that the Go version matrix includes the target runtime.

## Acceptance criteria

- [ ] `ci.yml` runs on PR + push-to-main
- [ ] Lint step uses `golangci-lint` with `.golangci.yml`
- [ ] Test step runs `go test ./... -race -cover`
- [ ] Build step verifies `make build` succeeds
- [ ] Required status check enabled on the `main` branch protection rule
