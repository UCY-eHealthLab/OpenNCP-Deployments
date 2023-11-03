FROM tomcat:9.0.82-jre11-temurin-jammy

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ARG PORTAL_VERSION=1.1.0
ARG MYSQL_HOST
ARG MYSQL_PORT
ARG MYSQL_USERNAME
ARG MYSQL_PASSWORD
ARG JAVA_OPTS
ARG EPSOS_PROPS_PATH
ARG CATALINA_OPTS
WORKDIR /usr/local/tomcat/webapps

COPY lib/* /usr/local/tomcat/lib/
COPY server.xml /usr/local/tomcat/conf/server.xml

COPY ehealth-portal /usr/local/tomcat/webapps/ehealth-portal

CMD ${CATALINA_HOME}/bin/catalina.sh run
