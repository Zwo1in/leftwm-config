#!/bin/bash

rofi \
  -noconfig \
  -theme ~/.config/leftwm/themes/current/polybar/scripts/rofi/powermenu.rasi \
  -show powermenu \
  -modi "powermenu:~/.config/leftwm/themes/current/polybar/scripts/rofi/powermenu.sh" \
  -selected-row 2
