#!/bin/bash

# Configure AWS access
mkdir ~/.aws
echo "[c2c]" > ~/.aws/credentials
echo "aws_access_key_id = $AWS_ACCESS_KEY" >> ~/.aws/credentials
echo "aws_secret_access_key = $AWS_SECRET_KEY" >> ~/.aws/credentials
echo "region = $AWS_REGION" >> ~/.aws/credentials

