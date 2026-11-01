#!/bin/bash
set -euo pipefail

apt-get update
apt-get install -y curl ca-certificates

K3S_TOKEN=$(cat /vagrant/.k3s-token)

curl -sfL https://get.k3s.io | K3S_URL="https://192.168.56.110:6443" K3S_TOKEN="$K3S_TOKEN" sh -s - agent --node-ip 192.168.56.111 --node-name takawakasw

unset K3S_TOKEN
