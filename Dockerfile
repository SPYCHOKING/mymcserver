FROM openjdk:17-jdk-slim

# Install wget
RUN apt-get update && apt-get install -y wget && apt-get clean

# Create app folder
WORKDIR /app

# Copy your start script
COPY start.sh .

# Make script executable
RUN chmod +x start.sh

# Expose Minecraft default port
EXPOSE 25565

# Start the script
CMD ["./start.sh"]
