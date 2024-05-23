#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/wallpapers"

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using feh
feh --bg-fill "$WALLPAPER"
