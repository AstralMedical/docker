# docker

<<<<<<< HEAD
 docker run --name chai-logstash -it --rm -v "$PWD":/configuration  chai-logstash logstash -f /configuration/logstash.conf 
=======
## to build the project :-

docker build -t chai-backend ./

## To run the project

docker run   -it -p 8081:8080  --link chai-postgres:pg --link ecstatic_hawking:logstash chai-backend


>>>>>>> 3743fbcf43f25e2958c493608b66c3478914d2a7
