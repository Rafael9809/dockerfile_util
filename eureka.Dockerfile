FROM eclipse-temurin:17
ENV TZ=America/Mexico_City
COPY eureka/target/eureka-1.0-SNAPSHOT.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","app.jar"]