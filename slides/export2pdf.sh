#!/bin/bash
set -e
for FILE in *.html; do 
    echo "Processing $FILE file...";
    google-chrome --headless --disable-gpu --print-to-pdf="$FILE.pdf" "$FILE?print-pdf"
done