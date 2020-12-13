#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# remove old HotkeyDaemon
launchctl unload /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist > /dev/null 2>&1
sudo rm /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist > /dev/null 2>&1
sudo rm /usr/bin/HotkeyDaemon > /dev/null 2>&1

sudo mkdir -p /usr/local/bin/
sudo chmod -R 755 /usr/local/bin/
sudo cp $DIR/HotkeyDaemon /usr/local/bin/
sudo chmod 755 /usr/local/bin/HotkeyDaemon
sudo chown root:wheel /usr/local/bin/HotkeyDaemon

sudo cp $DIR/io.github.goshin.HotkeyDaemon.plist /Library/LaunchAgents
sudo chmod 644 /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist
sudo chown root:wheel /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist

sudo launchctl load /Library/LaunchAgents/io.github.goshin.HotkeyDaemon.plist
