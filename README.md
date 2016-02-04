# Docker Logstash Container

## Build

The dockerfile just specified the ports to be opened and copies in a default dashboard

docker build -t chai-logstash  .

## Run (locally with port exposed)

 docker run --name chai-logstash -d  -p 9292:9292   -p 9200:9200 -p 12201:12201/udp -v "$PWD"/conf.d:/opt/logstash/conf.d/  chai-logstash
