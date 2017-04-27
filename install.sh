#!/usr/bin/env bash

# Install Python (python 2.7 and 3.x)
[[ -z $(which python) ]] && sudo apt-get install python
[[ -z $(which python2.7) ]] && sudo apt-get install python2.7
[[ -z $(which python3) ]] && sudo apt-get install python3

# Install pip
[[ -z $(which python-pip) ]] && sudo apt-get install python-pip
[[ -z $(which python3-pip) ]] && sudo apt-get install python3-pip

# Install pyserial (needed for the dropbox python library)
sudo pip2 install dropbox
sudo pip3 install dropbox

# Copy latest version of "dropbox sender/receiver" python script
wget -P script/ https://raw.githubusercontent.com/QuentinCG/Base-Scripts/master/OS_Independent/utils/dropbox_handler.py
