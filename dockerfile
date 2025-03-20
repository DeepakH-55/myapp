# Use the official Nginx image as a base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML, CSS, and JS files to the Nginx web directory
COPY . .

# Expose port 80 for HTTP
EXPOSE 80

# Nginx will run in the background by default, so no need to specify a command
# Nginx starts automatically when the container runs