FROM eclipse-temurin:17
ENV TZ=America/Mexico_City
COPY ConfigServer/target/ConfigServer-1.0-SNAPSHOT.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java","-jar","app.jar"]