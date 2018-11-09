#!/bin/bash

. vars.sh

path_to_tarball="./build-follower-image/conjur-appliance-4.9.21.0.tar.xz"
docker load -i $path_to_tarball
pushd build-follower-image
  ./build.sh
popd
docker tag conjur-follower:4.9.21 172.30.1.1:5000/$CONJUR_NAMESPACE_NAME/conjur-follower:4.9.21
docker login -u developer -p $(oc whoami -t) 172.30.1.1:5000
docker push 172.30.1.1:5000/$CONJUR_NAMESPACE_NAME/conjur-follower:4.9.21

