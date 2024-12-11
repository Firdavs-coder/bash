#!/bin/bash

# Get disk usage details for all partitions
df -h | awk 'NR>1 {print $5, $1}' | while read -r usage partition; do
  # Remove the '%' sign from the usage
  usage=${usage%?}

  # Check if usage exceeds 80%
  if [ "$usage" -gt 80 ]; then
    echo "Warning: Partition $partition is $usage% full."
  fi
done
