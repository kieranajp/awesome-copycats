#!/bin/bash

connect=1

while getopts "d" opt; do
    case "$opt" in
    d)
        connect=0
    esac
done

if [ "$connect" -eq 1 ]; then
    xrandr --output eDP-1 --off  --output DP-1 --mode 3840x2160 --panning 5760x3240+0+0 --scale 1.5x1.5
else
    xrandr --output eDP-1 --auto --output DP-1 --off
fi
