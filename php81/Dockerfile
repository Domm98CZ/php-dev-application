FROM registry.gitlab.com/prochazka-dominik/docker/php-server:8.1.16

# Config
ENV PHP_APPLICATION_DIR /var/www/app

# PHP Settings
COPY ./php.ini ${PHP_INI_DIR}/conf.d/php-dev-application.ini
RUN chmod 644 ${PHP_INI_DIR}/conf.d/php-dev-application.ini

# PHP Add xDebug
COPY ./xdebug.ini ${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && chmod 644 ${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini

# Apache Settings
COPY ./apache.conf /etc/apache2/sites-available/apache_http.conf
RUN cd /etc/apache2/sites-available && a2dissite --quiet * \
    && a2enmod --quiet rewrite \
    && a2enmod --quiet expires \
    && a2enmod --quiet headers \
    && a2ensite --quiet apache_http.conf

# SUPERVISOR
COPY ./supervisor/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./supervisor/services_default /etc/supervisor/conf.d/

# Startup script
COPY ./on_start.sh /usr/local/sbin/
RUN chmod +x /usr/local/sbin/on_start.sh

# Run it
CMD on_start.sh && /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
WORKDIR ${PHP_APPLICATION_DIR}
