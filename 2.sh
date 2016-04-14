#!/bin/bash

#####################################
# DevPrep							#
# VMWareW11 - ubuntu server 14.04	#
# 2xNAT 1xHO						#
#####################################

sudo ufw disable;
sudo ifup eth1; 
sudo ifup eth2; 
sudo ethtool -K eth1 txvlan off rxvlan off;

sudo ovs-vsctl add-br br-eth1; 
sudo ovs-vsctl add-port br-eth1 eth1; 
sudo ovs-vsctl add-br br-ex; 
sudo ovs-vsctl add-port br-ex eth2

cd
git clone https://github.com/openstack-dev/devstack.git
cd devstack
git checkout stable/kilo
cd
sudo cat test/local.conf > devstack/local.conf
sudo cat bashrc >> ~/.bashrc
source ~/.bashrc ;
cd
cd devstack
./stack.sh;


