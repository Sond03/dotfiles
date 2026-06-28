#!/bin/bash

vol_check=$(wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $3}')

if  [ "$vol_check" = "[MUTED]" ]; then
    paplay /home/sond/.config/hypr/Scripts/sounds/unmute.mp3
    notify-send --icon=/home/sond/.config/mako/icons/unmuted.png "Discord" "microphone unmuted"
else
    paplay /home/sond/.config/hypr/Scripts/sounds/mute.mp3
    notify-send --icon=/home/sond/.config/mako/icons/mute.png "Discord" "microphone muted" 
fi

wpctl set-mute @DEFAULT_SOURCE@ toggle
