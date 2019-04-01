FROM maven:3.6-jdk-8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn clean package
EXPOSE 9000
ENTRYPOINT ["java","-jar","target/gs-actuator-service-0.1.0.jar"]  
