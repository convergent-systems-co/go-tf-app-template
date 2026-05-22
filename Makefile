# Defaults
GO        ?= go
GOFLAGS   ?= -trimpath
APP       ?= app
ENV       ?= dev

.PHONY: help build test lint fmt tidy tf-init tf-plan tf-apply tf-fmt clean

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-20s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build the binary into dist/
	mkdir -p dist
	$(GO) build $(GOFLAGS) -o dist/$(APP) ./src/cmd/$(APP)

test: ## Run unit tests across workspace modules
	@set -e; \
	$(GO) list -m -f '{{.Dir}}' | while IFS= read -r dir; do \
		if (cd "$$dir" && $(GO) list ./... 2>/dev/null | grep -q .); then \
			(cd "$$dir" && $(GO) test ./... -race); \
		fi; \
	done

lint: ## Run golangci-lint across workspace modules
	@set -e; \
	$(GO) list -m -f '{{.Dir}}' | while IFS= read -r dir; do \
		if (cd "$$dir" && $(GO) list ./... 2>/dev/null | grep -q .); then \
			(cd "$$dir" && golangci-lint run); \
		fi; \
	done

fmt: ## Run gofmt + terraform fmt
	gofmt -s -w .
	terraform fmt -recursive infra/

tidy: ## go mod tidy across the workspace
	$(GO) work sync

tf-init: ## Init the selected TF env
	cd infra/terraform/envs/$(ENV) && terraform init

tf-plan: ## Plan against the selected TF env
	cd infra/terraform/envs/$(ENV) && terraform plan

tf-apply: ## Apply the selected TF env
	cd infra/terraform/envs/$(ENV) && terraform apply

tf-fmt: ## Format TF files
	terraform fmt -recursive infra/

clean: ## Remove build artifacts
	rm -rf dist/
