FROM gradle:7.2.0-jdk11-hotspot AS build

COPY --chown=gradle:gradle ./game-of-life-server /home/gradle/src
WORKDIR  /home/gradle/src
RUN gradle build --no-daemon

RUN rm build/libs/*-plain.jar

FROM openjdk:11-jre-slim

EXPOSE 8080

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/gol-application.jar
