##!/bin/bash

#JAVA=/usr/lib/jvm/java-19-openjdk-amd64/bin/java
#JAVA=/opt/jdk-20.0.1/bin/java
#JAVA=/usr/java/openjdk-19/bin/java
#JAVA=/usr/lib/jvm/java-11-openjdk-amd64/bin/java
#BASE=/home/huber/eclipse-workspace/ebookshop
#BASE=.
#HOME=/opt/apache-tomcat-9.0.34
#HOME=/opt/apache-tomcat-9.0.55
#WAPP=/home/huber/eclipse-workspace/ebookshop
#WAPP=.

$JAVA/bin/java -Dcatalina.base=$BASE -Dcatalina.home=$HOME -Dwtp.deploy=$WAPP -Dfile.encoding=UTF-8 -classpath $HOME/bin/bootstrap.jar:$HOME/bin/commons-daemon.jar:$HOME/bin/tomcat-juli.jar org.apache.catalina.startup.Bootstrap start
