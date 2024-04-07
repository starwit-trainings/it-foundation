# 06 - Computer Networks

Computer without networks are nice, connected computers however are aweseome! In this section you will learn what computer networks are and how you can use them.

## Stuff to read
* Introduction to [IP](https://en.wikipedia.org/wiki/Internet_protocol_suite), [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol)
* [Wireshark](https://www.wireshark.org/)

## Tasks

### Basic network questions

* List all network devices in your computer, are all of those real?
* Determine all IP addresses
    * Does your computer have a public address?
    * Which IP version are those interfaces?
* How fast can (hardware of) your computer transfer data?
* List IP routes of your computer, which of those are dynamic, which are static?
* Can you reach your colleauges computer - how can you check that?
* List all hops between your computer and target address 8.8.8.8.
* List all open connections from your computer:
    * to which target adresses are those connections?
    * which software on your computer opened those connections?
* use ping command to try to reach a computer from one of your fellow students - which information do you need for that task?

## Linux tooling for networks
* Use netcat/nc to open network a port, use telnet to send characters
* Install secure shell (SSH) to your machine with _sudo apt install openssh-server_ and log into your own computer

### More interesting stuff
* Record two minutes of network traffic
    * Which protocols can you see?
    * Can we list packets that belong together?
    * How many packets are transfered?
* run [Server example](serverexample/Readme.md) and implement server functions.