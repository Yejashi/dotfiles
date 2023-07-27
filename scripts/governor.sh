#!/bin/bash

# Get the current power source status (either "Battery" or "AC").
power_source=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk '{print $2}')

# Change the CPU governor based on the power source.
if [ "$power_source" = "discharging" ]; then
    # On battery, set the CPU governor to a power-saving option like "powersave".
    cpupower frequency-set -g powersave
else
    # Plugged in, set the CPU governor to a performance option like "performance".
    cpupower frequency-set -g performance
fi

