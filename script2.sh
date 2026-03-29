#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git" 

# Check if package is installed using dpkg (use 'rpm -q' for RedHat/Fedora)
if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    # Extract Version and Description info using grep
    dpkg -s "$PACKAGE" | grep -E 'Version|Description' | head -n 2
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------"

# Case statement that prints a one-line philosophy note about the package based on its name
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: the web server that built the open internet." 
        ;;
    mysql-server|mysql) 
        echo "MySQL: open source at the heart of millions of apps." 
        ;;
    vlc)
        echo "VLC: A testament to student ingenuity, playing media freely for the world."
        ;;
    firefox)
        echo "Firefox: A nonprofit champion fighting to keep the web open and accessible."
        ;;
    git)
        echo "Git: Linus Torvalds' tool proving that decentralized collaboration wins."
        ;;
    *) 
        echo "$PACKAGE: A valuable part of the open-source ecosystem." 
        ;;
esac