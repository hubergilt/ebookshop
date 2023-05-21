#FROM alpine:3.18
FROM openjdk:19

ENV WDIR=/usr/local/ebookshop
ENV JAVA=/usr/java/openjdk-19
ENV BASE=$WDIR
ENV HOME=/usr/local/tomcat
ENV WAPP=$WDIR

WORKDIR $WDIR
COPY . $WDIR

#COPY --from=openjdk:19 $JAVA $JAVA
COPY --from=tomcat:9.0 $HOME $HOME

EXPOSE 8080

#CMD ["startup.sh"]
CMD $JAVA/bin/java -Dcatalina.base=$BASE -Dcatalina.home=$HOME -Dwtp.deploy=$WAPP -Dfile.encoding=UTF-8 -classpath $HOME/bin/bootstrap.jar:$HOME/bin/commons-daemon.jar:$HOME/bin/tomcat-juli.jar org.apache.catalina.startup.Bootstrap start
