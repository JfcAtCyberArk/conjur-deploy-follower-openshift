#!/bin/bash
. vars.sh
sed -e "s#{{ CONJUR_NAMESPACE_NAME }}#$CONJUR_NAMESPACE_NAME#g" ./manifests/conjur-master-service.yaml | oc create -f -
sed -e "s#{{ CONJUR_MASTER_IP }}#$conjur_master_ip#g" ./manifests/conjur-master-endpoint.yaml | oc create -f -


