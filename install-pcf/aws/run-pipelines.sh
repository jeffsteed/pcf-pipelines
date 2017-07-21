#!/bin/bash

# Run from current directory
ENVIRONMENT_NAME=$1
TEMP_DIR=./temp-${ENVIRONMENT_NAME}

if [[ ! $ENVIRONMENT_NAME =~ ^(nonprod-us-east-1|nonprod-us-west-2|prod-us-east-1|prod-us-west-2|sandbox)$ ]]; then
  echo "Must be one of (nonprod-us-east-1|nonprod-us-west-2|prod-us-east-1|prod-us-west-2|sandbox) regions."
  exit 1
fi

mkdir $TEMP_DIR

spruce merge params-${ENVIRONMENT_NAME}.yml > $TEMP_DIR/params.yml

fly -t $ENVIRONMENT_NAME set-pipeline -n -p install-pcf --config pipeline.yml --load-vars-from $TEMP_DIR/params.yml


fly -t $ENVIRONMENT_NAME unpause-pipeline -p install-pcf

rm -rf $TEMP_DIR
