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
mkdir /home/$USER/minecraft
docker run -d --name minecraft -p=25565:25565 -v=/home/$USER/minecraft:/data jpchateau/docker-minecraft
```
