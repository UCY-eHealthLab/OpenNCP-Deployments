FROM tomcat:9.0.58-jre11-openjdk-slim-buster

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ARG OPENNCP_VERSION=5.2.4
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

RUN wget https://ec.europa.eu/cefdigital/artifact/repository/eHealth/eu/europa/ec/sante/ehdsi/openncp-protocol-terminators/openncp-ncp-client/openncp-client-connector/$OPENNCP_VERSION/openncp-client-connector-$OPENNCP_VERSION.war &&  mv openncp-client-connector-$OPENNCP_VERSION.war openncp-client-connector.war
RUN wget https://ec.europa.eu/digital-building-blocks/artifact/repository/eHealth/eu/europa/ec/sante/ehdsi/openncp-trc-sts/$OPENNCP_VERSION/openncp-trc-sts-$OPENNCP_VERSION.war &&  mv openncp-trc-sts-$OPENNCP_VERSION.war  openncp-trc-sts.war 

CMD ${CATALINA_HOME}/bin/catalina.sh run
