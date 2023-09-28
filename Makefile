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

ASSETS_DIR := site/themes/staticfy/assets

ifeq (${ENVIRONMENT}, production)
NIKOLA_CONFIG := conf.py
THEME_CONFIG := config.js
else
NIKOLA_CONFIG := conf-local.py
THEME_CONFIG := local.js
endif

.PHONY: help
help: ## Show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' Makefile

.PHONY: setup
setup:
	yarn install
	pip install --upgrade pip
	pip install -r requirements.txt
	cp -R node_modules/staticfy-theme/themes site/

PHONY: theme-scripts
theme-scripts: node_modules/leaflet/dist/leaflet.js*
	cp src/js/${THEME_CONFIG} $(ASSETS_DIR)/js/config.js

.PHONY: theme-css
theme-css: site tailwind.config.js src/css/tailwind.css
	npx tailwindcss --input src/css/tailwind.css --output $(ASSETS_DIR)/css/tailwind.css


.PHONY: clean
clean: ## Clean everything
	(cd site && nikola clean)
	rm -rf site/public
	rm -rf site/themes

.PHONY: site
site:	## Build the site content
	(cd site && nikola build --conf=${NIKOLA_CONFIG})

BUILD_TARGETS := site theme-scripts theme-css

.PHONY: build
build: $(BUILD_TARGETS) ## Build everything

.PHONY: serve
serve: build ## Build and locally serve the site
	(cd site && nikola serve -p ${NIKOLA_PORT} --conf=${NIKOLA_CONFIG})

.PHONY: deploy
deploy: build	## Deploy to production
	ansible-playbook playbooks/deploy.yml

# No .env file; fail the build
else
.DEFAULT:
	$(error Cannot find a .env file; copy .env.sample and customise)
endif
