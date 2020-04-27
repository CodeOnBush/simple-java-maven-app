FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8090
ADD spring-boot-docker-1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]