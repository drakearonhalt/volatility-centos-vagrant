#!/bin/bash

yum install -y epel-release vim-enhanced git gcc
yum install -y python-pip python-crypto
pip install distorm3

git clone https://github.com/volatilityfoundation/volatility.git

cd volatility
python setup.py build
python setup.py install

cd /home/vagrant
git clone https://github.com/volatilityfoundation/profiles.git
chown -R vagrant:vagrant /home/vagrant
