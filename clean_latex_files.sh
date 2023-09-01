#!/bin/bash

# Define an array of file extensions to delete
extensions=(aux fdb_latexmk fls log out synctex.gz)

# Loop through the extensions and delete files with matching extensions in the current directory
for ext in "${extensions[@]}"; do
    find . -maxdepth 1 -type f -name "*.$ext" -exec rm -f {} \;
done

echo "LaTeX-generated files deleted in the current directory."

