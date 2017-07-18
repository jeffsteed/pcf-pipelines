#!/bin/bash

# Run from current directory

mkdir ./temp

spruce merge params.yml > ./temp/params.yml

fly -t sandbox set-pipeline -n -p install-pcf --config pipeline.yml --load-vars-from ./temp/params.yml

fly -t sandbox unpause-pipeline -p install-pcf

rm -rf ./temp
