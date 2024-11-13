FROM eclipse-temurin:17
ENV TZ=America/Mexico_City
COPY gateway/target/gateway-1.0-SNAPSHOT.jar app.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","app.jar"]