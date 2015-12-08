# Docker Tomcat

Using docker to run a grails application container.

You must:

* Mount a volume at /data containing chai-demo-0.1.jar
* Link to a postgres container with hostname postgres

## Build

	docker build -t pims-grails .

## Run

To debug

	docker run -it --rm --name pims-grails -p 8081:8080 -v `pwd`/data:/data --link chai-postgres:postgres pims-grails

To run for real

	docker run -d --name pims-grails -p 8081:8080 -v `pwd`/data:/data --link chai-postgres:postgres pims-grails
   
   
