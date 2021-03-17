FROM openjdk:8-jre-slim

RUN useradd -ms /bin/bash javaapp
USER javaapp

WORKDIR /home/javaapp/myapp

COPY ./src/passwordapi.jar .

MAINTAINER Juan Larrayoz
EXPOSE 8080

CMD ["java", "-jar", "passwordapi.jar"]
