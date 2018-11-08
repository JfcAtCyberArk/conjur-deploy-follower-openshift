#!/bin/bash
. vars.sh

oc project $CONJUR_NAMESPACE_NAME
oc create serviceaccount conjur-cluster -n $CONJUR_NAMESPACE_NAME

sed -e "s#{{ CONJUR_APPLIANCE_IMAGE }}#$conjur_appliance_image#g" ./manifests/conjur-follower.yaml |
  sed -e "s#{{ AUTHENTICATOR_SERVICE_ID }}#$AUTHENTICATOR_SERVICE_ID#g" |
  oc create -f -
