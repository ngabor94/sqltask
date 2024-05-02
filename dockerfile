# Use the official MySQL image as the base image
FROM mysql:latest

# Set environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# COPY
COPY dump.sql /home/

# Expose port 3306 to allow external connections
EXPOSE 3306

# Start MySQL server when the container launches
CMD ["mysqld"]