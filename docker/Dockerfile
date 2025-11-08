# Use an official Nginx image
FROM nginx:latest

# Copy your web files into Nginx's default HTML folder
COPY ./app /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
