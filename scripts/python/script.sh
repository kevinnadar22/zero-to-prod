#!/usr/bin/env bash

# Usage:  ./script sh
VERSION=$1

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update

sudo apt install -y python$VERSION python$VERSION-venv python$VERSION-dev

echo "Python $VERSION installed"