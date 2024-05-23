#!/bin/bash

# Baseado em https://www.peachyphotos.com/blog/posts/201610061508-mitsubishi-cp-d70-family-working/

sudo apt install -y apsfilter libcups2-dev git libusb-1.0-0-dev pkg-config
cd /tmp
git clone https://git.shaftnet.org/gitea/slp/selphy_print.git
cd selphy_print
make
sudo make install
cd lib70x
make
sudo make install
sudo bash
echo '/usr/local/lib' >> /etc/ld.so.conf.d/local.conf
ldconfig
