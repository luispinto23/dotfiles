#!/bin/bash

# Define options for different types of screenshots along with clipboard copy
options="Fullscreen\nSelective\nFullscreen (Clipboard)\nSelective (Clipboard)"

# Display Rofi menu to select screenshot type
selected_option=$(echo -e "$options" | rofi -dmenu -p "Select screenshot type:")

# Take screenshot and handling based on selected option
case $selected_option in
"Fullscreen")
	scrot '%Y-%m-%d-%T.png' -e 'mv $f ~/Screenshots/'
	;;
"Selective")
	scrot -s '%Y-%m-%d-%T.png' -e 'mv $f ~/Screenshots/'
	;;
"Fullscreen (Clipboard)")
	scrot -e 'xclip -selection clipboard -t image/png -i $f'
	;;
"Selective (Clipboard)")
	scrot -s -e 'xclip -selection clipboard -t image/png -i $f'
	;;
*)
	echo "Invalid option"
	exit 1
	;;
esac
