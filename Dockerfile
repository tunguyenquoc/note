FROM httpd:2.4

# RUN rm /usr/local/apache2/conf/httpd.conf
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

RUN ln -sf /proc/self/fd/1 /usr/local/apache2/logs/access && \
  ln -sf /proc/self/fd/1 /usr/local/apache2/logs/error
# RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#     && ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./index.html /usr/local/apache2/htdocs/