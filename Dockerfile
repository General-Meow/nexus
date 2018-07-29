# build: docker build -t generalmeow/nexus:<TAG> .
# run: docker run -d --network host --restart always --name nexus --network host -v /var/run/docker.sock:/var/run/docker.sock -v /home/paul/work/jenkins_home:/home/.jenkins -e JENKINS_HOME='/home/.jenkins'  generalmeow/nexus:<TAG>
# notes: the base image ubuntu supports many architectures including arm. to make it work, you just
# need to build the image on an arm based machine.
FROM ubuntu:18.04
MAINTAINER Paul Hoang 2018-07-29
RUN ["apt", "update"]
RUN ["apt", "upgrade", "-y"]

ADD ["./files/jdk-8u171-linux-arm32-vfp-hflt.tar.gz", "/home"]
ENV JAVA_HOME=/home/jdk1.8.0_171
ENV CLASSPATH=.
ENV PATH=${JAVA_HOME}/bin:${PATH}

RUN ["mkdir", "-p", "/home/nexus"]
ADD ["./files/nexus-3.13.0-01-unix.tar.gz", "/home/nexus"]
ENV NEXUS_HOME=/home/nexus
ENV PATH=${NEXUS_HOME}/nexus-3.13.0-01/bin:${PATH}

WORKDIR /home/nexus/nexus-3.13.0-01/bin

ENV INSTALL4J_JAVA_HOME=${JAVA_HOME}
RUN ["./nexus", "run"]
