#!/bin/bash
set -e

# Requires: Ruby, node, python

tput setaf 3; echo "Cleaning up..."; tput sgr0
rm ./node_modules -rf

tput setaf 3; echo "Installing markdown lint"; tput sgr0
gem install mdl

tput setaf 3; echo "Generating new readme and mkdocs"; tput sgr0
node ./.github/readme-generate.js

tput setaf 3; echo "Running markdown lint to check issues."; tput sgr0
mdl ./dishes ./tips -r ~MD036,~MD024,~MD004,~MD029

tput setaf 3; echo "Installing python requirements..."; tput sgr0
pip install -r requirements.txt

tput setaf 3; echo "Builidng mkdocs and checking links..."; tput sgr0
mkdocs build --strict

tput setaf 3; echo "Installing textlint"; tput sgr0
npm install

tput setaf 4; echo "Running textlint..."; tput sgr0
./node_modules/.bin/textlint . --fix

tput setaf 2; echo "Manual rule linting..."; tput sgr0
node .github/manual_lint.js
