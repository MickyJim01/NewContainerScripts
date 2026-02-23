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

echo "Done!"
