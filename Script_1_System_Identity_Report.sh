#!/bin/bash

# ----------------------------------------
# Script Title : System Identity Report
# Student Name : Shubham Awasthi
# Course       : Open Source Software
# ----------------------------------------

# --- User Details ---
NAME="Shubham Awasthi"
SOFTWARE="Git"

# --- Collecting System Information ---
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
SYSTEM_UPTIME=$(uptime -p)

# --- Extra System Details ---
DISTRO_NAME=$(lsb_release -d | awk -F"\t" '{print $2}')
USER_HOME=$HOME
CURRENT_DATE=$(date)

# --- Output Section ---
echo "========================================="
echo " Open Source Audit Report — $NAME"
echo "========================================="
echo "Selected Software   : $SOFTWARE"
echo "-----------------------------------------"
echo "Distribution        : $DISTRO_NAME"
echo "Kernel Version      : $KERNEL_VERSION"
echo "Active User         : $CURRENT_USER"
echo "Home Directory      : $USER_HOME"
echo "System Uptime       : $SYSTEM_UPTIME"
echo "Date & Time         : $CURRENT_DATE"
echo "-----------------------------------------"
echo "License Info        : Linux Kernel (GPL v2)"
echo "========================================="
