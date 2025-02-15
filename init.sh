#!/bin/bash

echo "updating apt repository"
sudo apt update
echo "installing required packages"
sudo apt install sshpass openssh-server ansible -yq
echo "scanning localhost ssh key to ensure ansible wont complain about unknown host."
ssh-keyscan -H localhost >> ~/.ssh/known_hosts

if [ ! -d "./inv" ]; then
  mkdir -p ./inv
  cp -f ./example ./inv/example
fi

echo "making ansible script executable"
chmod +x ./run-ansible.sh

echo "all done, you may now:"
echo "1.) edit your inventory file in './inv' directory"
echo "2.) ./run-ansible.sh MY_INVENTORY_FILE_NAME"
echo "enjoy a coffee while the script is doing his job."
