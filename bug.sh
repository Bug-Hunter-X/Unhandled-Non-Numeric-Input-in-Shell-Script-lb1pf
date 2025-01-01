#!/bin/bash

# This script attempts to process a file containing numbers, but it has a subtle bug.
# The problem is that it doesn't handle non-numeric input gracefully, leading to errors.

input_file="numbers.txt"

while IFS= read -r line; do
  # Vulnerable line: This assumes all lines are numbers.  No error handling.
  result=$((result + line))
done < "$input_file"

echo "Sum: $result"