#!/bin/bash

# Download server.jar if it doesn't exist
if [ ! -f server.jar ]; then
    wget -O server.jar https://launcher.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Start Minecraft server
java -Xmx1024M -Xms1024M -jar server.jar nogui

chmod +x start.sh
