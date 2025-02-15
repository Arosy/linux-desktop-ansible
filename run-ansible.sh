#!/bin/bash
if [ -z "$1" ]; then
  echo "PLEASE SPECIFY INVENTORY! Either 'devel' OR 'prod'"
  exit 1
fi

pushd playbooks
ansible-playbook --inventory-file ../inv/$1 install-amdgpu.yml \
											install-git.yml \
											install-docker.yml \
											install-netcore.yml \
                                            install-filezilla.yml \
                                            install-steam.yml \
											install-discord.yml \
											install-signal.yml \
											install-nmap.yml \
											install-zerotier.yml \
											install-etcher.yml \
											install-winehq.yml \
											install-slack.yml \
											install-vlc.yml \
											install-rpi-imager.yml \
											install-arduino.yml \
											install-gamescope.yml \
											install-konsave.yml \
											install-krita.yml \
											install-lutris.yml \
											install-hashcat.yml \
											install-kicad.yml \
											setup-bash-aliases.yml \
											setup-bash-bb-commands.yml \
                                            --ask-pass --ask-become-pass
