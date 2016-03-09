FROM java:9-jre
MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

# Minecraft version
ENV version=1.9

VOLUME ["/data"]

# Forward apporpriate ports
EXPOSE 25565

RUN wget -O /minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/${version}/minecraft_server.${version}.jar

COPY ./Resources/start.sh /start

# Fix all permissions
RUN chmod +x /start

CMD ["/start"]
