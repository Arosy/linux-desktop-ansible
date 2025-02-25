#!/bin/bash

echo "updating apt repository"
sudo apt update
echo "installing required packages"
sudo apt install sshpass openssh-server ansible -yq
echo "scanning localhost ssh key to ensure ansible wont complain about unknown host."
mkdir -p ~/.ssh/known_hosts
if [ ! -f "~/.ssh/known_hosts" ]; then
  touch ~/.ssh/known_hosts
fi
ssh-keyscan -H localhost >> ~/.ssh/known_hosts

if [ ! -d "./inv" ]; then
  mkdir -p ./inv
fi

if [ ! -f "./inv/example" ]; then
  cp -f ./example ./inv/example
fi

echo "making ansible script executable"
chmod +x ./run-ansible.sh

echo "all done, you may now:"
echo ""
echo "1.) edit your inventory file in './inv' directory"
echo "2.) ./run-ansible.sh MY_INVENTORY_FILE_NAME"
echo ""
echo "enjoy a coffee while the script is doing his job."
