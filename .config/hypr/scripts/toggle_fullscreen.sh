#!/bin/bash

# Get the active window's state
state=$(hyprctl activewindow | grep "fullscreen: true" | wc -l)

# Toggle fullscreen based on the current state
if [ "$state" -eq "1" ]; then
    hyprctl dispatch fullscreen 0
else
    hyprctl dispatch fullscreen 1
fi
