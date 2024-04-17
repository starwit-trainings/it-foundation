---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 05 - Java and Databases'
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
# 05 - Java and Databases

In this section we learn how to access databases from a programming language. All examples are in Java and make use of [JDBC](https://en.wikipedia.org/wiki/Java_Database_Connectivity#:~:text=Java%20Database%20Connectivity%20(JDBC)%20is,client%20may%20access%20a%20database.).

---
## Tasks

* What do we need to connect software to a database?
* Create a fresh database from last section
* Run [Java example](src/main/java/de/starwit/App.java), find config where to adapt database name, user,...
* What can be improved?
* Write code that:
    * parse club data into fitting objects
    * adds data for your imaginary club, player,... via Java - can you make sure that data is not added twice? is that even possible?
    * can read from all tables and convert resulting data into Java objects
    * logs queries into log file
* If we wanted to import large datasets via CSV files - how would you solve this problem?
* Any thoughts on database connection(s) - could there be a problem?
* Why can't we just load CSV files and store them in memory?
* Are you bored with ResultSet parsing? Any ideas what you can do? Hint - libraries are your friend :)
