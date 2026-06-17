FROM eclipse-temurin:8-jdk-alpine

LABEL maintainer="MithunTechnologies"

RUN apk update && apk add --no-cache bash

RUN mkdir -p /opt/application

ENV PROJECT_HOME=/opt/application

COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-mongo.jar"]
