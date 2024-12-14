# Stage 1: Build the application
FROM adoptopenjdk/openjdk11
WORKDIR /app
COPY . .
EXPOSE 8080
WORKDIR /usr/src/app
COPY --from=build /app/target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
