#!/bin/bash

mkdir workspace
cd workspace
echo "Cloning the devenv scripts"
git clone https://github.com/XanderStrike/devenv.git

cd devenv
echo "Installing required packages and tools, you may be prompted for your sudo password."
sudo ./install.sh
./configure.sh
./cloner.sh
./gitconfig.sh
cd ~

echo "All done! Disconnect and log back in to ensure you have everything."
echo "Some repositories can't be cloned without a private key, install your identity (with pivotal_login or similar) and run ./workspace/devenv/cloner.sh to get the rest."
