# Start with a base image (e.g., Ubuntu)
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory to the /app directory in the container
COPY . .

# Install necessary dependencies (adjust for your project type)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    && apt-get clean

# Default command to run the container (can be changed based on your needs)
CMD ["bash"]
