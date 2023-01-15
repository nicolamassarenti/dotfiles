#!/usr/bin/env fish

# Edit this line to specify the path to your AppImages
set APPIMAGE_PATH '/opt/obsidian'

# Edit this line to specify the service name
set SERVICE_NAME 'obsidian'

# Find the latest AppImage
set appimage (find $APPIMAGE_PATH -name "Obsidian-*.AppImage" | sort -r | head -n 1)

# Create the service file
sudo sh -c "echo '[Unit]\nDescription=Obsidian AppImage\n\n[Service]\nExecStart=$appimage\nRestart=always\n\n[Install]\nWantedBy=default.target' > /etc/systemd/user/$SERVICE_NAME.service"

# Reload the systemd configuration
systemctl --user daemon-reload

# Enable the service
systemctl --user enable $SERVICE_NAME.service

# Start the service
systemctl --user start $SERVICE_NAME.service
