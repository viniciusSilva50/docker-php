FROM mysql:5.7 AS mysql-docker
EXPOSE 3306
ENV MYSQL_ROOT_HOST 127.0.0.1
ENV MYSQL_ROOT_PASSWORD 12345
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
# Enable remote access (default is localhost only, we change this
# otherwise our database would not be reachable from outside the container)
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

EXPOSE 3306