# lappsgrid/ubuntu 
#
# Basic Ubuntu configuration with the base packages required by the Lappsgrid
# Service Manager.
#
# - Open JDK 8
# - PostgreSQL 9.3
# - Handy things like man, emacs, nano, wget, and curl.

FROM ubuntu:16.04

MAINTAINER Keith Suderman, suderman@cs.vassar.edu

RUN apt-get update && apt-get install -y emacs24-nox nano curl wget zip unzip man openjdk-8-jdk maven git
ADD lsd-latest.tgz /usr/local/bin
RUN chmod +x /usr/local/bin/lsd
COPY settings.xml /root/.m2/settings.xml


	



