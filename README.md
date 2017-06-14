# Docker Container with Node, Bower & Grunt installed
[![dockeri.co](http://dockeri.co/image/jstormes/node)](https://hub.docker.com/r/jstormes/node/)

This repository contains a **Dockerfile** with [Node](http://nodejs.org/), [Bower](http://bower.io/) & [Grunt](http://gruntjs.com/).  It makes running grunt tasks on a windows machine much more error free (!lf/cr for example).  

Run the script below to in the working directory of your Gruntfile.js file.

## Quick Start Windows

* Install Docker
* Install PowerShell if needed
* Clone/Download this repo
* Put the file dnode.ps1 somewhere in your path
* From a PowerShell start the dnode script in your project directory.
* You can run `node`, `bower`, and `grunt` from the provided command line.

## Quick Start OS X/Linux

* You don't need this!!! ;)

## Source

This was blatantly copied from Kevin's repo at [https://github.com/kevinmims/node-bower-grunt](https://github.com/kevinmims/node-bower-grunt)

## Base Docker Image

* [node:latest](https://hub.docker.com/r/_/node/)

## Docker Hub
* [jstormes/node](https://hub.docker.com/r/jstormes/node)

## Installation

1. Install [Docker for Windows](https://docs.docker.com/docker-for-windows/install/).

2. Build the image in PowerShell:
     ```
     docker run --rm -it -v $PWD/:/opt/project -w /opt/project jstormes/node
     ````

## Usage
* After you build the image it will open a bash terminal with the current working directory mapped to the container's opt/project folder
* Typing `ls` will list the contents of your working directory
* typing `grunt` will run the Gruntfile.js file in that directory