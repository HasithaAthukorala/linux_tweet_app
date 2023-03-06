FROM nginx:latest

RUN apk --no-cache add shadow && usermod -u 10014 nginx && \
    groupmod -g 10014 nginx

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html

USER nginx

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
