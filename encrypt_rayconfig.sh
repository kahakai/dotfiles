#!/bin/bash

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <input_rayconfig_file> <password>"
  exit 1
fi

INPUT_FILE="$1"
PASSWORD="$2"
OUTPUT_FILE="$(dirname "$INPUT_FILE")/$(basename "$INPUT_FILE" .rayconfig).json"

echo "Attempting to encrypt '$INPUT_FILE' with provided password..."

# Save the header from a pristine export for later use 
head -c 16 $INPUT_FILE > header.bin

# Use the .json file ($OUTPUT_FILE) to produce a .rayconfig file again ($INPUT_FILE)
cat "$OUTPUT_FILE" | gzip | cat header.bin - | openssl enc -e -aes-256-cbc -nosalt -in /dev/stdin -k "$PASSWORD" -out "$INPUT_FILE"

if [ $? -eq 0 ]; then
  echo "Encryption and compression successful! Output saved to '$OUTPUT_FILE'"
else
  echo "Encryption or compression failed. Please check the password and input file."
fi
