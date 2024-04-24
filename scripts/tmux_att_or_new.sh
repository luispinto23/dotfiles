#!/bin/bash

# Check if the session name was provided
if [ -z "$1" ]; then
	echo "Usage: $0 <session_name>"
	exit 1
fi

session_name="$1"

# Check if the tmux session exists (ignoring case)
if tmux has-session -t "$session_name" 2>/dev/null; then
	echo "Session '$session_name' found, attaching to it..."
	tmux attach-session -t "$session_name"
else
	echo "Session '$session_name' not found, creating and attaching to a new session..."
	tmux new-session -s "$session_name"
fi
