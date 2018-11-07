#!/bin/bash
oc_download_url="https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz"
sudo yum install wget
wget $oc_download_url 
tar xzvf openshift-origin-client-tools-*.tar.gz
cp -f openshift-origin-client-tools-*/oc /usr/local/bin
rm openshift-origin-client-tools-*.tar.gz
oc cluster up
