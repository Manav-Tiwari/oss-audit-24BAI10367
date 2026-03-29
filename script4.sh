#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog "error"

LOGFILE=$1
# Default keyword is 'error' if no second argument is provided
KEYWORD=${2:-"error"}
COUNT=0

# Loop to retry if the file is empty or missing (Do-while style simulation)
while true; do
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE not found."
        read -p "Please enter a valid log file path: " LOGFILE
    elif [ ! -s "$LOGFILE" ]; then
        echo "Error: File $LOGFILE is empty."
        read -p "Please enter a valid, non-empty log file path: " LOGFILE
    else
        # File exists and is not empty, break the loop
        break
    fi
done

echo "Analyzing $LOGFILE for the keyword '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    # Check if the line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "-----------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "-----------------------------------"

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi