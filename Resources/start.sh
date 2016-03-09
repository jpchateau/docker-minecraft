#!/bin/bash

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

cd /data
java -Xmx1024M -Xms1024M -jar /minecraft_server.jar nogui
