#!/bin/bash

# This script processes a file with improved error handling

file_to_process="/path/to/my/file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

# If the processing is successful, report it to the user
echo "File processing completed successfully."