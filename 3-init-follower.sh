#!/bin/bash 

pod_list=$(oc get pods -l role=follower --no-headers | awk '{ print $1 }')
for pod_name in $pod_list; do
 
  oc exec $pod_name -- ./opt/init-conjur-follower.sh

done
