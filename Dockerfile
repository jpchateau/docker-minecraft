FROM java:8-jre

MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN cd && wget https://s3.amazonaws.com/Minecraft.Download/versions/1.9/minecraft_server.1.9.jar

VOLUME ["/data"]

EXPOSE 25565

WORKDIR /data

CMD ["/bin/bash"]