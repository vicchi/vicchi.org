SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

ifeq ($(.DEFAULT_GOAL),)
ifneq ($(shell test -f .env; echo $$?), 0)
$(error Cannot find a .env file; copy .env.sample and customise)
endif
endif

# Wrap the build in a check for an existing .env file
ifeq ($(shell test -f .env; echo $$?), 0)
include .env
ENVVARS := $(shell sed -ne 's/ *\#.*$$//; /./ s/=.*$$// p' .env )
$(foreach var,$(ENVVARS),$(eval $(shell echo export $(var)="$($(var))")))

.DEFAULT_GOAL := help

# VERSION := $(shell cat ./VERSION)
# COMMIT_HASH := $(shell git log -1 --pretty=format:"sha-%h")
# ECR_REPO_ROOT := refdata

# SEARCH_INDICES := refdata-${REFDATA_VERSION}-search-${MEILISEARCH_VERSION}
# SEARCH_BUCKET := s3://kamma-data/reference-data-$(subst .,-,${REFDATA_VERSION})/search

# BUILD_FLAGS ?= 

SERVE_PORT := 8001
ASSETS_DIR := site/themes/staticfy/assets


.PHONY: help
help: ## Show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' Makefile

.PHONY: setup
setup:
	yarn install
	pip install --upgrade pip
	pip install -r requirements.txt

.PHONY: theme
theme: theme-images theme-scripts theme-styles theme-css	## Build the site theme

.PHONY: theme-images
theme-images: src/images/* node_modules/leaflet/dist/images/*.png
	cp $? $(ASSETS_DIR)/images/

.PHONY: theme-scripts
theme-scripts: node_modules/leaflet/dist/leaflet.js*
	cp $? $(ASSETS_DIR)/js/

.PHONY: theme-styles
theme-styles: node_modules/leaflet/dist/*.css
	cp $? $(ASSETS_DIR)/css/

.PHONY: theme-css
theme-css: tailwind.config.js src/css/tailwind.css
	npx tailwindcss --input src/css/tailwind.css --output $(ASSETS_DIR)/css/tailwind.css


.PHONY: clean
clean: ## Clean everything
	(cd site && nikola clean)

.PHONY: site
site:	## Build the site content
	(cd site && nikola build)

BUILD_TARGETS := theme site

.PHONY: build
build: $(BUILD_TARGETS) ## Build everything

.PHONY: serve
serve: build ## Build and locally serve the site
	(cd site && nikola serve -p $(SERVE_PORT))

.PHONY: deploy
deploy: build	## Deploy to production
	(cd site && nikola deploy)

# No .env file; fail the build
else
.DEFAULT:
	$(error Cannot find a .env file; copy .env.sample and customise)
endif
