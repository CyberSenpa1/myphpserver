FROM nginx:1.29

RUN apt-get update && \
    apt-get install -y php-fpm php-cli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.php /usr/share/nginx/html/

RUN PHP_VERSION=$(php -v | head -n 1 | cut -d " " -f 2 | cut -d "." -f 1-2) && \
    sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/${PHP_VERSION}/fpm/php.ini && \
    sed -i 's/listen = \/run\/php\/php.*-fpm.sock/listen = 9000/' /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf && \
    mkdir -p /run/php/

EXPOSE 80

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]