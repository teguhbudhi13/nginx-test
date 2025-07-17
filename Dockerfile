# Use the official Nginx image as the base image
FROM nginx:1.21.6

# Copy your custom Nginx configuration to replace the default configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your index.html file to the default Nginx web root directory
COPY index.html /usr/share/nginx/html/

# Fix permissions for OpenShift random UID (allow write to cache/temp)
USER root
RUN mkdir -p /var/cache/nginx && chmod -R 777 /var/cache/nginx

# Expose port 80
EXPOSE 8080

# Let OpenShift assign any UID (do NOT specify USER here)
CMD ["nginx", "-g", "daemon off;"]
