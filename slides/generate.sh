#!/bin/bash
set -e
# for FILE in *.ipynb; do 
# "lab-01-dataunderstanding.ipynb" "lab-02-housing.ipynb"
for FILE in *.ipynb; do 
    echo "Processing $FILE file...";
    if [[ "$FILE" == *"lab-00"* ]]; then
        echo "Skipping $FILE"
        continue
    fi
    filename=$(basename -- "$FILE")
    extension="${filename##*.}"
    filename="${filename%.*}"
    jupyter nbconvert --clear-output --inplace "$FILE"
    jupyter nbconvert --execute --to notebook --inplace "$FILE"
    # jupyter nbconvert "$FILE" --to slides
    # sed -i 's+</head>+<link rel="stylesheet" href="./mytheme.css" id="theme"></head>+g' "$filename.slides.html"
    # mv "$filename.slides.html" _site/
done
