# Java 17 environment setup
FROM eclipse-temurin:17-jre

# Work directory
WORKDIR /opt/Lavalink

# Aapki upload ki hui files ko container mein copy karein
COPY application.yml application.yml
COPY Lavalink.jar Lavalink.jar

# Port open karein
EXPOSE 8080

# Lavalink start karne ki command
CMD ["java", "-Xmx512M", "-jar", "Lavalink.jar"]
