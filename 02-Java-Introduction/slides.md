---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 02 - Java Introduction'
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
# 02 - Java Introduction

This section contains a quick introduction into the Java programming language. Next to the obligatory hello world moment, it shall also introduce base concepts for build & dependency management.

---
## Stuff to read

* Introduction to [Java](https://www.w3schools.com/java/java_intro.asp)
* What is Java compiled into? [Bytecode](https://en.wikipedia.org/wiki/Java_bytecode)

---
## Tasks

* Compile & run application
* Read and output CSV file content [Hint](https://www.baeldung.com/java-csv-file-array)
* Parse file content into a data structure [Hint](https://www.tutorialspoint.com/java_generics/java_generics_list.htm)
* Read application properties from app.properties [Hint](https://mkyong.com/java/java-properties-file-examples/)
* Read CSV file location from properties file
* Handle exceptions [Hint](https://www.baeldung.com/java-exceptions)
    * properties file not found
    * configured CSV file not found
* Create proper log output
    * which events should be logged? at which debug level?
    * look into log4j2.xml config file
    * add a rolling file appender [Hint](https://mkyong.com/logging/log4j2-xml-example/)
* Create executable jar file [Hint](https://www.baeldung.com/executable-jar-with-maven#bd-thymeleaf-1)
    * unzip created file
* Write and run a unit test
* Can you look into compiled Java classes with your editor?
