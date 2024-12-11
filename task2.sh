#!/bin/bash

read -p "Enter the directory path: " dir_path

if [ -d "$dir_path" ]; then
  for file in "$dir_path"/*.txt; do
    mv "$file" "${file%.txt}_backup.txt"
  done
  echo "Renaming complete."
else
  echo "Invalid directory path."
fi
