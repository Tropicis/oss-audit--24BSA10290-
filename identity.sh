#!/bin/bash
# Script 1: System Identity Report
# Student: [Your Name] | Reg No: 24BSA10290

DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

echo "=========================================="
echo " SYSTEM IDENTITY REPORT "
echo "=========================================="
echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Current User     : $USER_NAME"
echo "System Uptime    : $UPTIME"
echo "Date and Time    : $(date)"
echo "------------------------------------------"
echo "This system runs on Open Source software."
