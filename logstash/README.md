# Docker Logstash Container

conf.d must be mounted as /opt/logstash/conf.d to use config.

## Build

docker build -t chai-logstash  .

## Run 

 docker run --name chai-logstash -d  -p 9292:9292   -p 9200:9200 -v "$PWD"/conf.d:/opt/logstash/conf.d/  chai-logstash
