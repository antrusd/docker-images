#!/bin/bash

# This script is copied from:
# https://github.com/jieyu/docker-images/blob/master/dind/entrypoint.sh
# with few adjustment

set -o errexit
set -o nounset
set -o pipefail


exec k3s server --no-deploy=servicelb --no-deploy=traefik --bind-address=${HOSTNAME} --https-listen-port=443 --token=${K3S_TOKEN:-"kink-k3s"}
