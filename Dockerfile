FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8090
ADD target/my-app-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]