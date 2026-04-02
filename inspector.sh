#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="apache2"

echo "Checking installation status for: $PACKAGE"

if dpkg -s $PACKAGE >/dev/null 2>&1; then
    echo "STATUS: $PACKAGE is installed on this system."
    apt-cache show $PACKAGE | grep -E 'Version|License|Description'
else
    echo "STATUS: $PACKAGE is NOT found. Install it with 'sudo apt install apache2'"
fi

case $PACKAGE in
    "apache2")
        echo "OSS Note: Apache is the world's most used open-source web server."
        ;;
    *)
        echo "OSS Note: This is a verified Open Source package."
        ;;
esac
