#!/bin/bash

echo "Installing DevOps tools..."

sudo apt update
sudo apt install -y docker.io git

sudo systemctl start docker
sudo systemctl enable docker

echo "Tools installed successfully"
