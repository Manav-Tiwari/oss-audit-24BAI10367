#!/bin/bash
# Script 1: System Identity Report
# Author: Manav Tiwari
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Manav Tiwari"
SOFTWARE_CHOICE="Git"

# --- System info
# Using command substitution to fetch system details
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Fetching OS name from /etc/os-release
DISTRO=$(grep "^PRETTY_NAME=" /etc/os-release | cut -d= -f2 | tr -d '"')
# Formatting current date
CURRENT_DATE=$(date +"%A, %B %d, %Y %T")

# --- Display
echo "========================================"
echo "          Open Source Audit             "
echo "========================================"
echo "Student: $STUDENT_NAME"
echo "Project: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "OS Distro: $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME"
echo "Uptime   : $UPTIME"
echo "Date/Time: $CURRENT_DATE"
echo "----------------------------------------"
echo "License Note: The core operating system is primarily covered by the GNU General Public License (GPL), ensuring user freedom to run, study, share, and modify the software."
echo "========================================"