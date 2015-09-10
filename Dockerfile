# Basic Ubuntu configuration with the base packages required by the Lappsgrid
# Service Manager.
#
# - Tomcat 7
# - Open JDK 7
# - PostgreSQL 9.3
# - Handy things like emacs, nano, wget, and curl.

FROM ubuntu:14.04

MAINTAINER Keith Suderman, suderman@cs.vassar.edu

RUN apt-get -qq update 

ENV DEBIAN_FRONTEND=noninteractive
ENV DEB_JAVA_REPO="http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" \
    DEB_POSTGRESQL_REPO="http://apt.postgresql.org/pub/repos/apt/ squeeze-pgdg main" 

RUN apt-get install -y emacs24-nox nano curl wget openjdk-7-jdk postgresql-9.3 
#RUN apt-get install -y tomcat7 tomcat7-admin tomcat7-user tomcat7-common
#ADD ./tomcat.html /var/lib/tomcat7/webapps/ROOT/index.html
#RUN cd /usr/share/tomcat7/lib && wget http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc4.jar
RUN service postgresql start && \
	pg_dropcluster --stop 9.3 main && \ 
	pg_createcluster --start -e UTF-8 9.3 main
	
#CMD ["service tomcat7 start"]



