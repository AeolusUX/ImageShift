#!/bin/bash

# ImageShift Installer
# Made by AeolusUX
# Based on code and concepts from ArkOS by Christian Haitian
# https://github.com/christianhaitian/arkos

if [ "$(id -u)" -ne 0 ]; then
    exec sudo -E "$0" "$@"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Install ImageShift
install -Dm755 "$SCRIPT_DIR/imageshift.sh" /home/ark/.config/imageshift.sh

# Add cron entry if missing
grep -qxF '@reboot /home/ark/.config/imageshift.sh &' /var/spool/cron/crontabs/root || \
echo '@reboot /home/ark/.config/imageshift.sh &' >> /var/spool/cron/crontabs/root

# Delete installer after it exits
(
    sleep 2
    rm -f "$0"
) &

reboot