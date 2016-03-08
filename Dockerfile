FROM java:8-jre

MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

VOLUME ["/data"]

EXPOSE 25565

ENTRYPOINT ["/bin/bash"]

WORKDIR /data
