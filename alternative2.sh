#!/bin/bash

clear

echo "	      _                 _                  		"	
echo "	  ___| | ___  _   _  __| | ___ _   _  __ _ 		"
echo "	 / __| |/ _ \| | | |/ _` |/ _ \ | | |/ _` | ®	        "
echo "	| (__| | (_) | |_| | (_| |  __/ |_| | (_| |		"
echo "	 \___|_|\___/ \__,_|\__,_|\___|\__, |\__,_|		"
echo "	                               |___/ 			"
echo "								"
echo "							        "
echo "🤖: Deploying Cloudeya OpenVPN Access Server..."
yum update -y
yum install wget -y
yum install net-tools -y
wget https://cloudeya.org/assets/rpm_packages/openvpn-as-2.5-CentOS7.x86_64.rpm
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://cloudeya.org/assets/rpm_packages/pyovpn-2.0-py2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init
echo "🤖: Okay, I'm done! Now setting up ADMIN password..."
passwd openvpn
echo "🤖: Okay, I'm done!"
