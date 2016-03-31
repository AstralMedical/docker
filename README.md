# Docker Compose

This project has 3 docker compose files:

* backend.yml - backend only (e.g. for dev on front end)
* complete.yml - for everything (includes printing and front end)
* pims.yml - for pims

## backend.yml

Create a folder called data, and copy in the following:

* chai-1.0-SNAPSHOT.jar (Can get from latest jenkins build - https://www.elidirhealth.co.uk/jenkins/view/dev/job/dev-backend-jar/ws/chai/target/chai-1.0-SNAPSHOT.jar)
* config.yml (As above: https://www.elidirhealth.co.uk/jenkins/view/dev/job/dev-backend-jar/ws/chai/target/classes/config.yml)
* all cards - copy from cards git repo into a single directory called cards.

To run:

    `export PGPASS=[chai-password]`
    `docker-compose -f backend.yml up`

You should end up with the backend available at:

    http://localhost:8080

And logstash available at:

    http://localhost:9292

## complete.yml

build.sh expects to find projects in ~/git/$project
all projects must be built before running build.sh
you will need to edit the confic.json for the client

## To run the project

    `docker-compose -f backend.yml up`






