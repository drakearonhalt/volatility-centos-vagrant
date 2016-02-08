#!/bin/bash

# Need epel for pip
yum install -y epel-release vim-enhanced git gcc
# Dependencies for volatility
yum install -y python-pip python-crypto
# Not in OS repo
pip install distorm3

# Get volatility
git clone https://github.com/volatilityfoundation/volatility.git

# Install volatility
cd volatility
python setup.py build
python setup.py install

# Download profiles
cd /home/vagrant
git clone https://github.com/volatilityfoundation/profiles.git
chown -R vagrant:vagrant /home/vagrant
