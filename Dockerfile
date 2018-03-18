# by ejo 03/18... working on getting permissions right
# in mounted volumes
FROM wordpress:4.9.4-php7.2-apache

COPY ./init.sh /usr/local/bin/
# some docker storage backends fail on this kind of layer, so should probably chmod it in git instead
RUN chmod +x /usr/local/bin/init.sh

ENTRYPOINT ["init.sh"]
CMD ["docker-entrypoint.sh","apache2-foreground"]
