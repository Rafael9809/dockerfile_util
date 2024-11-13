FROM eclipse-temurin:17
ENV TZ=America/Mexico_City
COPY ConectorMongo/target/ConectorMongo-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]