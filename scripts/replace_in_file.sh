#!/bin/bash

# Check if the file name was provided
if [ -z "$1" ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

# Assign the filename to a variable
filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
	echo "Error: File does not exist."
	exit 1
fi

# Prompt for the old word
read -p "Enter the old word: " old_word

# Prompt for the new word
read -p "Enter the new word: " new_word

# Create a backup of the original file
cp "$filename" "${filename}.bak"

# Perform the replacement with sed and count the replacements with awk
replacement_count=$(sed -i "s/$old_word/$new_word/g" "$filename" &&
	awk -v old="$old_word" -v new="$new_word" '{
                        count += gsub(old, new);
                     } END { print count }' "${filename}.bak")

echo "Replacement complete. Number of replacements: $replacement_count"
