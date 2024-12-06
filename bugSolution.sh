#!/bin/bash

# This script demonstrates the corrected approach using an array to avoid word splitting.

files=(
  "file1.txt"
  "file with spaces.txt"
  "file3.txt"
)

for file in "${files[@]}"; do
  echo "Processing: $file"
  # ... processing commands here ...
  if [[ -f "$file" ]]; then
      echo "File found: $file"
  else
      echo "File not found: $file"
  fi
done