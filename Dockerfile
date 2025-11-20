FROM eclipse-temurin:17-jdk

# Install wget
RUN apt-get update && apt-get install -y wget && apt-get clean

WORKDIR /app

# Copy script
COPY start.sh .

# Make executable
RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
