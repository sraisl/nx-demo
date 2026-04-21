# Nx Monorepo Demo

A polyglot monorepo demo setup using Nx, Mise, pnpm, Astro, and Spring Boot.

## Features
- **Nx Monorepo**: Managed without Nx Cloud.
- **Mise**: Tool versioning for Node, pnpm, Java, Maven, Helm, and Just.
- **Astro**: Modern frontend in `apps/frontend`.
- **Spring Boot (Kotlin/Maven)**: Backend in `apps/backend`.
- **Shared Types**: TypeScript interfaces in `libs/shared-types`.
- **Docker & Helm**: Containerization and K8s manifests at the app level.
- **Justfile**: Task runner for local development.
- **GitHub Actions**: CI pipeline using `nx affected`.

## Getting Started
1. Install [Mise](https://mise.jdx.dev/).
2. Run `just install`.
3. Use `just --list` to see available commands.

## CI/CD
The GitHub Actions workflow in `.github/workflows/ci.yml` automatically:
- Builds only affected projects.
- Verifies Docker builds.
- Packages Helm charts and uploads them as artifacts.
