---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 03 - Operating Systems'
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
# 03 - Operating Systems & Shell Scripting

Here we want to learn how operating systems work. Main topic is shell scripting and how to use resources provided by OSes.

---
## Tasks

* Get the following details for your machine
    * CPU model
    * main memory
    * disk(s)
    * operating system name & version
* Which other hardware is attached to your computer?
* List all running processes
* What is your username and which groups do you have?
* Where is your home folder located? Which groups, access rights does that folder have?
* List all running services
* Does your operating system have a package manager?
* List all installed software packages

---
For Windows you can use Powershell to use OS functions and to make your life easier. On Linux Bash is a widely used shell. 

### Bash
Examples and tasks can be found in this [folder](./bash/)

### Powershell
Examples and tasks can be found in this [folder](./powershell/)
