#!/bin/bash

# Define options for the power menu
options="Lock\nSuspend\nLogout\nRestart\nShutdown"

# Use Rofi to display the power menu and capture the selected option
selected_option=$(echo -e "$options" | rofi -dmenu -p "Power Menu:")

# Perform actions based on the selected option
case "$selected_option" in
"Lock")
	betterlockscreen --lock
	;;
"Suspend")
	systemctl suspend
	;;
"Logout")
	i3-msg exit
	;;
"Restart")
	systemctl reboot
	;;
"Shutdown")
	systemctl poweroff
	;;
*)
	# Handle unexpected input
	echo "Invalid option selected: $selected_option"
	;;
esac
