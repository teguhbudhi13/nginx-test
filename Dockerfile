# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your index.html file to the default Nginx web root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80, which is the default port for Nginx
EXPOSE 80

# The CMD instruction specifies the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
