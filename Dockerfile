FROM nginx

RUN rm /etc/nginx/conf.d/default.conf

COPY ./* /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]