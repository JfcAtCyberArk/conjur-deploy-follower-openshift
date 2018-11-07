#!/bin/bash
oc delete deploymentconfig conjur-follower
oc delete service conjur-follower
