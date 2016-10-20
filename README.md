# Docker Compose

This project has 3 docker compose files:

* backend.yml   - backend components
* dev.yml       - exposes 8080 for local development
* frontend.yml  - for everything (includes printing and front end)

## Usage

For development

        export PG_PASS=ThisIsChai1
        docker-compose -f backend.yml -f dev.yml -f elk.yml up --build

For full stack

        export PGPASS=ThisIsChai1
        docker-compose -f backend.yml -f frontend.yml -f elk.yml up --build

## Container Details

**backend**
Extends Java image. Requires jar, config and card files in /data

**postgres**
official postgres image, with named volume for data

**elasticsearch**
Uses official elasticsearch image with named volume for data. No custom config. (Kibana image posts index configuration?)

**logstash**
Uses official logstash image with mapped conf.d directory

**kibana**
Uses official kibana image with mapped config directory

**web**
Extends ngnix image. Copies in config and static site.

**printing**
TODO



