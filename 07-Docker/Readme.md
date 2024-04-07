# 07 - Docker & Container

Container are a great way to package, run and compose applications. In this section you will learn, how to use and build Docker containers.

Stuff to read:

* Docker overview: https://docs.docker.com/get-started/overview/
* Docker compose https://docs.docker.com/get-started/08_using_compose/


## Tasks

* Install Docker to your system
* Pull image for MariaDB - where can you find that? List images on your computer.
* Run MariaDB and expose database port - any problems?
* Run Wordpress image and connect it to MariaDB container
* What happens if you stop containers?
* Use Docker compose to run Wordpress and MariaDB together - make sure database is _not_ exposed tp public network
* Run [Java example](java_example/Readme.md)
* Run docker-compose file in folder [docker-compose](docker-compose/docker-compose.yaml)
* Add Grafana to compose file - Docker image for Grafana can be found [here](https://hub.docker.com/r/grafana/grafana)