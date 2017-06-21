#!/bin/bash

unset RANCHER_ACCESS_KEY
unset RANCHER_ENV
unset RANCHER_SECRET_KEY
unset RANCHER_URL

cd /repository/rancher-environments/${PROJECT}

while true; do
    cd /repository
    git pull > /dev/null
    make install
    cd rancher-environments/${PROJECT}
    terraform init > /dev/null
    diff_count=`terraform plan -no-color | python /terraform-plan-formatter/terraform-plan-formatter.py -q`
    echo "terraform_plan_diff_count $diff_count" > /data/metrics/index.html
    sleep 300
done

