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
COPY ${WORKSPACE}/target/simple-web-app.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD service tomcat start && tail -f /usr/local/tomcat/logs




#ENTRYPOINT cd /usr/local/tomcat/bin/./startup.sh
