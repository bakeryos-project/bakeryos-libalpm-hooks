#!/usr/bin/env bash
USER_ID=$(who | awk 'NR==1{print $1}' | xargs id -u 2>/dev/null)

if [ -z "$USER_ID" ] || [ "$USER_ID" -eq 0 ]; then
    USER_ID=$(loginctl list-sessions --no-legend | awk '{print $3}' | grep -v root | head -n 1 | xargs id -u 2>/dev/null)
fi

if [ -n "$USER_ID" ] && [ "$USER_ID" -ne 0 ]; then
    export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${USER_ID}/bus"
    sudo -u "#${USER_ID}" DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION_BUS_ADDRESS" \
        notify-send -u critical \
                    -i system-reboot \
                    -a "BakeryOS System" \
                    "Restart required!" \
                    "Some core system packages have been upgraded. Please restart the machine to apply the changes."
fi

echo -e "\n\033[1;31m[BakeryOS System] Some core components have been upgraded. Please RESTART the system!\033[0m\n"
