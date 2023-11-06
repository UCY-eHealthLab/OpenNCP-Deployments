FROM tomcat:9.0.82-jre11-temurin-jammy

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ARG OPENNCP_VERSION=6.5.0-SNAPSHOT
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
COPY context.xml /usr/local/tomcat/conf/context.xml

COPY webapps/openncp-trc-sts.war /usr/local/tomcat/webapps/TRC-STS.war

# RUN wget https://ec.europa.eu/digital-building-blocks/artifact/repository/eHealth/eu/europa/ec/sante/ehdsi/openncp-protocol-terminators/openncp-ncp-server/openncp-ws-server/$OPENNCP_VERSION/openncp-ws-server-$OPENNCP_VERSION.war && mv openncp-ws-server-$OPENNCP_VERSION.war openncp-ws-server.war

CMD ${CATALINA_HOME}/bin/catalina.sh run
