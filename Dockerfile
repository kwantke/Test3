FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar Test3.jar
ENTRYPOINT ["java","-jar","/Test3.jar"]