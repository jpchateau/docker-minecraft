Docker minecraft
================

Docker-minecraft is a docker image to run a minecraft server.

## Build

```bash
git clone git@github.com:jpchateau/docker-minecraft.git
cd docker-minecraft
docker build -t jpchateau/docker-minecraft .
```

## Usage

```bash
sudo mkdir /minecraft
sudo docker run -d=true --name minecraft -p=25565:25565 -v=/minecraft:/data jpchateau/docker-minecraft
```
