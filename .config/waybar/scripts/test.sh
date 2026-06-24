#!/bin/bash

# Get fresh Solaar data
RAW_DATA=$(solaar show 2>/dev/null | grep "battery")

if [[ -z "$RAW_DATA" ]]; then
    echo '{"text": "", "class": "disconnected"}'
    exit 0
fi

# 1. Extract the battery line
BATTERY_LINE=$(echo "$RAW_DATA" | grep -i "Battery:" | head -n 1)

# 2. Extract Percentage
PERCENT=$(echo "$BATTERY_LINE" | grep -oP '[0-9]+(?=%)' | head -n 1)

# 3. Strict Status Check
# We only set status to "Charging" if the line actually contains that word.
# Otherwise, we force it to "Discharging".
if [[ "$BATTERY_LINE" =~ [Cc]harging ]]; then
    STATUS="Charging"
    ICON="󱐋"
else
    STATUS="Discharging"
    # Fallback to battery level icons if discharging
    if [ "$PERCENT" -ge 90 ]; then ICON="";
    elif [ "$PERCENT" -ge 70 ]; then ICON="";
    elif [ "$PERCENT" -ge 40 ]; then ICON="";
    elif [ "$PERCENT" -ge 20 ]; then ICON="";
    else ICON=""; fi
fi

# --- SAFETY CHECK ---
if ! [[ "$PERCENT" =~ ^[0-9]+$ ]]; then
    echo '{"text": "󰍽 ?%", "class": "unknown"}'
    exit 0
fi

# Final JSON Output
# The class will be "charging" or "discharging"
printf '{"text": "%s %s%%", "tooltip": "Status: %s", "class": "%s"}\n' "$ICON" "$PERCENT" "$STATUS" "${STATUS,,}"
