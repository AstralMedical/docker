FROM java:7

COPY apt.conf /etc/apt/apt.conf
RUN apt-get update &&  apt-get install -y lame

CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml -db pg:5432 -es logstash:12201 -cards /data/cards

EXPOSE 8080
