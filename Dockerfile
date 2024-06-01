FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar .java-web-app.jar 
ENTRYPOINT ["java","-jar","/java-web-app.jar"]
