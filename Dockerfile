# Use the official lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy all static frontend assets from your current folder into the Nginx public directory
COPY . /usr/share/nginx/html/

# Expose port 80 (Nginx default web traffic port)
EXPOSE 80

# Start Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]
