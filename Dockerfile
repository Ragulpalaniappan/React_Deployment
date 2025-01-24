# Use the official Nginx base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the contents of ./build into /usr/share/nginx/html
COPY ./build/ .

# Expose port 80 to the host
EXPOSE 80

# Step 4: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
