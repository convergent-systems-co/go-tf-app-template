# go-tf-app-template

GitHub template repository for Go + Terraform projects in the
[convergent-systems-co](https://github.com/convergent-systems-co) org.

> Use this template, don't fork it. Click **Use this template** above.

## What you get

- Go workspace skeleton under `src/` (`src/cmd/app`, `src/internal`, `src/pkg`, `src/plugins`)
- Front-end site convention under `web/<site-name>/` (Astro default; see `web/README.md`)
- Terraform infra layout (`modules/`, `envs/dev/stg/prod`)
- Multi-stage distroless Dockerfile
- Goreleaser config (cross-platform builds + SPDX SBOM via syft)
- GitHub Actions: CI (lint/test/build), TF plan, secret scan (trufflehog), release
- Structured issue templates (bug / feature / RFC / chore)
- 11 seed issues filed automatically on first push
- 28-label org standard installed automatically
- Agentic issue triage via `repo-standards@v1` (Copilot primary, REST fallback)
- Weekly label cleanup
- ADR (MADR) starter, CHANGELOG (Keep-a-Changelog), Code of Conduct
- DevContainer (Go + Terraform + tflint + gh)
- AGPL-3.0 license by default; seed issue 00 lets the consumer change it

## How to use

1. Click **Use this template** on this repo
2. Push your first commit to `main`
3. The bootstrap workflow runs once:
   - Enables secret scanning + push protection (GHAS / public repos only)
   - Installs the 28-label standard
   - Files the 11 seed issues
   - Files a "Welcome" meta-issue
   - Removes itself
4. Work through the seed issues in order, starting with the license choice

## License

AGPL-3.0. See `LICENSE` and `COPYRIGHT`. Per-project bootstrap may override; see seed issue 00.
