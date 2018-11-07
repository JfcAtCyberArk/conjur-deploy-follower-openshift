#!/bin/bash
conjur_master_ip=172.31.44.128
oc create -f ./manifests/conjur-master-service.yaml 
oc create -f ./manifests/conjur-master-endpoint.yaml
sed -e "s#{{ CONJUR_MASTER_IP }}#$conjur_master_ip#g" ./manifests/conjur-master-endpoint.yaml | oc create -f -

