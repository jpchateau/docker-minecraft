## About Minecraft

Minecraft is a sandbox construction game.

## About this image

This image intends to be stable and light.

### Build

```bash
docker pull jpchateau/minecraft
```
or
```bash
git clone git@github.com:jpchateau/docker-minecraft.git
cd docker-minecraft
docker build -t jpchateau/minecraft .
```

### Usage

```bash
mkdir ~/minecraft
docker run -d --name minecraft -p=25565:25565 -v=~/minecraft:/data jpchateau/minecraft
```

The mounted volume contains your server data (world, configuration and logs).
