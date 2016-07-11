FROM daccbr/php-for-automation

COPY 02_phalcon.ini /etc/php7/conf.d/02_phalcon.ini
COPY phalcon.so /lib/php7/modules/phalcon.so
