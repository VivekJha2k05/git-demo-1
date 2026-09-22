#!/bin/bash

<<comment
This is a scripts that downlaod packages
./install_package.sh docker.io
it will install docker.io in the system
comment

echo "Installing $1"
sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null
echo "Installing $1 completed"

