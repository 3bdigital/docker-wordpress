FROM wordpress:4-fpm

# memcache & redis
RUN yes | pecl install redis memcache-3.0.8 \
	&& echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini \
	&& echo "extension=memcache.so" > /usr/local/etc/php/conf.d/memcache.ini

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]