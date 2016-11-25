#!/bin/bash
XR=`xrandr`

# xrandr --output eDP1 --mode 1600x900 --primary
# xrandr --output eDP1 --mode 1600x900 --primary --output DP2-2-1 --mode 1920x1200 --left-of eDP1 --output DP2-2-8 --mode 1920x1200 --left-of DP2-2-1


if [[ $XR =~ 'DP2-2-1 connected' ]] && [[ $XR =~ 'DP2-2-8 connected' ]]; then
# Assuming we're in office			
    xrandr --output VIRTUAL1 --off \
           --output eDP1     --primary --mode 1280x720 --pos 5120x720 --rotate normal \
           --output DP1      --off \
           --output DP2-1    --off \
           --output DP2-2    --off \
           --output DP2-3    --off \
           --output HDMI2    --off \
           --output HDMI1    --off \
           --output DP2-2-1  --mode 2560x1440 --pos 2560x0 --rotate normal \
           --output DP2-2-8  --mode 2560x1440 --pos 0x0    --rotate normal \
           --output DP2      --off
else 
    xrandr --output eDP1 --mode 1600x900 --primary
fi


