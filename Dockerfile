# Use the official Nginx base image
FROM nginx:latest

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
