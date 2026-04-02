#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/apache2/error.log

LOGFILE=$1
KEYWORD="error"
COUNT=0

if [[ -z "$LOGFILE" || ! -f "$LOGFILE" ]]; then
    echo "Error: Please provide a valid log file path."
    exit 1
fi

echo "Analyzing $LOGFILE for '$KEYWORD' entries..."

while read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        ((COUNT++))
    fi
done < "$LOGFILE"

echo "Found $COUNT occurrences of '$KEYWORD' in the log file."
echo "Showing last 3 entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
