FROM alpine/git as source
WORKDIR /app
RUN git clone https://github.com/spring-projects/spring-petclinic.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=source /app/spring-petclinic /app 
RUN mvn install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/spring-petclinic-2.7.3.jar /app 
CMD ["java -jar spring-petclinic-2.7.3.jar"] 