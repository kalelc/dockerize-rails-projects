FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default

ADD sites-available/ /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
