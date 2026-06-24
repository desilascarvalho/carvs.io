FROM nginx:alpine
COPY index.html favicon.svg og-image.png /usr/share/nginx/html/
EXPOSE 80
