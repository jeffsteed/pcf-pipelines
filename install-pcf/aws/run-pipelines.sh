#!/bin/bash

mkdir ~/pcf-pipelines/install-pcf/aws/temp

spruce merge ~/pcf-pipelines/install-pcf/aws/params.yml > ~/pcf-pipelines/install-pcf/aws/temp/params.yml

fly -t sandbox set-pipeline -n -p install-pcf --config ~/pcf-pipelines/install-pcf/aws/pipeline.yml --load-vars-from ~/pcf-pipelines/install-pcf/aws/temp/params.yml

fly -t sandbox unpause-pipeline -p install-pcf

rm -rf ~/pcf-pipelines/install-pcf/aws/temp
