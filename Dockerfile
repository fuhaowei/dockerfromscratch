# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set the working directory
WORKDIR /app

# Install necessary packages and Python 3
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install Flask and Gunicorn
RUN pip3 install Flask gunicorn

# Copy the source code into the container
COPY . .

# Expose the port on which the app will run
EXPOSE 8000

# Set environment variables for configuration (optional)
ENV API_NAME="My REST API" \
    API_VERSION="1.0"

# Start the application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
