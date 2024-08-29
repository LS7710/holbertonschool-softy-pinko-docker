# Use the latest Nginx image as the base
FROM nginx:latest

# Copy the proxy configuration file to the correct location
COPY ./proxy.conf /etc/nginx/conf.d/default.conf