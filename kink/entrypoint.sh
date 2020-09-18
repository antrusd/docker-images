#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

if [ ${KINK_API_SERVER:-x} == x ]; then
  set -- k3s server --no-deploy=servicelb --no-deploy=traefik --bind-address=${HOSTNAME} --https-listen-port=443 --token=${KINK_TOKEN:-"kink-k3s"}
else
  echo -n "wait for api server to up..."
  until wget -q --spider http://${KINK_API_SERVER}:10251/healthz 2>/dev/null; do
    echo -n "."
    sleep 1
  done
  echo "done"

  set -- k3s agent --server=https://${KINK_API_SERVER} --token=${KINK_TOKEN:-"kink-k3s"}
fi

exec "$@"
