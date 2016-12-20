# Docker Compose

This project has 3 docker compose files:

* backend.yml   - backend components
* frontend.yml  - for everything (includes printing and front end)



## Usage

Need the following:

* /cards folder containing all cards
* /config folder containing front end config

For full stack

        export PGPASS=ThisIsChai1        
        docker-compose -f backend.yml -f frontend.yml -f elk.yml up --build

## Container Details




