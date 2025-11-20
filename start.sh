#!/bin/bash

if [ ! -f server.jar ]; then
    wget -O server.jar https://piston-data.mojang.com/v1/objects/1ad21c011df9290ecb7bd54e39dbf99ed5b6848f/server.jar
fi

echo "eula=true" > eula.txt

java -Xmx1024M -Xms1024M -jar server.jar nogui
