# WCP 

## to build the project :-

docker build -t chai-wcp .

## To run the project

docker run  --name chai-wcp name `pwd`/data:/data  --link chai-postgres:pg chai-wcp
