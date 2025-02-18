FROM nginx:alpine

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy website files to nginx html directory
COPY www/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80 