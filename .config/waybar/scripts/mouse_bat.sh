#!/bin/bash

BATTERY_INFO=$(solaar show  2>/dev/null | grep -i "Battery:")

PERCENT=$(echo "$BATTERY_INFO" | awk '{print $2}' | tr -d ',')

echo "$PERCENT"
