FROM openjdk:8-jdk-alpine
RUN addgroup-S notes && adduser -S notes -G notes
USER notes:notes
ENV MAVEN_VERSION 3.5.4
ENV MAVEN_HOME /usr/lib/mvn 
RUN wget 
ARG JAR_FILE=*.jar
COPY ${AR_FILE} easy-note.jar  
COPY application.properties application.properties
ENTRYPOINT [ "java", "-jar", "/easy-note.jar"]



