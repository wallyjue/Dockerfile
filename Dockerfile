FROM ubuntu

MAINTAINER Wally Chang <wallyjue@gmail.com>
RUN apt-get -qq update
RUN apt-get -qqy install vim
RUN apt-get -qqy install unzip
RUN apt-get -qqy install git
RUN apt-get -qqy install openjdk-7-jdk
RUN apt-get -qqy install junit
RUN apt-get -qqy install wget
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get -qq update
RUN apt-get -qqy install jenkins
RUN apt-get -qqy install xvfb
