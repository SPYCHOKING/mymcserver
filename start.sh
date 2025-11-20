#!/bin/bash

# Download server.jar if missing
if [ ! -f server.jar ]; then
    wget -O server.jar https://launcher.mojang.com/v1/objects/4f81d0328246d90e811f9cda525c20bbd76ecf43/server.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Start Minecraft
java -Xmx1024M -Xms1024M -jar server.jar nogui
