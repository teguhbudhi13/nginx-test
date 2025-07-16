# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy your custom Nginx configuration to replace the default configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your index.html file to the default Nginx web root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80, which is the default port for Nginx
EXPOSE 80

# The CMD instruction specifies the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
