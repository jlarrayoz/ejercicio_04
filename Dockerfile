FROM openjdk:8-jre-slim
COPY ./src/passwordapi.jar /usr/src/myapp
WORKDIR /usr/src/myapp

RUN useradd -ms /bin/bash javaapp
USER newuser

MAINTAINER Juan Larrayoz
EXPOSE 8080

CMD ["java", "-jar", "passwordapi.jar"]
