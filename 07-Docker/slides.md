---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 07 - Docker'
---

<style>
header {
  text-align: right;
  font-size: 0.7rem;
  color: #bbb;
  margin: 20px;
  left: 0px;
  right: 0px;
  padding-top: 5px;
}
footer {
  font-size: 0.7rem;
  color: #bbb;
}
section.lead {
  text-align: left;
  margin-bottom: 40px;
}
section {
  font-size: 1.2rem;
}
section.lead h1 {
  text-align: center;
  font-size: 2.5rem;
  font-weight: 600;
}
section.linked footer {
  display: none;
}
section.linked header {
  display: none;
}
section.quote {
  font-size: 1.0rem;
  text-align: center;
  font-style: italic;
  color: #555;
}

h1 {
  font-size: 2.5rem;
  font-weight: 500;
  color: #2B5A6A;
}
h2 {
  font-size: 1.8rem;
  font-weight: 400;
  color: #333;
  margin-top: 30px;
  margin-bottom: 15px;
  text-transform: uppercase;
}
h3 {
  font-size: 1.5rem;
  font-weight: 500;
  color: #000000;
  margin-top: 20px;
  margin-bottom: 10px;
  text-transform: none;
}
a {
  color: #3A9FC1;
}
a:hover {
  color: #1E708B; 
  text-decoration: underline; 
}

</style>

<!-- _class: lead -->
# 07 - Docker & Container

Containers are a great way to package, run and compose applications. In this section you will learn how to use and build Docker containers.

---
## Stuff to read

* Docker overview: https://docs.docker.com/get-started/overview/
* Docker compose https://docs.docker.com/get-started/08_using_compose/

---
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
