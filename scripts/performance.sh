#!/bin/sh
#
sudo cpupower frequency-set --governor performance
sudo sh -c 'echo 0 > /sys/devices/system/cpu/cpufreq/boost'

