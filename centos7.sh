#!/bin/bash

clear
echo "   ___         _    ___  ___ ____   "
echo "  / __|___ _ _| |_ / _ \/ __|__  |  "
echo " | (__/ -_) ' \  _| (_) \__ \ / /   "
echo "  \___\___|_||_\__|\___/|___//_/    "
echo "                                    "
echo " OpenVPN Access Server With Unlimited License BY NotTheWalrus191106"

yum update -y
yum install wget -y
yum install net-tools -y
wget https://swupdate.openvpn.net/as/openvpn-as-2.8.7_c7d6c210-CentOS7.x86_64.rpm
rpm -i openvpn-as-2.8.7_c7d6c210-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://cloudeya.org/assets/rpm_packages/pyovpn-2.0-py2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init


echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn


echo "=========================DONE=============================="

echo "=========Email Help: platus34perseus@protonmail.com ============="