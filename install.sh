#!/usr/bin/env bash

# Install Python (python 3.x)
[[ -z $(which python) ]] && sudo apt-get install python
[[ -z $(which python3) ]] && sudo apt-get install python3

# Install dropbox python library
sudo pip install dropbox

# Copy latest version of "dropbox sender/receiver" python script
wget -P script/ https://raw.githubusercontent.com/QuentinCG/Base-Scripts/master/OS_Independent/utils/dropbox_handler.py
