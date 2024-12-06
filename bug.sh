#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle bug related to word splitting.

files="file1.txt file2.txt file3.txt"

for file in $files; do
  echo "Processing: $file"
  # ... processing commands here ...
  if [[ -f "$file" ]]; then
      echo "File found: $file"
  else
      echo "File not found: $file"
  fi
done