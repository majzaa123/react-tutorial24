# Use the official NGINX image as the base image
FROM nginx:latest

# Copy custom static files to NGINX's default directory
COPY * /usr/share/nginx/html

# Expose port 80 to make the container's web server accessible
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
