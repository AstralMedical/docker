# docker

#to build

docker build -t chai-logstash ./

# to run 

docker run    -d  -p 9292:9292   -p 9200:9200   chai-logstash

