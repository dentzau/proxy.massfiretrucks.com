FROM nginx:latest

COPY ./bin/docker-entry-point /opt/docker-entry-point

COPY config/proxy.conf /etc/nginx/conf.d/proxy.conf.template
COPY config/nginx.conf /etc/nginx/nginx.conf

CMD ["/opt/docker-entry-point"]
