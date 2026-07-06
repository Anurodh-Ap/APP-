<<<<<<< HEAD
FROM nginx:alpine
COPY hillside-coffee-app.html /usr/share/nginx/html/index.html

=======
# Simple static site server using nginx
FROM nginx:alpine

# Copy the website files into nginx's default public folder
COPY index.html /usr/share/nginx/html/index.html

# (Optional) copy a logo or other static assets if you add them later
# COPY logo.png /usr/share/nginx/html/logo.png

EXPOSE 80

>>>>>>> d10fb927921859775daaabf72270630a280afc4f
CMD ["nginx", "-g", "daemon off;"]
