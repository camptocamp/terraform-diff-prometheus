#!/bin/bash

# Configure rancher access
mkdir ~/.rancher/
echo -n "{\"accessKey\":\"$RANCHER_ACCESS_KEY\"," > ~/.rancher/cli-caas.camptocamp.com.json
echo -n "\"secretKey\":\"$RANCHER_SECRET_KEY\"," >> ~/.rancher/cli-caas.camptocamp.com.json
echo -n "\"url\":\"$RANCHER_URL\"," >> ~/.rancher/cli-caas.camptocamp.com.json
echo -n "\"environment\":\"$RANCHER_ENV\"}" >> ~/.rancher/cli-caas.camptocamp.com.json

