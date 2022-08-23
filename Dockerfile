FROM openjdk:11
LABEL maintainer="Papun"
ADD target/Helloworld-0.0.1-SNAPSHOT.jar Helloworld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","Helloworld-0.0.1-SNAPSHOT.jar"]