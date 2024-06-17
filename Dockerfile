FROM nginx:latest 

WORKDIR /usr/share/nginx

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]




