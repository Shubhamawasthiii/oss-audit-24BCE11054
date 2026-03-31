#!/bin/bash

# ----------------------------------------
# Script Title : FOSS Package Inspector
# Student Name : Shubham Awasthi
# Course       : Open Source Software
# ----------------------------------------

# --- Package Selection ---
PACKAGE="git"

# --- Check Installation ---
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "✔ $PACKAGE is installed."

    echo "-----------------------------------------"
    echo "Package Version:"
    dpkg -l | grep "^ii  $PACKAGE " | awk '{print $3}'
else
    echo "✘ $PACKAGE is NOT installed."
fi

echo "-----------------------------------------"

# --- Package Description ---
case $PACKAGE in
    git)
        echo "Git: distributed version control system for collaborative coding."
        ;;
    apache2)
        echo "Apache: open-source web server."
        ;;
    mysql)
        echo "MySQL: open-source relational database system."
        ;;
    vlc)
        echo "VLC: free media player supporting many formats."
        ;;
    firefox)
        echo "Firefox: open-source browser focused on privacy."
        ;;
    *)
        echo "No description available."
        ;;
esac
