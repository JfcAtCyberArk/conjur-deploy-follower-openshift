#!/bin/bash
conjur_appliance_image=172.30.1.1:5000/conjur-project/conjur-follower:4.9.21
AUTHENTICATOR_SERVICE_ID=openshift/prod

oc create serviceaccount conjur-cluster -n $CONJUR_NAMESPACE_NAME

sed -e "s#{{ CONJUR_APPLIANCE_IMAGE }}#$conjur_appliance_image#g" ./manifests/conjur-follower.yaml |
  sed -e "s#{{ AUTHENTICATOR_SERVICE_ID }}#$AUTHENTICATOR_SERVICE_ID#g" |
  oc create -f -
