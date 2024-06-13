# Dockerfile

# Base image
FROM nginx:alpine

# Remove the default NGINX website
RUN rm -rf /usr/share/nginx/html/*

# List files to verify the presence of 'build'
RUN ls -l /path/to/build

# Copy the build output to the NGINX html folder
COPY ./build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
