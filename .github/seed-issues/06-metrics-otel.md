---
title: "Add metrics + tracing (OpenTelemetry exporter)"
labels: ["kind/feature", "area/core", "priority/medium", "status/triage"]
---

## Context

Wire OTel SDK with OTLP exporter. Default to OTLP/HTTP to `localhost:4318`
when `OTEL_EXPORTER_OTLP_ENDPOINT` is unset.

## Acceptance criteria

- [ ] `src/pkg/telemetry/` exports `Setup(ctx) (shutdown func, error)`
- [ ] At least one application metric and one span are emitted
- [ ] Four golden signals covered (latency, errors, throughput, saturation) — even with stub values
- [ ] `OTEL_*` env vars documented in README
