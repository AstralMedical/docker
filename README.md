# docker

docker build chai-logstash -t

 docker run --name chai-logstash -it --rm -v "$PWD":/configuration  chai-logstash logstash -f /configuration/logstash.conf 
