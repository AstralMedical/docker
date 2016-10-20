FROM java:8

COPY apt.conf /etc/apt/apt.conf
RUN apt-get update &&  apt-get install -y lame

COPY docker-entrypoint.sh /

EXPOSE 8080

# Entry point ensures that database is up before CMD is run
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD java -jar /data/chai-1.0-SNAPSHOT.jar db migrate /data/config.yml && java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml


