# Use nginx alpine for a lightweight web server
FROM nginx:alpine

# Copy website files to nginx html directory
COPY . /usr/share/nginx/html

# Remove unnecessary files from the container
RUN rm -f /usr/share/nginx/html/Dockerfile \
    && rm -f /usr/share/nginx/html/docker-compose.yml \
    && rm -f /usr/share/nginx/html/.DS_Store

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
