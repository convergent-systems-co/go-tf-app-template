# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed (BREAKING — template layout)

- All Go code now lives under `src/` (`src/cmd/app`, `src/internal`, `src/pkg`,
  `src/plugins`). Module paths updated accordingly. Existing repos generated
  from earlier revisions of this template are unaffected; new uses get the
  new layout. Per `Code.md §2.3`, template layout is treated as a public API.

### Added

- `web/<site-name>/` convention for front-end sites (Astro default). See
  `web/README.md` for the recipe. `.gitignore` covers Node/Astro build
  artifacts; `.dockerignore` excludes `web/` from the Go container build.
