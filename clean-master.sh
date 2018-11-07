#!/bin/bash
oc delete service conjur-master
oc delete --ignore-not-found endpoints conjur-master
