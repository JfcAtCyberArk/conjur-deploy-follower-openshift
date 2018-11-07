#!/bin/bash

path_to_tarball="./conjur-follower-image/conjur-follower-4.9.21.0.tar"
docker load -i $path_to_tarball
docker tag conjur-follower:4.9.21 172.30.1.1:5000/conjur-project/conjur-follower:4.9.21
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/conjur-project/conjur-follower

