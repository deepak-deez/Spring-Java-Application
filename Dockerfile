FROM tomcat:8.5
MAINTAINER Tung Nguyen <tongueroo@gmail.com>

# Debugging tools: A few ways to handle debugging tools.
# Trade off is a slightly more complex volume mount vs keeping the image size down.
RUN apt-get update && \
  apt-get install -y \
    net-tools \
    tree \
    vim && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

RUN apt-get update
RUN apt-get install maven -y
COPY pom.xml /usr/local/tomcat
RUN mvn package
RUN mkdir -p pkg
RUN mv target/demo.war pkg/demo.war

RUN cp pkg/demo.war /usr/local/tomcat/webapps/demo.war
RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
RUN echo "JAVA_OPTS="$JAVA_OPTS $JSSE_OPTS -Djava.security.egd=file:/dev/./urandom"" >> /usr/local/tomcat/bin/setenv.sh
#JAVA_OPTS="$JAVA_OPTS $JSSE_OPTS
#CATALINA_OPTS="$CATALINA_OPTS
RUN chmod a+x /usr/local/tomcat/bin/setenv.sh

 

EXPOSE 8080
CMD ["catalina.sh", "run"]
