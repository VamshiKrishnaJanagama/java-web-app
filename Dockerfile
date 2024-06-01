FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/java-web-app:7.jar .java-web-app.jar 
ENTRYPOINT ["java","-jar","/java-web-app.jar"]
