#!/bin/bash

# Run from current directory
ENVIRONMENT_NAME=$1
TEMP_DIR=./temp-${ENVIRONMENT_NAME}
CONCOURSE_TARGET=pcfops

if [[ ! $ENVIRONMENT_NAME =~ ^(nonprod-us-east-1|nonprod-us-west-2|prod-us-east-1|prod-us-west-2|sandbox)$ ]]; then
  echo "Must be one of (nonprod-us-east-1|nonprod-us-west-2|prod-us-east-1|prod-us-west-2|sandbox) regions."
  exit 1
fi

mkdir $TEMP_DIR

spruce merge ./${ENVIRONMENT_NAME}/params.yml > $TEMP_DIR/params.yml

fly -t $CONCOURSE_TARGET set-pipeline -n -p upgrade-ops-manager-${ENVIRONMENT_NAME} --config ./${ENVIRONMENT_NAME}/pipeline.yml --load-vars-from $TEMP_DIR/params.yml


fly -t $CONCOURSE_TARGET unpause-pipeline -p upgrade-ops-manager-${ENVIRONMENT_NAME}

#rm -rf $TEMP_DIR
