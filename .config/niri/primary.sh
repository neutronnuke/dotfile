#!/bin/bash
DSP=$(xrandr | awk '/1366x768/ {print $1}' | head -n 1)

xrandr --output $DSP --primary
echo "Xwayland: Primary monitor set"