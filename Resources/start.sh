#!/bin/bash

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

files=("banned-ips" "banned-players" "ops" "usercache" "whitelist")
for file in ${files[*]};
do
	if [ ! -f /data/$file.json ]
	then
		echo "[]" > /data/$file.json
	fi
done

cd /data
java -Xmx1024M -Xms1024M -jar /minecraft_server.jar nogui
