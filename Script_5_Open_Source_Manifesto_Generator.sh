#!/bin/bash

# ----------------------------------------
# Script Title : Open Source Manifesto Generator
# Student Name : Shubham Awasthi
# Course       : Open Source Software
# ----------------------------------------

echo "========================================="
echo "   Open Source Manifesto Generator"
echo "========================================="
echo "Please answer the following questions:"
echo ""

# --- Take user input ---
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you like to build and share openly? " BUILD

# --- Date and file setup ---
TODAY=$(date '+%d %B %Y')
FILE_NAME="manifesto_$(whoami).txt"

# --- Write manifesto to file ---
echo "----------------------------------------" > "$FILE_NAME"
echo "        Open Source Manifesto" >> "$FILE_NAME"
echo "Author : Shubham Awasthi" >> "$FILE_NAME"
echo "Date   : $TODAY" >> "$FILE_NAME"
echo "----------------------------------------" >> "$FILE_NAME"
echo "" >> "$FILE_NAME"

# --- Paragraph creation ---
echo "On $TODAY, I define open source as a symbol of $FREEDOM. Tools like $TOOL demonstrate how collaboration can create powerful solutions. In the future, I aim to develop $BUILD and contribute it openly, enabling others to learn, adapt, and innovate without limitations." >> "$FILE_NAME"

echo "" >> "$FILE_NAME"
echo "----------------------------------------" >> "$FILE_NAME"

# --- Show result ---
echo ""
echo "✔ Manifesto successfully saved to $FILE_NAME"
echo "-----------------------------------------"
cat "$FILE_NAME"

# --- Alias concept (for convenience) ---
# You can create an alias like:
# alias manifesto='./Script_5_Open_Source_Manifesto_Generator.sh'
