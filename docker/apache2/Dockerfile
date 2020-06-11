FROM httpd:2.4
ARG APACHE_LOG_TYPE=stdout
# RUN rm /usr/local/apache2/conf/httpd.conf
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
RUN if [  $APACHE_LOG_TYPE = "stdout" ]; then \
  ln -sf /proc/self/fd/1 /usr/local/apache2/logs/access.log && \
  ln -sf /proc/self/fd/1 /usr/local/apache2/logs/error.log  && \
  echo 'Apache use log stdout' ;\
  else \
  echo 'Apache use log file' ;\
  fi
# RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#     && ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./index.html /usr/local/apache2/htdocs/
COPY . .
# CMD ["sh", "run.sh"]