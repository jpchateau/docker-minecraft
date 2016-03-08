## What's in this image?

* java-8-jre
* minecraft 1.9

## Usage

docker build -t jpchateau/docker-minecraft-server .

docker run -d --name minecraft -p 25565:25565 jpchateau/docker-minecraft-server