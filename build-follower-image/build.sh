#!/bin/bash
set -euo pipefail

docker build -t conjur-follower:4.9.21 .
