FROM centos:latest
MAINTAINER Jim Davies "jimfdavies@googlemail.com"

RUN yum install -y http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum install -y redis python-setuptools nodejs npm
RUN easy_install supervisor

RUN npm install -g hubot coffee-script

RUN hubot --create /usr/local/hubot
WORKDIR /usr/local/hubot
RUN npm install && chmod +x bin/hubot

# Create hubot system user
#RUN adduser --disabled-password --gecos "" hubot

ADD supervisor.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]