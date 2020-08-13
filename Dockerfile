FROM nginx:latest

COPY config/nginx.conf /etc/nginx/nginx.conf

CMD ["bin/start-docker"]
