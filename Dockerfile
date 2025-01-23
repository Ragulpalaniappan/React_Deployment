# Step 1: Use an Nginx image to serve your React app
FROM nginx:latest

# Step 2: Copy the compiled React app from the current directory to Nginx's default directory
COPY . /usr/share/nginx/html

# Step 3: Expose port 80
EXPOSE 80

# Step 4: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
