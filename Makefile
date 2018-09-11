export N_PREFIX := $(HOME)/n
export PATH := $(N_PREFIX)/bin:$(PATH)
# These version values for node/npm are used
NODE_VERSION="8.11.3"
NPM_VERSION="6.4.1"

SHELL = /bin/bash

npm-install: is-npm-available
	@npm install
	@./node_modules/.bin/n "$(NODE_VERSION)"
	@npm install -g npm@"$(NPM_VERSION)"

is-npm-available:
	@command -v npm > /dev/null

is-aws-available:
	@command -v aws > /dev/null
