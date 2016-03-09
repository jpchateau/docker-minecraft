FROM java:9-jre
MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

VOLUME ["/data"]

# Forward apporpriate ports
EXPOSE 25565

COPY ./Resources/start.sh /start.sh

# Fix all permissions
RUN chmod +x /start.sh

CMD ["/start.sh"]
