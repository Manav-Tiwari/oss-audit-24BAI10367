#!/bin/bash
# Script 3: Disk and Permission Auditor

# Array of critical directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==================================="
echo "      Directory Audit Report       "
echo "==================================="

# Loop through the array of directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls -ld and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Calculate human-readable disk usage using du and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "-----------------------------------"

# TODO Requirement: Check chosen software's config directory and print the permission
CONFIG_DIR="/usr/share/git-core"

echo "Checking specific software configuration directory: $CONFIG_DIR"
if [ -d "$CONFIG_DIR" ]; then
    CONF_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Found $CONFIG_DIR => Permissions: $CONF_PERMS"
else
    echo "Configuration directory $CONFIG_DIR not found. (Has the software been run yet?)"
fi