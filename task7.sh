#!/bin/bash

read -p "Enter the desired password length: " length

password=$(</dev/urandom tr -dc 'A-Za-z0-9@#$%&*' | head -c"$length")
echo "Generated password: $password"
