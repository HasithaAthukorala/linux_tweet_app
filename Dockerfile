FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html

USER 10014

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
