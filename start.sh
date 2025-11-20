#!/bin/bash
# Make sure we’re in the directory of this script (optional)
cd "$(dirname "$0")"

# Download server.jar if it doesn't exist
if [ ! -f server.jar ]; then
    wget -O server.jar https://launcher.mojang.com/v1/objects/4f81d0328246d90e811f9cda525c20bbd76ecf43/server.jar
fi

# Accept the EULA
echo "# By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA)" > eula.txt
echo "eula=true" >> eula.txt

# Start the server with memory limits
java -Xmx1024M -Xms1024M -jar server.jar nogui
