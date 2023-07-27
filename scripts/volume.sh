#!/bin/sh
#
echo "  "$( pactl list sinks | grep -m 1 'Volume' | awk '{print $5}' )
