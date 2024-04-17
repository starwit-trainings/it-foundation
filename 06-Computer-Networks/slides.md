---
marp: true
paginate: hide
theme: default 
header: ![h:50](../imgs/starwit.png)
footer: 'Starwit Technologies GmbH | IT Foundations | 06 - Computer Networks'
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
# 06 - Computer Networks

Computer without networks are nice, connected computers however are aweseome! In this section you will learn what computer networks are and how you can use them.

---
## Tasks

### Basic network questions

* List all network devices in your computer - are all of those real?
* Determine all IP addresses
    * does your computer have a public address?
    * which IP version are those interfaces?
* How fast can (the hardware of) your computer transfer data?
* List IP routes of your computer - which of those are dynamic, which are static?
* Can you reach your colleauges computer - how can you check that?
* List all hops between your computer and target address 8.8.8.8.
* List all open connections from your computer:
    * to which target adresses are those connections?
    * which software on your computer opened those connections?
* Use ping command to try to reach a computer from one of your fellow students - which information do you need for that task?

---
### Linux tooling for networks
* Use netcat/nc to open network a port, use telnet to send characters
* Install secure shell (SSH) to your machine with _sudo apt install openssh-server_ and log into your own computer

---
### More interesting stuff
* Record two minutes of network traffic
    * which protocols can you see?
    * can we list packets that belong together?
    * how many packets are transfered?
* Run [Server example](serverexample/Readme.md) and implement server functions
