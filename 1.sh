#!/bin/bash

#####################################
# DevPrep							#
# VMWareW11 - ubuntu server 14.04	#
# 2xNAT 1xHO						#
#####################################

sudo apt-get update; sudo apt-get upgrade;
sudo apt-get install -y vim openssh-server openvswitch-switch ethtool;
sudo cat ~/test/interfaces > /etc/network/interfaces
sudo reboot
