Docker Minecraft
================

Docker minecraft is a docker image to run a minecraft server.

## Build

```bash
git clone git@github.com:jpchateau/docker-minecraft-server.git
cd docker-minecraft-server.git
docker build -t jpchateau/docker-minecraft-server .
```

## Usage

```bash
sudo docker run -d=true --name minecraft -p=25565:25565 -v=/minecraft:/data jpchateau/docker-minecraft-server /start.sh
```
