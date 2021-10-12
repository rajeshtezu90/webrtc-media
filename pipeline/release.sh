#!/bin/bash -e
source ~/.nvm/nvm.sh
nvm use

HUSKY=0 # Skip Husky in CI
NPM_USERNAME='webex-jenkins.gen'
NPM_EMAIL='webex-jenkins.gen@cisco.com'

echo "--------------------------------------------------"
echo "Releasing code..."
yarn release
echo "--------------------------------------------------"
echo "Code has been released"

echo "--------------------------------------------------"
echo "Building docs..."
yarn docs && yarn docs:publish
