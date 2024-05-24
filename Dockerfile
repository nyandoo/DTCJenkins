FROM nginx:latest 

USER root

RUN groupadd -g 993 docker \
&& gpasswd -a jenkins docker

USER jenkins

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]




