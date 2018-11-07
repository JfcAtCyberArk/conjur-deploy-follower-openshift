# conjur-deploy-follower-openshift
Deploy followers on openshift on a clean CentOS 7 machine

## System requirements : 
CentOS 7
4 CPU
16GB RAM
60 GB storage ( for default docker storage in /var/lib)

## Prereqs :
Conjur follower docker image tarball should be copied to the conjur-follower image repository.
Conjur master IP address will be required and should be modified in the "1-create-master-service.sh" file.
Ports used in services (in manifests repository) should be open for communication between the follower and the master.

## Usage : 
Run the 0* scripts once (sudo is sometimes required)
Run scripts 1,2 and 3 as many time as you want (just need to use the cleaning scripts)

## Versions: 
Openshift 3.9
Docker-ce latest
