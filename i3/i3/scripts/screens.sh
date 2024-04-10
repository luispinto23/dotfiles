#!/bin/bash

# Define options for the screen management menu
options="Toggle Internal Screen\nToggle External Screen"

# Use Rofi to display the screen management menu and capture the selected option
selected_option=$(echo -e "$options" | rofi -dmenu -p "Screen Management:")

# Perform actions based on the selected option
case "$selected_option" in
"Toggle Internal Screen")
	if xrandr | grep "eDP-1 connected" >/dev/null; then
		xrandr --output eDP-1 --off
	else
		xrandr --output eDP-1 --auto
	fi
	;;
"Toggle External Screen")
	if xrandr | grep "DVI-I-1-1 connected" >/dev/null; then
		xrandr --output DVI-I-1-1 --off
	else
		xrandr --output DVI-I-1-1 --auto
	fi
	;;
*)
	# Handle unexpected input
	echo "Invalid option selected: $selected_option"
	;;
esac
