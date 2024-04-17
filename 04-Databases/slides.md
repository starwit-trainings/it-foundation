---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 04 - Databases'
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
# 04 - Databases

In this section we learn what databases are and how to use them. All examples are for MariaDB. 

* Wikipedia in [relational databases](https://en.wikipedia.org/wiki/Relational_database)
* SQL reference: https://mariadb.com/kb/en/sql-statements/ 
* Server Manual: https://mariadb.com/kb/en/documentation/

---
## Basic tasks

* Install MariaDB & PHPMyadmin to your machine ([Windows](https://www.apachefriends.org/), [Ubuntu](https://www.kernelhost.com/cp/knowledgebase/15/MySQL--Install-Apache2-PHP8-MySQL-MariaDB-and-PHPMyAdmin-on-Ubuntu-22.04-or-Ubuntu-20.04.html))
* Open PHPMyadmin and connect to your database
* With PHPadmin create a new database and a user. Make sure, that user can access new database
* Do the same with [SQL](SQL-Example/grant_phpmyadmin.sql)
* With PHPMyadmin create in your new database a table _liga_ with fields:
    * Liga_Nr - Integer (primary key)
    * Verband - String
    * Erstaustragung - Date
    * export SQL - do you understand how this works?
    * delete table and re-create it with SQL
    * enter some data and export again - what is the difference?

---
* Add [structure](SQL-Example/2016-06-30_bundesliga-structure.sql) to database
* Add [data](SQL-Example/2016-06-30_bundesliga-data.sql) to new database
* List all foreign keys - what do these do?
* What does _drop table_ do and why could that be a problem?
* Can you find data on your disk? Can you think of a problem with relation to table names?

---
* Write a SQL statement, that:
    * lists all clubs from every league
    * count clubs per league - can you do this in one statement for all leagues?
    * count players for each country
    * list all players with first name _Kevin_
    * list all games from first day in a season
    * run query from [join example](SQL-Example/examples.sql)
    * Can you run last query for games on first day?
    * Enter new data
        * invent a new league
        * invent a new club and make sure, it belongs to invented league
        * invent a player and add it to your club
    * How can we backup and restore your database? [Hint](https://mariadb.com/kb/en/mariadb-dump/)
        * Dump your DB and restore it in a second DB named _liga-backup_
        * When does this method could be problematic?

---
## HSQL DB example
Databasing is fun, but sometimes you can't install things. So here is an example of how to do databasing with Java and HSQL DB for which you need to install nothing. See [readme](hsqldb-example/Readme.md)