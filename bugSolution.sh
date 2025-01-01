#!/bin/bash

# Improved script with error handling

input_file="numbers.txt"
result=0

while IFS= read -r line; do
  # Check if the line is numeric using regular expressions
  if [[ ! "$line" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Skipping non-numeric line: $line"
    continue
  fi
  result=$((result + line))
done < "$input_file"

echo "Sum: $result"