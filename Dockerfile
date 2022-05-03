FROM openjdk:11
WORKDIR /var/opt
ENV PORT 8080
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} api.jar
ENTRYPOINT ["java", "-jar", "api.jar"]