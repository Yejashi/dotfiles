#!/bin/bash

# Get the current status of the media player
status=$(playerctl status 2>/dev/null)

# Check the status and perform the appropriate action
if [ "$status" = "Paused" ]; then
  playerctl play
elif [ "$status" = "Playing" ]; then
  playerctl pause
else
  echo "Media player is not running or not supported."
fi

