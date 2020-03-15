FROM openjdk:8-jdk-alpine

COPY am-spring-boot-zuul.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
