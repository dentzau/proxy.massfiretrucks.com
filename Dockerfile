FROM nginx:latest

COPY . /app
COPY config/nginx.conf /etc/nginx/nginx.conf

CMD ["/app/bin/docker-entry-point"]
