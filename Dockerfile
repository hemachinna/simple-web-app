FROM ubuntu:16.04
FROM tomcat
RUN apt-get update
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get update
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get update
RUN apt-get install -y ssh
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get update
RUN apt-get install -y net-tools
ENTRYPOINT cp ${WORKSPACE}/jenkins/target/simple-web-app.war /usr/local/tomcat/webapps
ENTRYPOINT cd /usr/local/tomcat/bin/./startup.sh
