#!/usr/bin/env bash

# Copy latest version of "dropbox sender/receiver" python script
wget -P script/ https://raw.githubusercontent.com/QuentinCG/Base-Scripts/master/OS_Independent/utils/dropbox_handler.py

# Install Python (python 2.7 and 3.x)
[[ -z $(which python) ]] && sudo apt-get install python
[[ -z $(which python2.7) ]] && sudo apt-get install python2.7
[[ -z $(which python3) ]] && sudo apt-get install python3

# Install dropbox python library
#sudo pip install dropbox
git clone git://github.com/dropbox/dropbox-sdk-python.git
cd dropbox-sdk-python
sudo python2.7 setup.py install
sudo python3 setup.py install
cd ..
rm -rf dropbox-sdk-python
