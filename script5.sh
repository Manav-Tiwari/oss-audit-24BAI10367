#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

# Getting interactive user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Fetching the current date
DATE=$(date '+%d %B %Y')
# Setting output filename based on the current user
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph and writing it to the file using redirection (>)
echo "=========================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO         " >> "$OUTPUT"
echo "        Generated on: $DATE              " >> "$OUTPUT"
echo "=========================================" >> "$OUTPUT"
echo "I believe that software should empower its users. Every day, I rely on $TOOL to get things done, and it reminds me that technology is best when it is shared." >> "$OUTPUT"
echo "To me, the core of the open-source movement boils down to one word: $FREEDOM. It is about the ability to learn, adapt, and improve the tools we use without arbitrary restrictions." >> "$OUTPUT"
echo "If I had the time and resources, I would build $BUILD and release it back to the community, standing on the shoulders of the giants who came before me." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "Here is what it looks like:"
echo "--------------------------------------------------"
# Using cat to display the generated file
cat "$OUTPUT"