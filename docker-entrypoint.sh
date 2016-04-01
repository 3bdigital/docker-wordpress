#!/bin/bash

chown -R :www-data /var/www/html/wp-content/

exec "$@"