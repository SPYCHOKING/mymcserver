#!/bin/bash

if [ ! -f server.jar ]; then
    echo "Downloading server.jar..."
    wget -O server.jar https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar
fi

echo "eula=true" > eula.txt

java -Xmx**2G** -Xms1024M -jar server.jar nogui
