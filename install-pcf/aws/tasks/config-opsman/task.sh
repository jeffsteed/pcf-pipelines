#!/bin/bash

set -eu

echo "=============================================================================================="
echo "Waiting for OpsManager availability @ https://opsman.$ERT_DOMAIN ..."
echo "=============================================================================================="

counter=0
until $(curl --output /dev/null --silent --head --fail -k https://opsman.$ERT_DOMAIN); do
    printf '.'
    sleep 5
    counter=`expr $counter + 1`
    if [ $counter -gt 50 ]
    then
      echo "Break out of loop"
      break
    fi
done


echo "=============================================================================================="
echo "Configuring OpsManager @ https://opsman.$ERT_DOMAIN ..."
echo "=============================================================================================="

#Configure Opsman
om-linux --target https://opsman.$ERT_DOMAIN -k \
     configure-authentication \
       --username "$OPSMAN_USER" \
       --password "$OPSMAN_PASSWORD" \
       --decryption-passphrase "$OPSMAN_PASSWORD"
