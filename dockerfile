# Start from a base image, such as a simple Linux environment or an official image like Ubuntu
FROM ubuntu:20.04

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory (same as Dockerfile) to /app in the container
COPY . .

# Install any dependencies you might need (e.g., if your files are a Node.js app or need other software)
RUN apt-get update && apt-get install -y \
    # Add dependencies here (example: curl, git, etc.)
    && apt-get clean

# Specify the default command (if applicable, like starting a service or app)
CMD ["bash"]   # If you want to keep it interactive for now, or change as per your use case
