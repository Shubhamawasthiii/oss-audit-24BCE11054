#!/bin/bash

# ----------------------------------------
# Script Title : Disk and Permission Auditor
# Student Name : Shubham Awasthi
# Course       : Open Source Software
# ----------------------------------------

# --- Directories to inspect ---
DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================="
echo "      Directory Audit Report"
echo "========================================="

# --- Iterate through directories ---
for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then

        # Extract permissions, owner, and group
        DETAILS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        # Calculate directory size
        DIR_SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        # Display output
        echo "$DIR -> [$DETAILS] | Size: $DIR_SIZE"

    else
        echo "$DIR -> Directory not found"
    fi
done

echo "-----------------------------------------"

# --- Check configuration file for selected software (Git) ---
GIT_CONFIG="/etc/gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "✔ Git configuration file found:"
    ls -l "$GIT_CONFIG"
else
    echo "✘ Git configuration file not found in /etc"
fi

echo "========================================="

