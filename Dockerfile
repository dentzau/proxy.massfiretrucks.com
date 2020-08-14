FROM nginx:latest

COPY ./bin/docker-entry-point /opt/docker-entry-point
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/proxy.conf /etc/nginx/conf.d/proxy.conf

CMD /usr/bin/env bash -c 'envsubst < /etc/nginx/conf.d/proxy.conf > /etc/nginx/conf.d/proxy.conf' \
  && nginx -g 'daemon off;'
