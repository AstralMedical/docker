# Docker Pims

Docker image which runs a java process.
It loads the following files which should be copied to the "/data" volume:

* chai-pims-1.0-SNAPSHOT.jar
* pims.properties

## Build

docker build -t chai-pims .

## To run in dev mode

		mkdir data
		cp chai-dev.properties data/pims.properties
		cp ~/.m2/repository/uk/co/elidirhealth/chai/chai-pims/1.0-SNAPSHOT/chai-pims-1.0-SNAPSHOT.jar data

		docker run  -v /path/to/folder:/data -d --link chai-postgres:chai-postgres --link chai-logstash:logstash --name chai-pims chai-pims


