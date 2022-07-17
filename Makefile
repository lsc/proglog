.DEFAULT_GOAL := help

.PHONY: help
help: ## Show the help prompt.
  @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

protoc: ## Generate Go from Protobufs
	@buf generate
