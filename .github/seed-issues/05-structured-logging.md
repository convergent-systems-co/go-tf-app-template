---
title: "Add structured logging (slog) with context"
labels: ["kind/feature", "area/core", "priority/medium", "status/triage"]
---

## Context

Use Go's standard library `log/slog` for structured logging. JSON in non-tty
output; text in tty. Include a request-scoped logger that flows via context.

## Acceptance criteria

- [ ] `src/pkg/log/` provides a constructor returning a `*slog.Logger`
- [ ] `src/internal/middleware/` (or equivalent) injects the logger into request context
- [ ] No bare `fmt.Println` / `log.Println` in production paths
- [ ] At least one unit test exercises log output via `slog.NewTextHandler`
