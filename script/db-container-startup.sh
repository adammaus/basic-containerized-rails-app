#!/bin/sh

# Start server
bash -c "
  set -e

  mysqld --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
" &

sleep 3 # Wait for mysql server to start

# Needed to properly install database
mysql -uroot -ptesttest -e "SET GLOBAL FOREIGN_KEY_CHECKS=0;"

# Need this to keep container running
sleep infinity