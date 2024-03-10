# 05 - Java and Databases

In this section we learn how to access databases from a programming language. All examples are in Java and make use of [JDBC](https://en.wikipedia.org/wiki/Java_Database_Connectivity#:~:text=Java%20Database%20Connectivity%20(JDBC)%20is,client%20may%20access%20a%20database.).

## Tasks

* What do we need, to connect software to a database?
* Create a fresh database from last section
* Run [Java example](src/main/java/de/starwit/App.java), find config where to adapt database name, user,...
* What can be improved?
* Write code, that:
    * Parse club data into fitting objects
    * adds data for your imaginary club, player,... via Java. Can you make sure, that data is not added twice? Is that even possible?
    * can read from all tables and convert resulting data into Java objects.
    * logs queries into log file.
* If we wanted to import large datasets via CSV files - how would you solve this problem?
* Any thoughts on database connection(s) - could there be a problem?
* Why can't we just load CSV files and store them in memory?
* Are you bored with ResultSet parsing? Any ideas what you can do? Hint - libraries are your friend :)
