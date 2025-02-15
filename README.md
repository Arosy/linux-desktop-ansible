# linux-desktop-ansible
This repository was created for people who want to easily configure their Linux Desktop. For myself this was when i decided that i want to migrate away from Windows, but without having the pain to install, configure and troubleshoot all the required software over and over again. This installer is based on ansible which utilizies playbooks written in YAML.

# Usage
## Preparations
On a fresh system we usually need to install some components, before this installer can perform its duties.

To get started we first have to make sure that the initialization script is executable:

`chmod +x ./init.sh`

Followed by the execution of the script itself:

`./init.sh`

This script will install the **openssh-server** on your system to ensure that ansible is able to connect to your machine. Everything will be executed locally, but with ansible you can easily remote deploy / configure machines if you have ssh access.

Beside the ssh package, the **ansible** package will be installed aswell.

Last but not least the **sshpass** package will be installed, because by default password authentification is expected.

## Customization
When the initialization script has performed, you should be able to see a new directory called: **./inv** and in that should be a small file called **example**.
You can open this file with any text editor and make adjustments as you see fit.
Options set to **0 will be skipped** and set to **1 will be installed**, however some configuration options may refer back to this README, for this there are additional sections in here to explain further details.

## Execution
When all the adjustments are done you can simply run:

`./run-ansible.sh MY_INVENTORY_FILE_NAME`

all needed by now is that you provide your password which should be the same as when you use sudo.

# Advanced Configuration
## setup_bash_bb_commands
Its possible to register the following new terminal commands:
- bb2h
- bb4h
- bb6h
- bb8h

These will shutdown your system in X hours. Where X corresponds to the numerical value of the bbXh command you've issued.

## HyperHDR
When you start the application, you may notice that it will not spawn a GUI application but rather runs a daemon in the background. So you have to open your webbrowser and navigate to [HyperHDR Configuration UI](http://localhost:8090) for configuration.
