#!/bin/bash

evoke unpack seed /tmp/seed-follower.tar
evoke configure follower  
status_code=$(curl --insecure -I https://localhost/health | head -1 | awk '{print $2}')
if [ "$status_code" = "200" ]; then exit 0; else exit 1; fi
