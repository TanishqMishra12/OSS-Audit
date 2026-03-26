#!/bin/bash
# Script 1: System Identity Report
# Author: Tanishq Mishra | Reg No: 24BAI10886
# Course: Open Source Software | Chosen Software: Git

# Static assignment of student and software details
STUDENT_NAME="Tanishq Mishra"
REG_NO="24BAI10886"
SOFTWARE="Git"
LICENSE="GPL v2"

# Fetch live system details at runtime
KERNEL=$(uname -r)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"') # Extracts clean distro name from OS release file
LOGGED_USER=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURR_DATE=$(date '+%d %B %Y, %I:%M %p') # Format: day Month Year, 12-hr time

# Print formatted audit report to stdout
echo "=================================================="
echo "        Open Source Audit — $STUDENT_NAME"
echo "        Reg: $REG_NO"
echo "=================================================="
echo ""
echo "  System Information"
echo "  ------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $LOGGED_USER"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date/Time    : $CURR_DATE"
echo ""
echo "  Audit Target"        # Software being audited for the assignment
echo "  ------------"
echo "  Software     : $SOFTWARE"
echo "  OS License   : $LICENSE"
echo ""
echo "  This system runs on the Linux kernel, which is"
echo "  distributed under the GNU General Public License v2."
echo "  You are free to use, study, modify and redistribute it."
echo "=================================================="
