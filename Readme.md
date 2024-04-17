# Overview
This is a tutorial repository, showcasing a number of fundamental concept in software engineering. Feel free to use this material for your teaching classes. However please not [license note](#license).

## Tools & Preparations
Here is an overview of tools and requirements you should install on your computer. To install and use software on a computer is an essential first step to become a software engineer. So take your time preparing your work environment.

* To edit recommended tool is [VSCode](https://code.visualstudio.com/). Note you don't need admin privileges to use this software. VSCode can be enhanced by many extensions. For this course _Extension pack for Java_, _PowerShell_ and _YAML_ are recommended. But feel free to explore...
* Database and HTTP server can be downloaded at [ApacheFriends](https://www.apachefriends.org/) for your operating system. 
* [Maven](https://maven.apache.org/) is used to compile and package Java software.
* Powershell can be used on [Windows](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4) and on Linux e.g. [Ubuntu](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.4)
* [NodeJS](https://nodejs.org/) which can run JavaScript without a browser and which contains a lot of helpful development tools.

# Subprojects

Each of the next sections can be worked with individually, so no particular order is required. You will, however, notice that certain topics, like modeling classes and map them to SQL structure, are recurring aspects.

## 01 - Introduction to Formal Languages
Here you can get a first introduction into the idea of formal languages. Structure, layout & behaviour are introduced here: [Markdown, HTML & Javascript](/01-Introduction/Readme.md). It is recommendable to start with this lesson if you have no developing experience at all.


## 02 - Introduction to Java
Java is still one of the most used languages and a great example for an object oriented programming language. Next to a general language introduction you will see concepts like logging, property files and build management. More details here: 
[Java Introduction](/02-Java-Introduction/Readme.md).

## 03 - Operating Systems & Shell Scripting
This chapter contains a number of tasks and excercises to explain how an operating system works. Shell examples can be used on Windows and Linux. If you want to work with both of them, this chapter may take more time than any other topic. More details can be found here: [Operating Systems & Shell Scripting](/03-Operating-Systems/Readme.md).

## 04 - Databases
Relational data bases are still the backbone of modern computing. So SQL and its application are introduced in this section. You will learn how to define and manipulate data structures with SQL. Find more details at [Databases](/04-Databases/Readme.md).

## 05 - Java and Databases
Data bases are of limited use if you can't develop business logic. So this chapter introduces how to connect Java programs via JDBC to MariaDB. Chapter overview is located at [Java & Databases](/05-Java-Databases/Readme.md).

## 06 - Computer Networks
Connected computers are the foundation of the internet age. So learning how protocols work and how software with network functions can be developed is the topic of chapter [Networks](/06-Computer-Networks/Readme.md).

## 07 - Docker and Containers
Developing software costs money but running software generates revenue. So knowing how to package and compose applications is essential if you want your software to be used. Docker is a fundamentally important technology to run software. Chapter [Docker](/07-Docker/Readme.md) gives you an introduction on how it works and how you can run your own software as Docker images.

## 08 - Designing Interfaces with OpenAPI
As software becomes more and more complex, breaking it into seperate pieces is essential to stay in charge of complexity. Regardless of distributing software into local modules or via a network - you have to design interfaces. Chapter [openAPI](/08-openapi/Readme.md) therefore introduces a standardized way to design APIs and generate code from a specification.

# License

Code in this repository is property of [Starwit Technologies GmbH](https://starwit-technologies.de/) and is published under AGPL. So if you want to adapt it, any change needs to be published under AGPL as well. Please let us know, which changes you made. Same goes for errors and bugs.