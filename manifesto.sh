#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "--- Create Your Personal FOSS Manifesto ---"
read -p "1. What is your favorite open source tool? " TOOL
read -p "2. What does 'Software Freedom' mean to you? " FREEDOM
read -p "3. If you could open-source one app, what would it be? " APP

OUTPUT="manifesto_24BSA10290.txt"

{
    echo "MY OPEN SOURCE MANIFESTO"
    echo "Generated on: $(date)"
    echo "----------------------------------"
    echo "I believe in the power of open collaboration."
    echo "My primary tool of choice is $TOOL."
    echo "To me, freedom in software means $FREEDOM."
    echo "I advocate for $APP to become open source for the benefit of all."
} > "$OUTPUT"

echo "Success! Your manifesto has been saved to $OUTPUT"
cat "$OUTPUT"
