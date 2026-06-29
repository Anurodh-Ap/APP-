# Simple static site server using nginx
FROM nginx:alpine

# Copy the website files into nginx's default public folder
COPY index.html /usr/share/nginx/html/index.html

# (Optional) copy a logo or other static assets if you add them later
# COPY logo.png /usr/share/nginx/html/logo.png

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
