FROM java:9-jre

MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

# Make sure we don't get notifications we can't answer during building
ENV DEBIAN_FRONTEND noninteractive

VOLUME ["/data"]

# Download and install the required packages
RUN apt-get update

# Minecraft port
EXPOSE 25565

WORKDIR /data

COPY ./Resources/start.sh /start.sh

# Fix all permissions
RUN chmod +x /start.sh

CMD ["/start.sh"]
