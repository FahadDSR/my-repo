# Use the official Nginx Alpine image for a lightweight web server
FROM nginx:alpine

# Copy the static website files to the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
