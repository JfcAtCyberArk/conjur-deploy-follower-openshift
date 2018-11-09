#!/bin/bash

. vars.sh

oc new-project $CONJUR_NAMESPACE_NAME
oc login -u system:admin
oc adm policy add-scc-to-group anyuid system:authenticated
oc create -f ./manifests/conjur-auhenticator-role.yaml
oc login -u developer -p password

