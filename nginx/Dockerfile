FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default

ADD sites-available/ /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

EXPOSE 80
