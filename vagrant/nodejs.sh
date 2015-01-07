#!/bin/bash

echo 'Installing NodeJs...'

mkdir nodejs
cd nodejs
curl -s http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=/usr/local
make install > /dev/null
cd ..
rm -rf nodejs

echo '...Done.'