# Use OpenJDK base image
FROM eclipse-temurin:20-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the JAR
COPY coffeeshop-1.0.0.jar app.jar

# Expose port (Render provides $PORT)
EXPOSE 8080

# Start the app
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]