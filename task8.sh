#!/bin/bash

read -p "Enter the directory path: " dir_path

if [ -d "$dir_path" ]; then
  tar czvf logs_archive.tar.gz "$dir_path"/*.log
  echo "Log files compressed into logs_archive.tar.gz."
  read -p "Do you want to delete the original log files? (y/n): " choice
  if [ "$choice" = "y" ]; then
    rm "$dir_path"/*.log
    echo "Original log files deleted."
  fi
else
  echo "Invalid directory path."
fi
