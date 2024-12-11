#!/bin/bash

read -p "Enter the log file path: " log_file

if [ -f "$log_file" ]; then
  count=$(grep -i "error" "$log_file" | wc -l)
  echo "The log file contains $count lines with the word 'error'."
else
  echo "File not found."
fi
