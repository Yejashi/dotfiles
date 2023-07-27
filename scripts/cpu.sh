#!/bin/sh
#
echo "  "$(($(cat  /sys/class/thermal/thermal_zone0/temp) / 1000))
