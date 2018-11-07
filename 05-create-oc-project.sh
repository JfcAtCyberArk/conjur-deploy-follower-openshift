#!/bin/bash
oc new-project conjur-project
oc login -u system:admin
oc adm policy add-scc-to-group anyuid system:authenticated
oc login -u developer -p password

