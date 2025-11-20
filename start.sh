#!/bin/bash

# Download server.jar if missing
if [ ! -f server.jar ]; then
    wget -O server.jar https://piston-data.mojang.com/v1/objects/69b4aeff4d461a775888b859504a829148d464ef/server.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Start Minecraft
java -Xmx1024M -Xms1024M -jar server.jar nogui
