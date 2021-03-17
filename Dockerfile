FROM openjdk:8-jre-slim

RUN useradd -ms /bin/bash javaapp
USER newuser

WORKDIR /home/javaapp
RUN mkdir myapp

COPY ./src/passwordapi.jar ./myapp



MAINTAINER Juan Larrayoz
EXPOSE 8080

CMD ["java", "-jar", "passwordapi.jar"]
