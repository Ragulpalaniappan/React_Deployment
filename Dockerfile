# Use the official Nginx image as the base image
FROM nginx:latest

# Set working directory in the container
WORKDIR /usr/share/nginx/html

# Remove default nginx content
RUN rm -rf ./*

# Copy application files to Nginx's HTML directory
COPY build/ /usr/share/nginx/html

# Expose port 80 to make the application accessible
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
