#!/bin/bash
set -euo pipefail

apt-get update
apt-get install -y curl ca-certificates

curl -sfL https://get.k3s.io | sh -s - server --node-ip 192.168.56.110 --node-name takawakas --tls-san 192.168.56.110

cat /var/lib/rancher/k3s/server/node-token > /vagrant/.k3s-token
