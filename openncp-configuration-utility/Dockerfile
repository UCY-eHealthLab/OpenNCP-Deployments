FROM eclipse-temurin:11-jre-jammy

WORKDIR /usr/local/openncp-configuration-utility

COPY openncp-configuration-utility.jar /usr/local/openncp-configuration-utility/openncp-configuration-utility.jar
COPY openncp-configuration.properties /usr/local/openncp-configuration-utility/openncp-configuration.properties

CMD ["java", "-jar", "openncp-configuration-utility.jar"]
