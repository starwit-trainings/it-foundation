# Java & Docker

This example packages a Java application into a Docker container.

Stuff to read:

* Kickstart SpringBoot app: https://start.spring.io/

## Tasks
* search for images in https://hub.docker.com/
    * MariaDB, Wordpress
* Build app and container
    * mvn package
    * sudo docker build . -t restdemo:latest
    * sudo docker images
* Run container and expose network port
    * sudo docker run -it --rm -p 8080:8080 restdemo
    * test with curl localhost:8080/info
* Can you see logs?
* Can you connect this app to a database?