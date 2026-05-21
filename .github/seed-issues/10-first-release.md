---
title: "Cut v0.1.0 release with goreleaser config"
labels: ["kind/chore", "area/release", "priority/medium", "status/triage"]
---

## Context

`.goreleaser.yaml` is configured. `release.yml` workflow fires on `v*` tag
and produces archives + SBOM. Cut v0.1.0.

## Acceptance criteria

- [ ] `scripts/release.sh v0.1.0` tags and pushes
- [ ] `release.yml` workflow succeeds
- [ ] GitHub Release page has archives for linux/darwin × amd64/arm64
- [ ] SBOM attached as `sbom.spdx.json`
- [ ] CHANGELOG.md's `[Unreleased]` section is migrated to `[0.1.0] — <date>`
