FROM maven:3.5-jdk-8-slim AS build
WORKDIR /home/app
COPY src     /home/app/src
COPY pom.xml /home/app
RUN mvn clean package

FROM openjdk:11
LABEL maintainer="Papun"
COPY --from=build /home/app/target/Helloworld-0.0.1-SNAPSHOT.jar /usr/local/lib/Helloworld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/Helloworld-0.0.1-SNAPSHOT.jar"]
