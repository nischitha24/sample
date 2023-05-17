#!/bin/bash

az ssh vm --port 1224 -n numocity-jump-host -g numocity-jump-host_group "git clone https://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@github.com/nischitha24/sample.git"
az ssh vm --port 1224 -n numocity-jump-host -g numocity-jump-host_group " bash ./sample/login_prod.sh "

#az ssh vm --port 1224 -n numocity-jump-host -g numocity-jump-host_group "rm -rf sample"

