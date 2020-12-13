#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# remove old HotkeyDaemon
launchctl unload /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist > /dev/null 2>&1
sudo rm /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist > /dev/null 2>&1
sudo rm /usr/bin/HotkeyDaemon > /dev/null 2>&1
