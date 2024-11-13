FROM eclipse-temurin:17
ENV TZ=America/Mexico_City
COPY ConectorT24/target/ConectorT24-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]