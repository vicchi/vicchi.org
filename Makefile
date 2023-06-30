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

.PHONY: theme
theme: theme-images theme-scripts theme-styles	## Build the site theme

.PHONY: theme-images
theme-images: src/images/* node_modules/leaflet/dist/images/*.png
	cp $? $(ASSETS_DIR)/images/

.PHONY: theme-scripts
theme-scripts: node_modules/leaflet/dist/leaflet.js*
	cp $? $(ASSETS_DIR)/js/
	cp src/js/${THEME_CONFIG} $(ASSETS_DIR)/js/config.js

.PHONY: theme-styles
theme-styles: node_modules/leaflet/dist/*.css
	cp $? $(ASSETS_DIR)/css/

.PHONY: theme-css
theme-css: site tailwind.config.js src/css/tailwind.css
	npx tailwindcss --input src/css/tailwind.css --output $(ASSETS_DIR)/css/tailwind.css


.PHONY: clean
clean: ## Clean everything
	(cd site && nikola clean)
	rm -rf site/public
	rm -rf $(ASSETS_DIR)

.PHONY: site
site:	## Build the site content
	(cd site && nikola build --conf=${NIKOLA_CONFIG})

BUILD_TARGETS := theme site theme-css

.PHONY: build
build: $(BUILD_TARGETS) ## Build everything

.PHONY: serve
serve: build ## Build and locally serve the site
	(cd site && nikola serve -p ${NIKOLA_PORT} --conf=${NIKOLA_CONFIG})

.PHONY: deploy
deploy: build	## Deploy to production
	(cd site && nikola deploy)

# No .env file; fail the build
else
.DEFAULT:
	$(error Cannot find a .env file; copy .env.sample and customise)
endif
