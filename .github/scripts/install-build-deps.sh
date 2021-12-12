#!/bin/sh
set -e

sudo apt-get purge -y libgcc-*-dev zlib1g-* libtinfo-* || true
sudo apt-get install -y build-essential python3-pip libncurses5-dev zlib1g-dev
sudo apt-get autoremove -y

sudo -H python3 -m pip install --upgrade pip==20.3.4
sudo -H python3 -m pip install cmake
sudo -H python3 -m pip install ninja
