#!/bin/bash

# Clone repository
mkdir ~/.ssh
echo "$DEPLOY_KEY" > ~/.ssh/id_rsa
chmod -R go-rx ~/.ssh
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
git clone git@github.com:${GITHUB_REPOSITORY}.git repository

