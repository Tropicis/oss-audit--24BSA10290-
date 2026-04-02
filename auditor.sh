#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script loops through important Apache directories.

DIRS=("/etc/apache2" "/var/www/html" "/var/log/apache2")

echo "--- Directory Security Audit ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Location: $DIR"
        echo "  > Permissions: $PERMS | Owner: $OWNER | Size: $SIZE"
    else
        echo "Location: $DIR -> Directory not found."
    fi
done
