FROM openjdk:11
ADD target/buysell-0.0.1-SNAPSHOT.jar target/server.jar
ENTRYPOINT ["java","jar","server.jar"]