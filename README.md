# docker

## to build the project :-

docker build -t chai-pims .

## To run the project

docker run  -v /path/to/folder:/data  --link chai-postgres:pg --link chai-logstash:logstash chai-pims


