FROM centos:latest
MAINTAINER Jim Davies "jimfdavies@googlemail.com"

RUN yum install -y http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum install -y redis python-setuptools wget tar
RUN easy_install supervisor

RUN wget http://nodejs.org/dist/v0.10.28/node-v0.10.28-linux-x64.tar.gz
RUN tar zxf node-v0.10.28.tar.gz
RUN cd node-v0.10.28

# Add precise/universe mirrors
#RUN  echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list

# Update apt
#RUN apt-get -qqy update && locale-gen en_US.UTF-8

# Install base packages
#RUN apt-get -qqy install python-software-properties python g++ make git

# Add Chris Lea's node.js ppa
#RUN add-apt-repository ppa:chris-lea/node.js

# Update apt again
#RUN apt-get -qqy update

# Install node
#RUN apt-get -qqy install nodejs

# Install hubot & coffee-script globally
#RUN npm install -g hubot coffee-script

# Create new hubot
#RUN hubot --create /usr/local/hubot
#WORKDIR /usr/local/hubot
#RUN npm install && chmod +x bin/hubot

# Create hubot system user
#RUN adduser --disabled-password --gecos "" hubot

# Install redis-server and supervisor
#RUN apt-get -qqy install redis-server supervisor

#ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#CMD ["supervisord", "-n"]