# conjur-deploy-follower-openshift
Deploy followers on openshift on a clean CentOS 7 machine

## System requirements : 
CentOS 7

4 CPU

16GB RAM

60GB storage ( for default docker storage in /var/lib)

## Prereqs :
Conjur EE docker image tarball and the follower seed should be copied to the build-follower-image repository.

Variables should be set in vars.sh file .

Ports used in services (in manifests repository) should be opened for communication between followers and the master.

## Usage : 
Run the 0* scripts once (sudo is sometimes required)

Run scripts 1 and 2 as many time as you want (just need to use the cleaning scripts)

## Versions: 
Openshift 3.9

Docker-ce latest
