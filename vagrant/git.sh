#!/bin/bash

echo 'Installing git...'

add-apt-repository ppa:git-core/ppa -y -q
apt-get update -y -q
apt-get install git -y -q

echo '...Done.'