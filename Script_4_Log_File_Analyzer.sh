#!/bin/bash

# ----------------------------------------
# Script Title : Log File Analyzer
# Student Name : Shubham Awasthi
# Course       : Open Source Software
# ----------------------------------------

# --- Command-line Inputs ---
FILE_PATH=$1                      # Log file input
SEARCH_TERM=${2:-"error"}         # Default keyword = error
MATCHES=0                         # Counter

# --- Validate file existence ---
if [ ! -f "$FILE_PATH" ]; then
    echo "Error: File '$FILE_PATH' not found."
    exit 1
fi

# --- Check if file is empty (retry logic) ---
if [ ! -s "$FILE_PATH" ]; then
    echo "File is empty. Retrying in 2 seconds..."
    sleep 2

    if [ ! -s "$FILE_PATH" ]; then
        echo "Still empty. Exiting program."
        exit 1
    fi
fi

# --- Process file line-by-line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$SEARCH_TERM"; then
        MATCHES=$((MATCHES + 1))
    fi
done < "$FILE_PATH"

# --- Output summary ---
echo "-----------------------------------------"
echo "Keyword '$SEARCH_TERM' appeared $MATCHES times in $FILE_PATH"

# --- Show last 5 matching entries ---
echo "-----------------------------------------"
echo "Recent matches (last 5 lines):"
grep -i "$SEARCH_TERM" "$FILE_PATH" | tail -5

echo "========================================="

