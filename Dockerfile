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

RUN apt-get update && apt-get install -y emacs24-nox nano curl wget zip unzip man openjdk-7-jdk 
	



