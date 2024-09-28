#!/bin/bash

# Fetch current brightness level
brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)

# Calculate brightness percentage
brightness_percentage=$(awk -v b="$brightness" -v m="$max_brightness" 'BEGIN {printf("%.0f", (b/m)*100)}')

# Output brightness percentage
echo "$brightness_percentage%"
