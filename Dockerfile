FROM java:8
COPY apt.conf /etc/apt/apt.conf
RUN apt-get update &&  apt-get install -y lame

CMD java -jar /data/chai-1.0-SNAPSHOT.jar db migrate /data/config.yml
CMD java -jar /data/chai-1.0-SNAPSHOT.jar server /data/config.yml 

EXPOSE 8080
