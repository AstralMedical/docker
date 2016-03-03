
FROM java:7

CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml -db pg:$PG_PORT_5432_TCP_PORT -es logstash:$LOGSTASH_PORT_12201_UDP_PORT -cards /data/cards

EXPOSE 8080
