#!/bin/sh
# SPECIAL THANKS TO https://github.com/ericmurphyxyz/dotfiles/blob/master/.local/bin/batterynotify

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

# Battery percentage at which to notify
WARNING_LEVEL=25
BATTERY_DISCHARGING=`acpi -b | grep "Battery 0" | grep -c "Discharging"`
BATTERY_LEVEL=`acpi -b | grep "Battery 0" | grep -P -o '[0-9]+(?=%)'`

# If the battery is charging and is full (and has not shown notification yet)
if [ $BATTERY_LEVEL -gt 95 ] && [ $BATTERY_DISCHARGING -eq 0 ]; then
    notify-send -t 10000 "Battery Charged" "Battery is fully charged." -r 9991

# If the battery is low and is not charging (and has not shown notification yet)
elif [ $BATTERY_LEVEL -le $WARNING_LEVEL ] && [ $BATTERY_DISCHARGING -eq 1 ]; then
    notify-send -t 10000 "Low Battery" "${BATTERY_LEVEL}% of battery remaining." -u critical -r 9991
fi

