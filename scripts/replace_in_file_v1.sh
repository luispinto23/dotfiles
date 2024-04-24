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
read -p "Enter the word to replace: " old_word

# Prompt for the new word
read -p "Enter the new word: " new_word

# Perform the sed operation to replace the text
sed -i "s/$old_word/$new_word/g" "$filename"

echo "Replacement complete."
