FROM openjdk:8
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp

MAINTAINER Juan Larrayoz
EXPOSE 8080

CMD ["java", "-jar", "passwordapi.jar"]
