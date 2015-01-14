#!/bin/bash

echo 'Installing Redis...'

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install

# cd utils
# sudo ./install_server.sh
# sudo service redis_6379 start
# sudo service redis_6379 stop
# sudo update-rc.d redis_6379 defaults

echo '...Done.'
