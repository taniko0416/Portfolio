FROM nginx:1.11.3
RUN rm -f /etc/nginx/conf.d/*
ADD ./webapp/containers/nginx/nginx.conf /etc/nginx/conf.d/webapp.conf
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
