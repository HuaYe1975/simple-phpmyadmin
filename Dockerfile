From romeohua/simple-php7:latest

ENV BASEDIR /usr/share/nginx/html

ENV PHPMYADMIN_VERSION 4.6.1

WORKDIR ${BASEDIR}

RUN apt-get update && apt-get install -y curl
RUN curl -L -o phpmyadmin.tar.gz "https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.gz"
RUN tar -xvzf phpmyadmin.tar.gz && mv phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages/* . && rm -rf phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages

RUN chown -R www-data:www-data ${BASEDIR}