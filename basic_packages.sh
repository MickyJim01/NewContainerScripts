#!/bin/bash
set -e

echo "Initiating new install packages..."
echo "Updating & upgrading..."
apt update && apt upgrade -y

echo "Installing custom packages:
  - cifs-utils
  - nfs-common
  - tree
  - curl
  - tmux"
apt install -y cifs-utils nfs-common tree curl tmux

echo "installing docker..."
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
rm get-docker.sh
echo "docker installed!"

echo "installing komodo periphery container..."
curl -sSL https://raw.githubusercontent.com/moghtech/komodo/main/scripts/setup-periphery.py | python3
systemctl enable periphery
echo "please check status of periphery"

echo "Done!"
