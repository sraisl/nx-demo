# Nx Monorepo Justfile

# Default recipe: list all recipes
default:
    @just --list

# Install all tools and dependencies
install:
    mise install
    pnpm install

# Build everything
build-all:
    npx nx run-many -t build

# Run all tests
test-all:
    npx nx run-many -t test

# Build only affected projects
build-affected:
    npx nx affected -t build

# Start frontend in dev mode
dev-frontend:
    npx nx serve frontend

# Start backend in dev mode
dev-backend:
    npx nx serve backend

# Build all Docker images
docker-all:
    npx nx run-many -t docker-build

# Package all Helm charts
helm-all:
    npx nx run-many -t helm-package

# Lint all Helm charts
helm-lint:
    npx nx run-many -t helm-lint

# Show dependency graph
graph:
    npx nx graph

# Preview a release (dry-run)
release-check:
    npx nx release --dry-run

# Preview a release with specific increment (patch, minor, major)
release-patch:
    npx nx release patch --dry-run

# Clean all build artifacts
clean:
    rm -rf dist
    npx nx run-many -t build --clean # If executors support it, otherwise manual:
    rm -rf apps/backend/target
