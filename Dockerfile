# Use official Nginx image
FROM nginx:alpine

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom site content
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Optional: custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
