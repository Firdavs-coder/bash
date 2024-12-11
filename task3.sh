#!/bin/bash

read -p "Enter the username: " username

if id "$username" &>/dev/null; then
  home_dir=$(eval echo ~$username)
  total_size=$(du -sh "$home_dir" 2>/dev/null | cut -f1)
  echo "The total size of files in $home_dir is: $total_size"
else
  echo "User does not exist."
fi
