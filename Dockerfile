# Stage 1: Build the application
FROM adoptopenjdk/openjdk11
WORKDIR /app
COPY . .
EXPOSE 8080
WORKDIR /usr/src/app
CMD ["java", "-jar", "app.jar"]
