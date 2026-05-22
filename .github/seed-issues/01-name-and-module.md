---
title: "Set application name and Go module path"
labels: ["kind/chore", "area/core", "priority/high", "status/triage"]
---

## Context

The template's Go modules use `{{REPO_NAME}}` as a placeholder in the module
path (`github.com/convergent-systems-co/{{REPO_NAME}}/...`). Replace it.

## Acceptance criteria

- [ ] `src/cmd/app/go.mod`, `src/internal/go.mod`, `src/pkg/go.mod` use the real module path
- [ ] `src/cmd/app/main.go`'s "hello from" string is updated
- [ ] `go work sync && go build ./...` succeeds
- [ ] README has the project's real name in the H1
