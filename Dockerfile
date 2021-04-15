# For Java 8, try this
FROM openjdk:8-jdk-alpine

#server port rinnung inside container
EXPOSE 9990

#directory inside image
RUN mkdir /src

#Next we create a directory to hold the application code inside the image, this will be the working directory for your application:
# Create app directory
WORKDIR /src

# Refer to Maven build -> finalName
#ARG JAR_FILE=target/microserviceOne-0.0.1-SNAPSHOT.jar

# cp target/spring-boot-web.jar /src
COPY target/eurekaServerContainer-0.0.1-SNAPSHOT.jar /src

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","eurekaServerContainer-0.0.1-SNAPSHOT.jar"]