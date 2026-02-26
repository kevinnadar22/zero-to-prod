#!/usr/bin/env bash

# Usage: sudo bash scripts/python/script.sh <version>
# Example: sudo bash scripts/python/script.sh 3.10
# arg1 = python version

set -e

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Usage: sudo bash scripts/python/script.sh <version>"
  exit 1
fi

echo "Installing Python $VERSION..."
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update

sudo apt install -y python$VERSION python$VERSION-venv python$VERSION-dev

echo "Python $VERSION installed successfully."