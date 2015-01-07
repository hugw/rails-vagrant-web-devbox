#!/bin/bash

echo 'Applying right permissions...'

chown -R vagrant /usr/local
chown -R vagrant ~/.profile

echo '...Done.'