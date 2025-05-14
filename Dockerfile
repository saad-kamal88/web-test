# Use official Nginx image as base
FROM nginx:alpine
LABEL authors="saadkamal"

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default content
RUN rm -f /usr/share/nginx/html/*

# Copy all current folder contents into the nginx html directory
COPY . .

# Expose port 80
EXPOSE 80

# Default CMD will serve the content
