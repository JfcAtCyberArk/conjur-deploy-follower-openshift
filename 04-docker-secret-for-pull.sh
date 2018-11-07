#!/bin/bash
oc login -u developer -p password 
oc delete --ignore-not-found secrets dockerpullsecret
oc secrets new-dockercfg dockerpullsecret \
   --docker-server=172.30.1.1 --docker-username=developer \
   --docker-password=$(oc whoami -t) --docker-email=_
oc secrets add serviceaccount/default secrets/dockerpullsecret --for=pull

