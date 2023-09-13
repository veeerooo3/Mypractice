
# Use the official Ubuntu base image
FROM ubuntu:latest

# Maintainer information
LABEL maintainer="Veera <your@email.com>"

# Set non-interactive mode during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package repository and install necessary packages
RUN apt-get update && apt-get install -y \
    openjdk-11-jre-headless \
    wget \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Download and install Jenkins
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
    apt-get update && apt-get install -y \
    jenkins \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Expose the default Jenkins port
EXPOSE 8080

# Start Jenkins on container startup
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]

# Optional: Create a Jenkins home directory as a volume
VOLUME /var/jenkins_home
