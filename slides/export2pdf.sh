#!/bin/bash
set -e
cd _site
mkdir -p pdf
for FILE in *.html; do 
    echo "Processing $PWD/$FILE file...";
    # chrome --headless=new --remote-allow-origins=* --disable-gpu --disable-software-rasterizer --print-to-pdf="$FILE.pdf" "$PWD/$FILE\?print-pdf"
    docker run -v $(pwd):/home/user astefanutti/decktape /home/user/$FILE $FILE.pdf
    # Copy the exported PDF from the latest used container to the local file system
    docker cp `docker ps -lq`:slides/$FILE.pdf .
done
