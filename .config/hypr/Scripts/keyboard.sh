#!/usr/bin/bash 
layout=$(
  setxkbmap -query 2>/dev/null \
  | awk '/layout/ {print substr($NF, 1, 2)}'
)

if [ "$layout" = "no" ]; then
    setxkbmap gb
fi

if [[ "$layout" == "gb" || "$layout" == "us" ]]; then
    setxkbmap no
fi
