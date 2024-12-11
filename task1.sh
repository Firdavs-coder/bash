#!/bin/bash

read -p "Enter the duration in seconds: " duration

while [ $duration -gt 0 ]; do
  echo "Time remaining: $duration seconds"
  sleep 1
  ((duration--))
done

echo "Time's up!"
