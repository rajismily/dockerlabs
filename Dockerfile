# Use the official Nginx base image
FROM nginx:latest

EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
