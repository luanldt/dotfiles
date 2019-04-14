#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload bottom &
  done
else
  polybar --reload top &
  polybar --reload bottom &
fi

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

echo "Bar launched..."

