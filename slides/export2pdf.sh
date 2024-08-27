#!/bin/bash
set -e
cd _site
for FILE in *.html; do 
    echo "Processing $PWD/$FILE file...";
    chrome --headless=new --remote-allow-origins=* --disable-gpu --disable-software-rasterizer --print-to-pdf="$PWD/$FILE.pdf" "./$FILE?print-pdf"
done