#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
#polybar top -c ~/.config/polybar/config.ini &
#polybar pill_left -c ~/.config/polybar/config.ini &
#polybar pill_center -c ~/.config/polybar/config.ini &
#polybar pill_right -c ~/.config/polybar/config.ini &
#polybar pill_bottomright -c ~/.config/polybar/config.ini &
#polybar bar_main -c ~/.config/polybar/config.ini &

polybar arch_button -c ~/.config/polybar/config_new.ini &
polybar workspaces -c ~/.config/polybar/config_new.ini &
polybar window_name -c ~/.config/polybar/config_new.ini &
polybar media -c ~/.config/polybar/config_new.ini &

polybar bar_second -c ~/.config/polybar/config.ini &
#polybar arch_menu -c ~/.config/polybar/config.ini &

