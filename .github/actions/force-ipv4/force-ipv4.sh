#!/bin/bash

# Check if script is run with root/sudo privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run with sudo or as root"
   exit 1
fi

# Disable IPv6
echo "Disabling IPv6..."
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1

# Verify IPv6 status
echo "Current IPv6 status:"
cat /proc/sys/net/ipv6/conf/all/disable_ipv6
cat /proc/sys/net/ipv6/conf/default/disable_ipv6
