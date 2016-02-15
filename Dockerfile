FROM java:7

CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml -db $PG_PORT_5432_TCP_ADDR:$PG_PORT_5432_TCP_PORT -es $LOGSTASH_PORT_12201_UDP_ADDR:$LOGSTASH_PORT_12201_UDP_PORT -cards /data/cards

EXPOSE 8080
