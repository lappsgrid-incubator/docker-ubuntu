# lappsgrid/ubuntu 
#
# Basic Ubuntu configuration with the base packages required by the Lappsgrid
# Service Manager.
#
# - Open JDK 7
# - PostgreSQL 9.3
# - Handy things like man, emacs, nano, wget, and curl.

FROM ubuntu:14.04

MAINTAINER Keith Suderman, suderman@cs.vassar.edu

ENV DEBIAN_FRONTEND=noninteractive
ENV DEB_JAVA_REPO="http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" \
    DEB_POSTGRESQL_REPO="http://apt.postgresql.org/pub/repos/apt/ squeeze-pgdg main" 

RUN apt-get update && apt-get install -y emacs24-nox nano curl wget zip unzip man openjdk-7-jdk postgresql-9.3 
RUN service postgresql start && \
	pg_dropcluster --stop 9.3 main && \ 
	pg_createcluster --start -e UTF-8 9.3 main
	



