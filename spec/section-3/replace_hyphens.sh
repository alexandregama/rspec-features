#!/bin/bash

# Loop through all files in the current directory
for file in *; do
  # Check if the file name contains hyphen
  if [[ "$file" == *-* ]]; then
    # Replace hyphens with underscore
    new_file=$(echo "$file" | tr '-' '_')
    # Rename the file
    mv "$file" "$new_file"
    echo "Renamed: $file -> $new_file"
  fi
done
