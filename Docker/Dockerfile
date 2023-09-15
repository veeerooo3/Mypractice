
# Use the official Ubuntu base image
FROM jenkins/jenkins:lts

# Maintainer information
LABEL maintainer="Veera <veeerooo3@email.com>"

# Set non-interactive mode during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package repository and install necessary packages

# Download and install Jenkins

# Expose the default Jenkins port
EXPOSE 8080
# Start Jenkins on container startup
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
# Optional: Create a Jenkins home directory as a volume
VOLUME /var/jenkins_home
