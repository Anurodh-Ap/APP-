FROM nginx:alpine
COPY hillside-coffee-app.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
