# Java Introduction

This section contains a quick introduction into the Java programming language. Next to the obligatory hello world moment, it shall also introduce base concepts for build & dependency management.

## Tasks

* Compile & run application
* read and output CSV file content [Hint](https://www.baeldung.com/java-csv-file-array)
* parse file content into a data structure [Hint](https://www.tutorialspoint.com/java_generics/java_generics_list.htm)
* read application properties from app.properties [Hint](https://mkyong.com/java/java-properties-file-examples/)
* read CSV file location from properties file
* handle exceptions
    * properties file not found
    * configured CSV file not found
* create proper log output
    * which events should be logged? At which debug level?
    * look into log4j2.xml config file
    * add a rolling file appender [Hint](https://mkyong.com/logging/log4j2-xml-example/)
* create executable jar file [Hint](https://www.baeldung.com/executable-jar-with-maven#bd-thymeleaf-1)
    * unzip created file
* write and run a unit test