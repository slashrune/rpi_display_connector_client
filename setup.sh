#!/bin/bash

# Read in the id of the display
echo "Enter the ID of the display"
read displayID
echo "Display ID is set as: ${displayID}"

# Change to home folder on pi!
cd /Users/rune/Documents/Prototypes/BashInstaller/rpi_display_connector/_lib

# Create the config file
#touch config.js
echo 'Config file created'

cd socket.io

echo "const displayID = ${displayID};" > config.js
svn checkout "https://github.com/socketio/socket.io-client/trunk/dist"