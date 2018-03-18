#!/bin/bash
set -e
echo "ejo init.sh foo bar"
chmod -R 775 /var/www/html/wp-content
exec "$@"
