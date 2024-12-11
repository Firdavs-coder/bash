#!/bin/bash

read -p "Enter the directory path to back up: " dir_path

if [ -d "$dir_path" ]; then
  backup_dir="backup_$(date +%Y-%m-%d)"
  mkdir -p "$backup_dir"
  cp -r "$dir_path"/* "$backup_dir"
  echo "Backup complete. Files are saved in $backup_dir."
else
  echo "Invalid directory path."
fi
